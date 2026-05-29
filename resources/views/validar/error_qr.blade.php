<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error de Validación</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100 font-sans">
    <div class="min-h-screen flex items-center justify-center p-4">
        <div class="max-w-md w-full bg-white rounded-3xl shadow-2xl overflow-hidden border border-gray-200">

            <div class="bg-red-600 p-8 text-center">
                <div class="bg-white w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <svg class="w-12 h-12 text-red-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" 
                              d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z">
                        </path>
                    </svg>
                </div>
                <h2 class="text-2xl font-black text-white uppercase tracking-tight">¡No Válido!</h2>
                <p class="text-red-100 text-sm mt-1 font-medium">Documento no encontrado</p>
            </div>

            <div class="p-8 text-center">
                <div class="mb-6">
                    <p class="text-gray-700 font-bold text-lg mb-2">
                        Lo sentimos, la constancia no es válida.
                    </p>
                    <p class="text-gray-500 text-sm">
                        El código escaneado no existe en los registros oficiales de la 
                        <strong>SNTE Sección 56</strong> para el Desfile del 1º de Mayo 2026.
                    </p>
                </div>

                <div class="mt-6 p-6 bg-gray-50 rounded-2xl border-2 border-dashed border-red-200 text-left">
                    <p class="text-xs text-red-600 uppercase font-bold tracking-widest mb-2">Posibles causas:</p>
                    <ul class="text-sm text-gray-600 space-y-2">
                        <li class="flex items-start">
                            <span class="text-red-500 mr-2">•</span> El código QR ha sido alterado.
                        </li>
                        <li class="flex items-start">
                            <span class="text-red-500 mr-2">•</span> La constancia aún no ha sido dada de alta.
                        </li>
                        <li class="flex items-start">
                            <span class="text-red-500 mr-2">•</span> El folio es incorrecto o inexistente.
                        </li>
                    </ul>
                </div>

                <div class="mt-8">
                    <a href="/" class="inline-block w-full py-3 px-6 bg-gray-800 text-white font-bold rounded-xl hover:bg-gray-700 transition-colors shadow-lg">
                        Volver al Inicio
                    </a>
                </div>

                <div class="mt-8 pt-6 border-t border-gray-100">
                    <p class="text-xs text-gray-400">SNTE Sección 56 &mdash; Sistema de Validación</p>
                </div>
            </div>

        </div>
    </div>
</body>
</html>