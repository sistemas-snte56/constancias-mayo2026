<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta de Constancias - SNTE 56</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    @livewireStyles
</head>
<body class="bg-gray-100 antialiased flex flex-col min-h-screen">
    <header>
        <div class="bg-[#9d2449] flex items-center h-[80px] md:h-[90px]">

            {{-- Fondo blanco con el logo --}}
            <div class="bg-white flex items-center px-4 self-stretch">
                <img src="{{ asset('images/logosnte56@4x-8.png') }}"
                    alt="SNTE Sección 56 Veracruz"
                    class="h-14 md:h-16 w-auto">
            </div>

            {{-- Triángulo division.png --}}
            <img src="{{ asset('images/division@4x-8.png') }}"
                alt=""
                class="h-[80px] md:h-[90px] w-auto flex-shrink-0">

            {{-- Espacio central guinda --}}
            <div class="flex-1"></div>

            {{-- Logo La Unidad derecha --}}
            <div class="hidden md:flex items-center px-6 flex-shrink-0">
                <img src="{{ asset('images/logounidad@4x-8.png') }}"
                    alt="La Unidad - Nuestra Fortaleza"
                    class="h-14 w-auto">
            </div>

        </div>

        {{-- Franja naranja --}}
        <div class="bg-[#f18c21] h-3"></div>
    </header>

    <div class="flex-1 flex flex-col justify-center py-6">
        {{ $slot }}
    </div>
    <footer class="bg-[#9d2449]">
        <div class="bg-[#f18c21] h-3"></div>

        <div class="py-4 px-6 text-center">

            {{-- Logo La Unidad visible solo en móvil --}}
            <div class="flex justify-center mb-3 md:hidden">
                <img src="{{ asset('images/logounidad@4x-8.png') }}"
                    alt="La Unidad - Nuestra Fortaleza"
                    class="h-12 w-auto">
            </div>

            <p class="text-white text-sm">
                Sindicato Nacional de Trabajadores de la Educación &mdash; Sección 56 Veracruz
            </p>
            <p class="text-white/70 text-xs mt-1">
                &copy; {{ date('Y') }} Todos los derechos reservados
            </p>
        </div>
    </footer>
    @livewireScripts
</body>
</html>