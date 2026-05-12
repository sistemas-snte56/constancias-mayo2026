<!-- resources/views/public/resultado_qr.blade.php -->
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validación de Constancia</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100 font-sans">
    <div class="min-h-screen flex items-center justify-center p-4">
        <div class="max-w-md w-full bg-white rounded-3xl shadow-2xl overflow-hidden border border-gray-200">

            <!-- Encabezado con color Institucional Naranja -->
            <div class="bg-[#ee7a00] p-8 text-center">
                <div class="bg-white w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-4 shadow-lg">
                    <!-- Ícono de escudo / verificado -->
                    <svg class="w-12 h-12 text-[#ee7a00]" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5"
                            d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z">
                        </path>
                    </svg>
                </div>
                <h2 class="text-2xl font-black text-white uppercase tracking-tight">¡Documento Válido!</h2>
                <p class="text-orange-100 text-sm mt-1 font-medium">Constancia verificada exitosamente</p>
            </div>

            <!-- Cuerpo -->
            <div class="p-8 text-center">
                <p class="text-gray-600 font-medium">
                    Esta constancia ha sido verificada en nuestro sistema. Los datos del participante son:
                </p>

                <!-- Recuadro de datos - mismo estilo que el folio de referencia -->
                <div class="mt-6 p-6 bg-[#111827] rounded-2xl border-4 border-dashed border-gray-400 text-left">
                    <p class="text-xs text-gray-400 uppercase font-bold tracking-widest mb-1">Participante</p>
                    <p class="text-xl font-mono font-black text-white tracking-wide">
                        {{ $participante->nombres }} {{ $participante->apellido_paterno }} {{ $participante->apellido_materno }}
                    </p>

                    <div class="border-t border-gray-600 my-4"></div>

                    <p class="text-xs text-gray-400 uppercase font-bold tracking-widest mb-1">Folio</p>
                    <span class="text-1xl font-mono font-black text-white tracking-widest">
                        {{ $participante->folio }}
                    </span>
                </div>

                <!-- Nota informativa -->
                <div class="mt-8 space-y-4">
                    <p class="text-xs text-gray-400 uppercase font-bold">Información</p>
                    <p class="text-sm text-gray-700 bg-gray-50 p-4 rounded-lg border border-gray-200">
                        Este documento ha sido <strong>validado correctamente</strong> en el sistema del
                        <strong>SNTE Sección 56</strong>. Desfile 1º de Mayo 2026.
                    </p>
                </div>

                <!-- Pie -->
                <div class="mt-8 pt-6 border-t border-gray-100">
                    <p class="text-xs text-gray-400">SNTE Sección 56 &mdash; Desfile 1º de Mayo 2026</p>
                </div>
            </div>

        </div>
    </div>
</body>
</html>