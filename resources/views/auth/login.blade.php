@php
use App\Enums\RoleEnum;
use Modules\Taxido\Enums\RoleEnum as ModuleRole;
$settings = getSettings();
$roleCredentials = getRoleCredentials();
@endphp
@extends('auth.master')
@section('title', __('static.login'))
@section('content')

<!-- Google Fonts Outfit & Premium Custom Styles -->
<style>
    @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700;800;900&display=swap');

    /* Full Page Layout Overhaul */
    body {
        background-color: #08080a !important;
        overflow-x: hidden;
        font-family: 'Outfit', sans-serif !important;
    }
    
    .auth-page {
        position: relative;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: radial-gradient(circle at 50% 50%, #14141c 0%, #08080a 100%) !important;
        overflow: hidden;
        padding: 40px 20px;
        font-family: 'Outfit', sans-serif !important;
    }

    /* Animated Floating Background Orbs */
    .premium-auth-bg {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
        pointer-events: none;
    }
    
    .mesh-grid {
        position: absolute;
        width: 100%;
        height: 100%;
        background-image: 
            linear-gradient(rgba(229, 172, 37, 0.03) 1px, transparent 1px),
            linear-gradient(90deg, rgba(229, 172, 37, 0.03) 1px, transparent 1px);
        background-size: 50px 50px;
        mask-image: radial-gradient(circle at 50% 50%, black 30%, transparent 80%);
        -webkit-mask-image: radial-gradient(circle at 50% 50%, black 30%, transparent 80%);
        z-index: 2;
    }

    .glowing-orb {
        position: absolute;
        border-radius: 50%;
        filter: blur(140px);
        opacity: 0.35;
        z-index: 1;
    }

    .orb-1 {
        top: -10%;
        left: -10%;
        width: 450px;
        height: 450px;
        background: radial-gradient(circle, rgba(229, 172, 37, 0.45) 0%, rgba(229, 172, 37, 0) 70%);
        animation: floatOrb 22s infinite alternate ease-in-out;
    }

    .orb-2 {
        bottom: -15%;
        right: -10%;
        width: 500px;
        height: 500px;
        background: radial-gradient(circle, rgba(255, 204, 0, 0.4) 0%, rgba(255, 204, 0, 0) 70%);
        animation: floatOrb 28s infinite alternate-reverse ease-in-out;
    }

    .orb-3 {
        top: 40%;
        left: 45%;
        width: 350px;
        height: 350px;
        background: radial-gradient(circle, rgba(255, 153, 0, 0.3) 0%, rgba(255, 153, 0, 0) 70%);
        animation: floatOrb 18s infinite alternate ease-in-out;
    }

    @keyframes floatOrb {
        0% { transform: translateY(0) scale(1); }
        50% { transform: translateY(-40px) scale(1.15) rotate(45deg); }
        100% { transform: translateY(20px) scale(0.9) rotate(-45deg); }
    }

    /* Container adjustments */
    .auth-page .container {
        position: relative;
        z-index: 10;
        max-width: 520px;
    }

    /* Version Badge */
    .badge-version-primary {
        position: absolute;
        top: 20px;
        right: 20px;
        background: rgba(229, 172, 37, 0.12) !important;
        border: 1px solid rgba(229, 172, 37, 0.25);
        color: #E5AC25 !important;
        font-weight: 600;
        border-radius: 30px;
        padding: 6px 14px;
        font-size: 12px;
        z-index: 20;
        letter-spacing: 0.5px;
        backdrop-filter: blur(10px);
        font-family: 'Outfit', sans-serif !important;
    }

    /* Glassmorphism Card styling */
    .auth-card {
        background: rgba(18, 18, 24, 0.8) !important;
        backdrop-filter: blur(25px) saturate(180%);
        -webkit-backdrop-filter: blur(25px) saturate(180%);
        border: 1px solid rgba(229, 172, 37, 0.16) !important;
        box-shadow: 
            0 30px 70px rgba(0, 0, 0, 0.65), 
            inset 0 1px 0 rgba(255, 255, 255, 0.05),
            0 0 40px rgba(229, 172, 37, 0.03) !important;
        border-radius: 28px !important;
        padding: 45px 35px !important;
        transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
    }
    
    .auth-card:hover {
        border-color: rgba(229, 172, 37, 0.3) !important;
        box-shadow: 
            0 35px 80px rgba(0, 0, 0, 0.75), 
            inset 0 1px 0 rgba(255, 255, 255, 0.08),
            0 0 50px rgba(229, 172, 37, 0.06) !important;
    }

    /* Logo Wrap */
    .logo-container {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        background: rgba(255, 255, 255, 0.04);
        border: 1px solid rgba(229, 172, 37, 0.18);
        padding: 12px;
        border-radius: 20px;
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        box-shadow: 
            0 12px 32px rgba(0, 0, 0, 0.45), 
            inset 0 1px 0 rgba(255, 255, 255, 0.05);
        margin-bottom: 8px;
    }

    /* Welcome Texts */
    .welcome {
        margin-top: 15px;
        margin-bottom: 28px;
        text-align: center;
    }

    .welcome h3 {
        color: #ffffff !important;
        font-weight: 800;
        font-size: 26px;
        margin-bottom: 8px;
        letter-spacing: -0.5px;
        background: linear-gradient(135deg, #ffffff 65%, #E5AC25 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .welcome p {
        color: rgba(255, 255, 255, 0.45) !important;
        font-size: 14px;
        line-height: 1.5;
        font-weight: 400;
    }

    /* Logo handling */
    .login-img {
        max-height: 52px;
        width: auto;
        object-fit: contain;
        background: #ffffff;
        border-radius: 12px;
        padding: 6px;
        box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.15);
    }
    
    .logo-fallback {
        font-weight: 900;
        font-size: 32px;
        background: linear-gradient(135deg, #FFF 30%, #E5AC25 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        letter-spacing: -1px;
        margin-bottom: 0;
        filter: drop-shadow(0 2px 10px rgba(229, 172, 37, 0.15));
    }

    /* Modern Inputs Styling */
    .form-group {
        margin-bottom: 22px !important;
        position: relative;
    }

    .form-group i.input-icon {
        position: absolute;
        left: 18px;
        color: rgba(229, 172, 37, 0.6) !important;
        font-size: 20px;
        z-index: 5;
        transition: all 0.3s ease;
        pointer-events: none;
    }

    .form-control {
        background: rgba(20, 20, 25, 0.65) !important;
        border: 1.5px solid rgba(255, 255, 255, 0.08) !important;
        border-radius: 16px !important;
        color: #ffffff !important;
        padding: 15px 15px 15px 50px !important;
        font-size: 15px !important;
        height: 54px !important;
        transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;
        font-family: 'Outfit', sans-serif !important;
    }

    .form-control::placeholder {
        color: rgba(255, 255, 255, 0.3) !important;
    }

    .form-control:focus {
        background: rgba(10, 10, 12, 0.85) !important;
        border-color: #E5AC25 !important;
        box-shadow: 0 0 16px rgba(229, 172, 37, 0.25) !important;
        outline: none;
    }

    .form-control:focus + i.input-icon,
    .form-group:focus-within i.input-icon {
        color: #E5AC25 !important;
        transform: scale(1.08);
        filter: drop-shadow(0 0 6px rgba(229, 172, 37, 0.4));
    }

    /* Browser Autofill Styling Fix */
    input:-webkit-autofill,
    input:-webkit-autofill:hover, 
    input:-webkit-autofill:focus, 
    input:-webkit-autofill:active {
        -webkit-box-shadow: 0 0 0 1000px #13131a inset !important;
        -webkit-text-fill-color: #ffffff !important;
        transition: background-color 5000s ease-in-out 0s;
        border-radius: 16px !important;
    }

    .toggle-password {
        position: absolute;
        right: 18px;
        color: rgba(255, 255, 255, 0.4);
        cursor: pointer;
        z-index: 5;
        font-size: 20px;
        transition: color 0.2s;
    }

    .toggle-password:hover {
        color: #E5AC25;
    }

    /* Remember me & lost password */
    .form-terms {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 10px;
        margin-bottom: 26px !important;
    }

    .form-check {
        display: flex;
        align-items: center;
        gap: 8px;
        padding-left: 0 !important;
    }

    .form-check-input {
        width: 18px;
        height: 18px;
        border-radius: 6px !important;
        background-color: rgba(0, 0, 0, 0.4) !important;
        border: 1.5px solid rgba(255, 255, 255, 0.15) !important;
        cursor: pointer;
        transition: all 0.2s ease;
        margin-top: 0 !important;
    }

    .form-check-input:checked {
        background-color: #E5AC25 !important;
        border-color: #E5AC25 !important;
        box-shadow: 0 0 10px rgba(229, 172, 37, 0.3) !important;
    }

    .form-terms label {
        color: rgba(255, 255, 255, 0.6) !important;
        font-size: 14px;
        cursor: pointer;
        user-select: none;
        font-weight: 500;
    }

    .forgot-pass {
        color: #E5AC25 !important;
        font-size: 14px;
        font-weight: 600;
        text-decoration: none;
        transition: all 0.2s ease;
    }

    .forgot-pass:hover {
        opacity: 0.95;
        text-shadow: 0 0 8px rgba(229, 172, 37, 0.4);
    }

    /* Premium Glow Login Button */
    .btn-solid {
        background: linear-gradient(135deg, #FFD000 0%, #E5AC25 100%) !important;
        border: none !important;
        color: #000000 !important;
        font-weight: 800 !important;
        font-size: 16px !important;
        letter-spacing: 0.5px !important;
        border-radius: 16px !important;
        height: 54px !important;
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1) !important;
        box-shadow: 0 8px 24px rgba(229, 172, 37, 0.3) !important;
        cursor: pointer;
        font-family: 'Outfit', sans-serif !important;
    }

    .btn-solid:hover {
        transform: translateY(-2px) !important;
        box-shadow: 0 12px 30px rgba(229, 172, 37, 0.45) !important;
        filter: brightness(1.06);
    }
    
    .btn-solid:active {
        transform: translateY(1px) !important;
    }

    /* 2x2 Grid Demo Credentials Container Styling */
    .demo-credential {
        margin-top: 35px;
        padding-top: 25px;
        border-top: 1px solid rgba(255, 255, 255, 0.08);
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
    }

    .default-credentials {
        background: rgba(255, 255, 255, 0.02) !important;
        border: 1px solid rgba(255, 255, 255, 0.08) !important;
        color: rgba(255, 255, 255, 0.7) !important;
        font-size: 13px !important;
        font-weight: 600 !important;
        padding: 12px 16px !important;
        border-radius: 12px !important;
        transition: all 0.3s ease !important;
        display: flex !important;
        align-items: center !important;
        justify-content: center !important;
        gap: 8px !important;
        height: unset !important;
        box-shadow: none !important;
        cursor: pointer;
    }

    .default-credentials:hover {
        background: rgba(229, 172, 37, 0.1) !important;
        border-color: #E5AC25 !important;
        color: #E5AC25 !important;
        transform: translateY(-2px) !important;
        box-shadow: 0 6px 20px rgba(229, 172, 37, 0.15) !important;
    }

    .default-credentials i {
        font-size: 14px;
        color: #E5AC25;
    }

    /* Error Text Placement */
    .invalid-feedback {
        color: #ff5252 !important;
        font-size: 13px;
        margin-top: 6px;
        padding-left: 4px;
        font-weight: 500;
    }
</style>

<div class="premium-auth-bg">
    <div class="glowing-orb orb-1"></div>
    <div class="glowing-orb orb-2"></div>
    <div class="glowing-orb orb-3"></div>
    <div class="mesh-grid"></div>
</div>

<section class="auth-page">
    @if (env('APP_VERSION'))
    <span class="badge-version-primary">{{ __('static.version') }} {{ env('APP_VERSION') }}</span>
    @endif
    <div class="container">
        <div class="auth-main">
            <div class="auth-card">
                <div class="text-center">
                    @if (isset(getSettings()['general']['light_logo_image']))
                    <div class="logo-container">
                        <img class="login-img" src="{{ getSettings()['general']['light_logo_image']?->original_url }}" alt="logo" loading="lazy">
                    </div>
                    @else
                    <h2 class="logo-fallback">{{ config('app.name') }}</h2>
                    @endif
                </div>
                
                <div class="welcome">
                    <h3>{{ __('static.welcome', ['appName' => config('app.name')]) }}</h3>
                    <p>{{ __('static.information') }}</p>
                </div>
                
                @error('login')
                <div class="mb-3">
                    <span class="invalid-feedback d-block text-center" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                </div>
                @enderror
                
                <div class="main">
                    <form id="loginForm" action="{{ route('login') }}" method='POST'>
                        @csrf
                        <div class="form-group">
                            <div class="position-relative d-flex align-items-center">
                                <i class="ri-mail-line input-icon"></i>
                                <input type="email" class="form-control w-100" id="email" name="email" placeholder="{{ __('static.enter_email') }}" required>
                            </div>
                            @error('email')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        
                        <div class="form-group">
                            <div class="position-relative d-flex align-items-center">
                                <i class="ri-lock-line input-icon"></i>
                                <input type="password" class="form-control w-100" id="password" name="password"
                                    placeholder="{{ __('static.enter_password') }}" required>
                                <i class="ri-eye-line toggle-password"></i>
                            </div>
                            @error('password')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        
                        @if (Route::has('password.request'))
                        <div class="form-terms form-group">
                            <div class="d-flex align-items-center">
                                <div class="form-check p-0">
                                    <input type="checkbox" class="form-check-input me-2" id="remember" name="remember">
                                    <label for="remember">{{ __('static.remember_me') }}</label>
                                </div>
                            </div>
                            <a href="{{ route('password.request') }}" class="forgot-pass">{{ __('static.users.lost_your_password') }}</a>
                        </div>
                        @endif
                        
                        <button type="submit" class="btn btn-solid w-100 mt-0">
                            {{ __('static.login') }}
                        </button>
                    </form>
                </div>
                
                @isset($settings['activation']['default_credentials'])
                @if ((int) $settings['activation']['default_credentials'])
                <div class="demo-credential">
                    @foreach ($roleCredentials as $role)
                        @php
                            $icon = 'ri-user-line';
                            if ($role['role'] === 'admin') $icon = 'ri-user-star-line';
                            elseif ($role['role'] === 'driver') $icon = 'ri-car-line';
                            elseif ($role['role'] === 'dispatcher') $icon = 'ri-customer-service-2-line';
                            elseif ($role['role'] === 'fleet') $icon = 'ri-team-line';
                        @endphp
                        <button class="btn default-credentials" type="button" data-email="{{ $role['email'] }}" data-password="{{ $role['password'] ?? '123456789' }}">
                            <i class="{{ $icon }}"></i>
                            <span>{{ ucfirst($role['role']) }}</span>
                        </button>
                    @endforeach
                </div>
                @endif
                @endisset
            </div>
        </div>
    </div>
</section>
@endsection

@push('scripts')
<script>
    (function($) {
        "use strict";
        $(document).ready(function() {
            // Password Visibility Toggle
            $(document).on('click', '.toggle-password', function() {
                var passwordField = $('#password');
                var fieldType = passwordField.attr('type');
                if (fieldType === 'password') {
                    passwordField.attr('type', 'text');
                    $(this).removeClass('ri-eye-line').addClass('ri-eye-off-line');
                } else {
                    passwordField.attr('type', 'password');
                    $(this).removeClass('ri-eye-off-line').addClass('ri-eye-line');
                }
            });

            // Login validation
            $('#loginForm').validate({
                rules: {
                    email: {
                        required: true,
                        email: true,
                        normalizer: function(value) {
                            return $.trim(value);
                        }
                    },
                    password: {
                        required: true
                    },
                }
            });

            // Demo Credential auto-fill
            $(".default-credentials").click(function() {
                $("#email").val("");
                $("#password").val("");
                var email = $(this).data("email");
                var password = $(this).data("password");
                $("#email").val(email);
                $("#password").val(password);
            });
        });
    })(jQuery);
</script>
@endpush
