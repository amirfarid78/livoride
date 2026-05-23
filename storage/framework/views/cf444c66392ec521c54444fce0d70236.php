<?php
$settings = getSettings();
$bgType = $settings['appearance']['sidebar_background_type'] ?? 'gradient';
$primaryColor = $settings['appearance']['primary_color'] ?? '#E5AC25';
$solidColor = $settings['appearance']['sidebar_solid_color'] ?? '#1E1E1E';
$gradientColor1 = $settings['appearance']['sidebar_gradient_color_1'] ?? '#242424';
$gradientColor2 = $settings['appearance']['sidebar_gradient_color_2'] ?? '#0C0C0C';
?>

<style>
    :root {
        --primary-color: <?php echo e($primaryColor); ?>;
        --font-family: <?php echo e($settings['appearance']['font_family'] ?? 'Inter'); ?>;
        --sidebar-gradient-color-1: <?php echo e($gradientColor1); ?>;
        --sidebar-gradient-color-2: <?php echo e($gradientColor2); ?>;
        --sidebar-solid-color: <?php echo e($solidColor); ?>;
        --sidebar-background-color:
            <?php if($bgType === 'gradient'): ?>
                linear-gradient(178.98deg, var(--sidebar-gradient-color-1) -453.29%, var(--sidebar-gradient-color-2) 91.53%);
            <?php else: ?>
                var(--sidebar-solid-color);
            <?php endif; ?>
    }

    .sidebar {
        background: var(--sidebar-background-color);
    }
</style>
<?php /**PATH C:\Users\bromu\Downloads\taxido-202\codecanyon-56450809-taxido-react-native-online-taxi-booking-with-cab-rental-bidding-parcel-admin-laravel-panel\Taxido_laravel\resources\views/inc/style.blade.php ENDPATH**/ ?>