#!/bin/bash

# ==============================================================================
# Livo Ride / Taxido Laravel - Resume Setup Script after Disconnection
# ==============================================================================
# Run as: root (sudo)
# ==============================================================================

# Exit immediately if a command exits with a non-zero status
set -e

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Text formatting helper functions
print_status() {
    echo -e "${BLUE}[*] $1${NC}"
}

print_success() {
    echo -e "${GREEN}[✔] $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}[!] $1${NC}"
}

print_error() {
    echo -e "${RED}[✘] $1${NC}"
}

# Root User Verification
if [ "$EUID" -ne 0 ]; then
    print_error "This installer must be run as root. Please run: sudo bash $0"
    exit 1
fi

echo -e "${GREEN}"
echo "======================================================================"
echo "          RESUMING LIVO RIDE / TAXIDO DIGITALOCEAN INSTALLATION         "
echo "======================================================================"
echo -e "${NC}"
print_status "This script will resume the setup, reset the database password (since connection was lost), and configure the web server."

PROJECT_PATH=$(pwd)
print_status "Project directory identified as: ${PROJECT_PATH}"

# Gather parameters
echo ""
echo "----------------------------------------------------------------------"
echo "                      CONFIGURATION PARAMETERS                        "
echo "----------------------------------------------------------------------"
read -p "Enter your Domain or Droplet Public IP (e.g., livoride.com or 165.22.100.1): " APP_DOMAIN
if [ -z "$APP_DOMAIN" ]; then
    APP_DOMAIN=$(curl -s https://ipinfo.io/ip || echo "localhost")
    print_warning "No domain entered. Using auto-detected IP: ${APP_DOMAIN}"
fi

read -p "Enter database name [taxido]: " DB_NAME
DB_NAME=${DB_NAME:-taxido}

read -p "Enter database user [taxido_user]: " DB_USER
DB_USER=${DB_USER:-taxido_user}

# Generate a fresh secure password for MySQL to replace the lost one
DB_PASS=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | head -c 16)
print_success "Generated NEW secure database password: ${DB_PASS}"

echo ""
print_status "Updating MySQL user password..."
# Reset MySQL User Password in case it was lost on disconnect
mysql -e "ALTER USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';" || mysql -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}'; GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
print_success "MySQL credentials updated successfully."

# Install Composer
print_status "Installing Composer..."
if ! command -v composer &> /dev/null; then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
    chmod +x /usr/local/bin/composer
    print_success "Composer installed successfully!"
else
    print_success "Composer already installed."
fi

# Environment File Setup (.env)
print_status "Setting up Laravel .env file..."
if [ ! -f "${PROJECT_PATH}/.env" ]; then
    if [ -f "${PROJECT_PATH}/.env.example" ]; then
        cp "${PROJECT_PATH}/.env.example" "${PROJECT_PATH}/.env"
        print_success "Created .env from .env.example"
    else
        touch "${PROJECT_PATH}/.env"
    fi
fi

# Update database parameters, environment mode, and URL in .env
sed -i "s|^APP_ENV=.*|APP_ENV=production|" "${PROJECT_PATH}/.env"
sed -i "s|^APP_DEBUG=.*|APP_DEBUG=false|" "${PROJECT_PATH}/.env"
sed -i "s|^APP_URL=.*|APP_URL=http://${APP_DOMAIN}|" "${PROJECT_PATH}/.env"
sed -i "s|^DB_HOST=.*|DB_HOST=127.0.0.1|" "${PROJECT_PATH}/.env"
sed -i "s|^DB_DATABASE=.*|DB_DATABASE=${DB_NAME}|" "${PROJECT_PATH}/.env"
sed -i "s|^DB_USERNAME=.*|DB_USERNAME=${DB_USER}|" "${PROJECT_PATH}/.env"
sed -i "s|^DB_PASSWORD=.*|DB_PASSWORD=${DB_PASS}|" "${PROJECT_PATH}/.env"

# Reverb host update if used
sed -i "s|^VITE_REVERB_HOST=.*|VITE_REVERB_HOST=${APP_DOMAIN}|" "${PROJECT_PATH}/.env"

# Install Composer Dependencies
print_status "Installing Composer dependencies..."
cd "${PROJECT_PATH}"
export COMPOSER_ALLOW_SUPERUSER=1
composer install --no-dev --optimize-autoloader --no-interaction

# Ensure APP_KEY variable exists in .env before running key:generate
if ! grep -q "^APP_KEY=" "${PROJECT_PATH}/.env"; then
    echo "APP_KEY=" >> "${PROJECT_PATH}/.env"
fi

