<!-- resources/views/public/resultado_qr.blade.php -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validación de Constancia</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen p-4">
    <div class="bg-white rounded-2xl shadow-xl p-8 max-w-sm w-full text-center border-t-8 border-green-500">
        <div class="text-green-500 text-6xl mb-4">Check!</div>
        <h1 class="text-2xl font-bold text-gray-800 mb-2">¡Documento Válido!</h1>
        <p class="text-gray-600 mb-6">Esta constancia ha sido verificada exitosamente en nuestro sistema.</p>
        
        <div class="bg-gray-50 rounded-lg p-4 text-left border border-gray-200">
            <p class="text-xs text-gray-400 uppercase font-bold">Participante</p>
            <p class="text-lg text-gray-800 font-semibold mb-3">{{ $participante->nombres }} {{ $participante->apellido_paterno }}</p>
            
            <p class="text-xs text-gray-400 uppercase font-bold">Folio</p>
            <p class="text-md text-gray-800">{{ $participante->folio }}</p>
        </div>

        <div class="mt-8 text-xs text-gray-400">
            SNTE Sección 56 - Desfile 1º de Mayo 2026
        </div>
    </div>
</body>
</html>