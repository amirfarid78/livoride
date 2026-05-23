<!-- footer start-->
<footer class="footer">
    <div class="container-fluid">
        <div class="row align-items-center g-sm-0 g-2">
            <div class="col-md-5">
                <p class="mb-0 text-md-start text-center">Developed By <a href="https://coheser.com" target="_blank" style="color:inherit;text-decoration:none;">Coheser.com</a></p>
            </div>
            <div class="col-md-7">
                <div class="footer-system">
                    <?php if(env('APP_VERSION')): ?>
                        <span class="ms-md-auto mx-sm-0 text-end badge badge-version-primary"><?php echo e(env('APP_VERSION')); ?></span>
                    <?php endif; ?>
                    <span class="d-flex ms-md-3 mx-sm-0 text-end badge badge-version-primary"><?php echo e(__('static.load_time')); ?>:
                        <?php echo e(round(microtime(true) - LARAVEL_START, 2)); ?>s.</span>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer end-->
<?php /**PATH C:\Users\bromu\Downloads\taxido-202\codecanyon-56450809-taxido-react-native-online-taxi-booking-with-cab-rental-bidding-parcel-admin-laravel-panel\Taxido_laravel\resources\views/admin/layouts/partials/footer.blade.php ENDPATH**/ ?>