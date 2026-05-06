<div class="min-h-screen bg-gray-100 flex flex-col">

    <header class="bg-[#89194b] text-white p-4 shadow-md">
        Sistema Institucional
    </header>

    <main class="flex-1 flex items-center justify-center">

        <div class="bg-white shadow-xl rounded-xl p-6 border-t-8 border-[#9d2449]">

            <h2 class="text-2xl font-bold text-[#89194b] mb-6 text-center">
                Consulta de Constancias 2026
            </h2>

            <div class="flex gap-2 mb-8">
                <input type="text" wire:model.defer="numero_personal" wire:keydown.enter="buscarParticipante"
                    placeholder="Ingresa tu número personal..." class="flex-1 px-4 py-2 border border-gray-300 rounded-lg shadow-sm 
                    focus:outline-none focus:ring-2 focus:ring-[#ee7a00] 
                    focus:border-[#ee7a00] focus:shadow-lg transition" />

                <button wire:click="buscarParticipante" wire:loading.attr="disabled" class="bg-[#ff5608] text-white px-6 py-2 rounded-lg 
                       hover:bg-[#ee7a00] transition flex items-center">
                    <span wire:loading.remove>Buscar</span>
                    <span wire:loading>Cargando...</span>
                </button>
            </div>

            @if($busqueda_realizada)
                @if($participante)
                    <div class="bg-gray-50 border rounded-lg p-6 animate-fade-in">

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">

                            <div>
                                <p class="text-sm text-gray-500 uppercase font-bold">
                                    Nombre Completo
                                </p>
                                <p class="text-lg text-[#353a40]">
                                    {{ $participante->nombres }}
                                    {{ $participante->apellido_paterno }}
                                    {{ $participante->apellido_materno }}
                                </p>
                            </div>

                            <div>
                                <p class="text-sm text-gray-500 uppercase font-bold">
                                    Delegación
                                </p>
                                <p class="text-lg text-[#353a40]">
                                    {{ $participante->delegacion->delegacion ?? 'N/A' }}
                                    {{ $participante->delegacion->nivel->nombre ?? 'N/A' }}
                                    {{ $participante->delegacion->sede ?? 'N/A' }}
                                </p>
                                <p class="text-lg text-[#353a40]">
                                    {{ $participante->delegacion->region->nombre ?? 'N/A' }}
                                </p>
                            </div>

                            <div>
                                <p class="text-sm text-gray-500 uppercase font-bold">
                                    Estatus
                                </p>

                                <span class="px-3 py-1 rounded-full text-xs font-bold 
                                        {{ $participante->status == 'aprobado' 
                                            ? 'bg-green-100 text-green-700' 
                                            : 'bg-yellow-100 text-yellow-700' }}">

                                    {{ strtoupper($participante->status) }}
                                </span>
                            </div>
                        </div>

                        @if($participante->status == 'aprobado')
                        <div class="mt-8">
                            <a href="{{ route('constancia.descargar', $participante->uudd) }}" target="_blank" class="block w-full bg-[#89194b] text-white text-center 
                                            font-bold py-3 rounded-lg hover:bg-[#6a143a] 
                                            transition shadow-md">

                                📥 Descargar Constancia PDF
                            </a>
                        </div>
                        @else
                        <div class="mt-6 bg-orange-50 border-l-4 border-[#ff5608] p-4">
                            <p class="text-[#ee7a00] text-sm">
                                ℹ️ Tu participación está registrada, pero la constancia aún está en proceso de validación.
                            </p>
                        </div>
                        @endif

                    </div>
                @else
                <div class="bg-red-50 border-l-4 border-[#9d2449] p-4">
                    <p class="text-[#89194b]">
                        No se encontró ningún participante con ese número personal. Verifica los datos.
                    </p>
                </div>
                @endif
            @endif

        </div>

    </main>

    <footer class="bg-[#89194b] text-white p-3 text-center  px-6 py-3 text-xs md:text-sm">
        Derechos reservados © ® 2026 | 
        Sindicato Nacional de Trabajadores de la Educación Sección 56 |
        José María Pino Suárez No. 04, Col. Centro. C.P. 94100, Xalapa, Veracruz, México. |
        
        <a href="/aviso-privacidad" 
           class="underline hover:text-[#ff5608] transition">
            Aviso de privacidad
        </a>
    </footer>

</div>