@php
$settings = getSettings();

function hexToRgb($hex) {
    $hex = str_replace("#", "", $hex);
    if (strlen($hex) == 3) {
        $r = hexdec(str_repeat(substr($hex, 0, 1), 2));
        $g = hexdec(str_repeat(substr($hex, 1, 1), 2));
        $b = hexdec(str_repeat(substr($hex, 2, 1), 2));
    } else {
        $r = hexdec(substr($hex, 0, 2));
        $g = hexdec(substr($hex, 2, 2));
        $b = hexdec(substr($hex, 4, 2));
    }
    return "$r, $g, $b";
}

$primaryColorRgb = hexToRgb($settings['appearance']['primary_color'] ?? '#E5AC25');
$secondaryColorRgb = hexToRgb($settings['appearance']['secondary_color'] ?? '#1E1E1E');
@endphp

<style>
    :root {
        --primary-color: {{ $primaryColorRgb }};
        --secondary-color: {{ $secondaryColorRgb }};
        --font-family: {{ $settings['appearance']['front_font_family'] ?? 'DM Sans' }};
    }

    /* Premium Animation Effects */
    @keyframes pulse-gold {
        0% {
            box-shadow: 0 0 0 0 rgba(229, 172, 37, 0.4);
        }
        70% {
            box-shadow: 0 0 0 10px rgba(229, 172, 37, 0);
        }
        100% {
            box-shadow: 0 0 0 0 rgba(229, 172, 37, 0);
        }
    }

    @keyframes pulse-scale {
        0%, 100% {
            transform: scale(0.95);
            opacity: 0.9;
        }
        50% {
            transform: scale(1.05);
            opacity: 1;
        }
    }

    .btn, .gradient-bg-color, .gradient-border-color {
        transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) !important;
    }

    .gradient-bg-color:hover, .btn-primary:hover {
        transform: translateY(-3px) scale(1.02);
        box-shadow: 0 10px 20px rgba({{ $primaryColorRgb }}, 0.3) !important;
    }

    .best-choice-box, .blog-box, .comment-box, .experience-box {
        transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1) !important;
        border-radius: 16px !important;
        overflow: hidden;
    }

    .best-choice-box:hover, .blog-box:hover, .comment-box:hover, .experience-box:hover {
        transform: translateY(-8px);
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.08), 0 0 0 2px rgba({{ $primaryColorRgb }}, 0.2) !important;
    }

    .loader-box img {
        animation: pulse-scale 2s infinite ease-in-out;
    }
</style>