# Run key generation if key is empty
if ! grep -q "APP_KEY=base64:" "${PROJECT_PATH}/.env" || grep -q "APP_KEY=$" "${PROJECT_PATH}/.env"; then
    print_status "Generating application key..."
    php8.2 "${PROJECT_PATH}/artisan" key:generate --force
fi

# Directory Permissions Setup
print_status "Configuring directory ownership and permissions..."
chown -R www-data:www-data "${PROJECT_PATH}"
find "${PROJECT_PATH}" -type d -exec chmod 775 {} \;
find "${PROJECT_PATH}" -type f -exec chmod 664 {} \;
chmod -R 775 "${PROJECT_PATH}/storage"
chmod -R 775 "${PROJECT_PATH}/bootstrap/cache"
chmod +x "${PROJECT_PATH}/artisan"

# Optimized Nginx Configuration
print_status "Creating Nginx Virtual Host configuration..."
NGINX_CONF_PATH="/etc/nginx/sites-available/taxido"

cat > "${NGINX_CONF_PATH}" <<EOF
server {
    listen 80;
    listen [::]:80;
    server_name ${APP_DOMAIN};
    root ${PROJECT_PATH}/public;

    add_header X-Frame-Options "SAMEORIGIN";
    add_header X-Content-Type-Options "nosniff";
    add_header X-XSS-Protection "1; mode=block";
    add_header Referrer-Policy "no-referrer-when-downgrade";

    index index.php;

    charset utf-8;

    # Gzip Compression
    gzip on;
    gzip_vary on;
    gzip_min_length 10240;
    gzip_proxied any;
    gzip_types text/plain text/css text/xml text/javascript application/x-javascript application/xml application/javascript application/json;
    gzip_disable "MSIE [1-6]\.";

    location / {
        try_files \$uri \$uri/ /index.php?\$query_string;
    }

    location = /favicon.ico { access_log off; log_not_found off; }
    location = /robots.txt  { access_log off; log_not_found off; }

    error_page 404 /index.php;

    location ~ \.php$ {
        fastcgi_pass unix:/var/run/php/php8.2-fpm.sock;
        fastcgi_param SCRIPT_FILENAME \$realpath_root\$fastcgi_script_name;
        include fastcgi_params;
        fastcgi_hide_header X-Powered-By;
        fastcgi_read_timeout 600;
    }

    location ~ /\.(?!well-known).* {
        deny all;
    }

    client_max_body_size 100M;
}
EOF

# Enable Nginx block and disable default configuration if active
if [ -f "/etc/nginx/sites-enabled/default" ]; then
    rm /etc/nginx/sites-enabled/default
fi

if [ -f "${NGINX_CONF_PATH}" ]; then
    ln -sf "${NGINX_CONF_PATH}" "/etc/nginx/sites-enabled/taxido"
fi

# Test and reload Nginx
print_status "Testing Nginx configuration..."
nginx -t
systemctl restart nginx
systemctl enable nginx
print_success "Nginx configured and reloaded successfully!"

# Systemd Service for Laravel Queue Workers
print_status "Configuring Systemd service for Laravel Queue Worker..."
SYSTEMD_PATH="/etc/systemd/system/taxido-worker.service"

cat > "${SYSTEMD_PATH}" <<EOF
[Unit]
Description=Taxido Laravel Queue Worker
After=network.target mysql.service

[Service]
User=www-data
Group=www-data
Restart=always
RestartSec=5
ExecStart=/usr/bin/php8.2 ${PROJECT_PATH}/artisan queue:work --queue=default --sleep=3 --tries=3

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable taxido-worker.service
systemctl start taxido-worker.service
print_success "Systemd queue worker service enabled and running."

# Cron Scheduler Configuration
print_status "Configuring Laravel Cron Task Scheduler..."
CRON_JOB="* * * * * cd ${PROJECT_PATH} && /usr/bin/php8.2 artisan schedule:run >> /dev/null 2>&1"
(crontab -u www-data -l 2>/dev/null; echo "$CRON_JOB") | crontab -u www-data -

# Optimize Caches
print_status "Optimizing Laravel config and routes cache..."
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" config:cache
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" route:cache
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" view:cache
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" storage:link

echo ""
echo "======================================================================"
echo -e "${GREEN}             RESUME SETUP SUCCESSFULLY COMPLETED!                     ${NC}"
echo "======================================================================"
echo -e "Your web application is now successfully installed and active!"
echo -e "Access URL      : ${YELLOW}http://${APP_DOMAIN}${NC}"
echo -e "Database Name   : ${YELLOW}${DB_NAME}${NC}"
echo -e "Database User   : ${YELLOW}${DB_USER}${NC}"
echo -e "Database Pass   : ${YELLOW}${DB_PASS}${NC}"
echo "======================================================================"
echo ""
