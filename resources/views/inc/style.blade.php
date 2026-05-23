@php
$settings = getSettings();
$bgType = $settings['appearance']['sidebar_background_type'] ?? 'gradient';
$primaryColor = $settings['appearance']['primary_color'] ?? '#E5AC25';
$solidColor = $settings['appearance']['sidebar_solid_color'] ?? '#1E1E1E';
$gradientColor1 = $settings['appearance']['sidebar_gradient_color_1'] ?? '#242424';
$gradientColor2 = $settings['appearance']['sidebar_gradient_color_2'] ?? '#0C0C0C';
@endphp

<style>
    :root {
        --primary-color: {{ $primaryColor }};
        --font-family: {{ $settings['appearance']['font_family'] ?? 'Inter' }};
        --sidebar-gradient-color-1: {{ $gradientColor1 }};
        --sidebar-gradient-color-2: {{ $gradientColor2 }};
        --sidebar-solid-color: {{ $solidColor }};
        --sidebar-background-color:
            @if ($bgType === 'gradient')
                linear-gradient(178.98deg, var(--sidebar-gradient-color-1) -453.29%, var(--sidebar-gradient-color-2) 91.53%);
            @else
                var(--sidebar-solid-color);
            @endif
    }

    .sidebar {
        background: var(--sidebar-background-color);
    }
</style>
