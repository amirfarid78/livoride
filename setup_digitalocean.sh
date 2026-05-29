#!/bin/bash

# ==============================================================================
# Livo Ride / Taxido Laravel DigitalOcean Droplet Automated Installer & Setup
# ==============================================================================
# OS Support: Ubuntu 22.04 LTS or Ubuntu 24.04 LTS (Recommended)
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

# 1. Root User Verification
if [ "$EUID" -ne 0 ]; then
    print_error "This installer must be run as root. Please run: sudo bash $0"
    exit 1
fi

echo -e "${GREEN}"
echo "======================================================================"
echo "          LIVO RIDE / TAXIDO DIGITALOCEAN AUTOMATED INSTALLER          "
echo "======================================================================"
echo -e "${NC}"
print_status "Starting server provisioning and Laravel deployment..."

# Get current script path as the project path
PROJECT_PATH=$(pwd)
print_status "Project directory identified as: ${PROJECT_PATH}"

# Verify critical files exist before starting installation
if [ ! -f "${PROJECT_PATH}/composer.json" ]; then
    print_error "composer.json not found in ${PROJECT_PATH}. Please run this script from the root of your Laravel application directory."
    exit 1
fi

if [ ! -f "${PROJECT_PATH}/taxido.sql" ]; then
    print_warning "taxido.sql not found in ${PROJECT_PATH}. Seeding step will look for it in the root path."
fi

# 2. Gather Configuration Parameters
echo ""
echo "----------------------------------------------------------------------"
echo "                      CONFIGURATION PARAMETERS                        "
echo "----------------------------------------------------------------------"
read -p "Enter your Domain or Droplet Public IP (e.g., livoride.com or 165.22.100.1): " APP_DOMAIN
if [ -z "$APP_DOMAIN" ]; then
    # Fallback to auto-detected public IP
    APP_DOMAIN=$(curl -s https://ipinfo.io/ip || echo "localhost")
    print_warning "No domain entered. Using auto-detected IP: ${APP_DOMAIN}"
fi

read -p "Enter database name [taxido]: " DB_NAME
DB_NAME=${DB_NAME:-taxido}

read -p "Enter database user [taxido_user]: " DB_USER
DB_USER=${DB_USER:-taxido_user}

# Generate a strong random password for MySQL
DB_PASS=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | head -c 16)
print_success "Generated secure database password: ${DB_PASS}"

echo ""
print_status "Ready to configure with details above. Press ENTER to start or Ctrl+C to abort..."
read

# 3. System & Repository Updates
print_status "Updating system packages and adding repositories..."
apt-get update -y
apt-get upgrade -y
apt-get install -y software-properties-common curl git unzip zip build-essential gnupg2 ca-certificates lsb-release

# Add Ondřej Surý PHP repository
print_status "Adding PHP repository..."
add-apt-repository ppa:ondrej/php -y
apt-get update -y

# 4. Install LEMP Stack (Nginx, PHP 8.2, MySQL)
print_status "Installing Nginx..."
apt-get install -y nginx

print_status "Installing PHP 8.2 & required extensions..."
apt-get install -y php8.2-fpm php8.2-cli php8.2-mysql php8.2-common php8.2-curl php8.2-mbstring php8.2-opcache php8.2-xml php8.2-zip php8.2-gd php8.2-bcmath php8.2-intl php8.2-soap php8.2-readline php8.2-sqlite3

print_status "Installing MySQL Server..."
apt-get install -y mysql-server

# 5. Database Configuration & SQL Seeding
print_status "Configuring MySQL database and users..."
# Start MySQL Service
systemctl start mysql
systemctl enable mysql

# Create database and user with appropriate permissions
mysql -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
print_success "Database '${DB_NAME}' and user '${DB_USER}' created successfully."

# Import SQL Seeding Dump
if [ -f "${PROJECT_PATH}/taxido.sql" ]; then
    print_status "Seeding database using taxido.sql..."
    mysql "${DB_NAME}" < "${PROJECT_PATH}/taxido.sql"
    print_success "Database seeded successfully from taxido.sql!"
else
    print_error "taxido.sql file not found in ${PROJECT_PATH}. Database structure was not seeded automatically."
    print_warning "You can manually import it later using: mysql ${DB_NAME} < taxido.sql"
fi

# 6. Global Composer Installation
print_status "Installing Composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
print_success "Composer installed successfully at /usr/local/bin/composer"

# 7. Environment File Setup (.env)
print_status "Setting up Laravel .env file..."
if [ ! -f "${PROJECT_PATH}/.env" ]; then
    if [ -f "${PROJECT_PATH}/.env.example" ]; then
        cp "${PROJECT_PATH}/.env.example" "${PROJECT_PATH}/.env"
        print_success "Created .env from .env.example"
    else
        touch "${PROJECT_PATH}/.env"
        print_warning "Created empty .env file. Please paste your config later."
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

# 8. Install Composer Dependencies
print_status "Installing Composer dependencies (this might take a few minutes)..."
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

# 9. Directory Permissions Setup
print_status "Configuring directory ownership and permissions..."
chown -R www-data:www-data "${PROJECT_PATH}"
find "${PROJECT_PATH}" -type d -exec chmod 775 {} \;
find "${PROJECT_PATH}" -type f -exec chmod 664 {} \;
# Special permissions for execution and storage directories
chmod -R 775 "${PROJECT_PATH}/storage"
chmod -R 775 "${PROJECT_PATH}/bootstrap/cache"
chmod +x "${PROJECT_PATH}/artisan"
# Configure git safe directory to prevent future dubious ownership warnings
git config --global --add safe.directory "${PROJECT_PATH}"

# 10. Optimized Nginx Configuration
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

# 11. Systemd Service for Laravel Queue Workers
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

# 12. Cron Scheduler Configuration
print_status "Configuring Laravel Cron Task Scheduler..."
CRON_JOB="* * * * * cd ${PROJECT_PATH} && /usr/bin/php8.2 artisan schedule:run >> /dev/null 2>&1"
(crontab -u www-data -l 2>/dev/null; echo "$CRON_JOB") | crontab -u www-data -

# 13. Optimize Caches
print_status "Optimizing Laravel config and routes cache..."
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" config:cache
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" route:cache
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" view:cache
sudo -u www-data php8.2 "${PROJECT_PATH}/artisan" storage:link

echo ""
echo "======================================================================"
echo -e "${GREEN}             TAXIDO / LIVO RIDE FULL SETUP COMPLETE!                  ${NC}"
echo "======================================================================"
echo -e "Your web application is now successfully installed and active!"
echo -e "Access URL      : ${YELLOW}http://${APP_DOMAIN}${NC}"
echo -e "Database Name   : ${YELLOW}${DB_NAME}${NC}"
echo -e "Database User   : ${YELLOW}${DB_USER}${NC}"
echo -e "Database Pass   : ${YELLOW}${DB_PASS}${NC}"
echo "----------------------------------------------------------------------"
echo -e "To configure HTTPS and Let's Encrypt SSL, run the following commands:"
echo -e "  sudo apt install certbot python3-certbot-nginx -y"
echo -e "  sudo certbot --nginx -d ${APP_DOMAIN}"
echo "======================================================================"
echo ""
