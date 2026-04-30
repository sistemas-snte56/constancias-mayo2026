<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta de Constancias - SNTE 56</title>
    
    
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    @livewireStyles
</head>
<body class="bg-gray-100 antialiased">
    
    <div class="min-h-screen flex flex-col justify-center">
        {{ $slot }}
    </div>

    @livewireScripts
</body>
</html>