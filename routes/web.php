<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;


Route::group(['middleware' => ['localization' , 'maintenance'], 'namespace' => 'Front'], function () {

    // Home
    Route::get('/', 'HomeController@index')->name('home');

    // Blog
    Route::get('blog/{slug}', 'BlogController@getBlogBySlug')->name('blog.slug');
    Route::get('blogs', 'BlogController@index')->name('web.blog.index');
    Route::get('page/{slug}', 'PageController@getPageBySlug')->name('page.slug');
    Route::get('pages', 'PageController@index')->name('web.page.index');
    Route::get('/sitemap.xml', 'SitemapController@generate');

    // Languages
    Route::get('language/{locale}', function ($locale) {
        app()->setLocale($locale);
        session()->put('locale', $locale);
        session()->put('front-locale', $locale);
        return redirect()->back();
    })->name('lang');

    Route::post('/newsletter','SubscribesController@store')->name('newsletter');
    Route::post('/set-theme', 'HomeController@setTheme')->name('set-theme');
});

// Clear Cache
Route::get('/clear-cache', function () {
    Artisan::call('view:clear');
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('storage:link');
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('clear-compiled');
    Artisan::call('optimize:clear');
    Artisan::call('permission:cache-reset');
    return redirect()->back();
})->name('clear-cache');


Route::get('language/{locale}', function ($locale) {
    app()->setLocale($locale);
    session()->put('locale', $locale);
    session()->put('front-locale', $locale);
    return redirect()->back();
})->name('lang');

Route::get('/test-debug', function () {
    $out = "<h1>System Diagnostics & Debug Suite</h1>";
    
    // 1. Database Connection Check
    try {
        $dbName = DB::connection()->getDatabaseName();
        $out .= "<p style='color:green;'>✔ Database connection working. Connected to database: <strong>{$dbName}</strong></p>";
    } catch (\Exception $e) {
        $out .= "<p style='color:red;'>✘ Database connection failed: " . $e->getMessage() . "</p>";
    }

    // 2. Settings Table & getSettings() Check
    try {
        if (!class_exists('App\Models\Setting')) {
            $out .= "<p style='color:red;'>✘ Setting model class does not exist.</p>";
        } else {
            $settingsCount = DB::table('settings')->count();
            $out .= "<p style='color:green;'>✔ settings table count: <strong>{$settingsCount}</strong></p>";
            
            $settings = getSettings();
            if ($settings === null) {
                $out .= "<p style='color:orange;'>⚠ getSettings() returned null (No settings in DB?).</p>";
            } else {
                $out .= "<p style='color:green;'>✔ getSettings() successfully returned data (keys: " . implode(', ', array_keys($settings)) . ")</p>";
            }
        }
    } catch (\Exception $e) {
        $out .= "<p style='color:red;'>✘ Settings check failed: " . $e->getMessage() . "</p>";
    }

    // 3. Role Credentials Check
    try {
        if (!function_exists('getRoleCredentials')) {
            $out .= "<p style='color:red;'>✘ getRoleCredentials() function does not exist.</p>";
        } else {
            $creds = getRoleCredentials();
            $out .= "<p style='color:green;'>✔ getRoleCredentials() returned " . count($creds) . " credentials.</p>";
        }
    } catch (\Exception $e) {
        $out .= "<p style='color:red;'>✘ getRoleCredentials() failed: " . $e->getMessage() . "</p>";
    }

    // 4. View Rendering Check
    try {
        $out .= "<h3>Attempting to render 'auth.login' view:</h3>";
        // To make sure any nested errors/exceptions get captured, let's render view manually
        $html = view('auth.login')->render();
        $out .= "<p style='color:green;'>✔ auth.login view rendered successfully! HTML length: " . strlen($html) . " characters.</p>";
        $out .= "<div style='border:1px solid #ccc; padding: 10px; max-height: 200px; overflow: auto; background:#f4f4f4;'><code>" . htmlspecialchars(substr($html, 0, 1000)) . "...</code></div>";
    } catch (\Throwable $e) {
        $out .= "<p style='color:red;'><strong>✘ Rendering auth.login view failed:</strong></p>";
        $out .= "<pre style='background:#fee; padding:15px; border:1px solid #fcc; color:#a00; overflow:auto;'>";
        $out .= "Exception: " . get_class($e) . "\n";
        $out .= "Message: " . $e->getMessage() . "\n";
        $out .= "File: " . $e->getFile() . "\n";
        $out .= "Line: " . $e->getLine() . "\n\n";
        $out .= "Stack Trace:\n" . $e->getTraceAsString();
        $out .= "</pre>";
    }

    return $out;
});

