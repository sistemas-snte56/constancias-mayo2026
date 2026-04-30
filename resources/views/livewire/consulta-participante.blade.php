<div class="max-w-2xl mx-auto p-4">
    <div class="bg-white shadow-xl rounded-xl p-6 border-t-8 border-blue-900">
        <h2 class="text-2xl font-bold text-blue-900 mb-6 text-center">Consulta de Constancias 2026</h2>

        <div class="flex gap-2 mb-8">
            <input 
                type="text" 
                wire:model.defer="numero_personal" 
                wire:keydown.enter="buscarParticipante"
                placeholder="Ingresa tu número personal..."
                class="flex-1 border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500"
            >
            <button 
                wire:click="buscarParticipante" 
                wire:loading.attr="disabled"
                class="bg-blue-900 text-white px-6 py-2 rounded-lg hover:bg-blue-800 transition flex items-center"
            >
                <span wire:loading.remove>Buscar</span>
                <span wire:loading>Cargando...</span>
            </button>
        </div>

        @if($busqueda_realizada)
            @if($participante)
                <div class="bg-gray-50 border rounded-lg p-6 animate-fade-in">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <p class="text-sm text-gray-500 uppercase font-bold">Nombre Completo</p>
                            <p class="text-lg text-gray-800">{{ $participante->nombres }} {{ $participante->apellido_paterno }} {{ $participante->apellido_materno }}</p>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500 uppercase font-bold">Delegación</p>
                            <p class="text-lg text-gray-800">
                                {{ $participante->delegacion->delegacion ?? 'N/A' }} 
                                {{ $participante->delegacion->nivel->nombre ?? 'N/A' }} 
                                {{ $participante->delegacion->sede ?? 'N/A' }} 
                            </p>
                            <p class="text-lg text-gray-800">
                                {{ $participante->delegacion->region->nombre ?? 'N/A' }} 
                            </p>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500 uppercase font-bold">Estatus</p>
                            <span class="px-3 py-1 rounded-full text-xs font-bold {{ $participante->status == 'aprobado' ? 'bg-green-100 text-green-700' : 'bg-orange-100 text-orange-700' }}">
                                {{ strtoupper($participante->status) }}
                            </span>
                        </div>
                    </div>

                    @if($participante->status == 'aprobado')
                        <div class="mt-8">
                            <a href="{{ route('constancia.descargar', $participante->uudd) }}" target="_blank" 
                               class="block w-full bg-green-600 text-white text-center font-bold py-3 rounded-lg hover:bg-green-700 transition shadow-md">
                                📥 Descargar Constancia PDF
                            </a>
                        </div>
                    @else
                        <div class="mt-6 bg-blue-50 border-l-4 border-blue-400 p-4">
                            <p class="text-blue-700 text-sm">
                                ℹ️ Tu participación está registrada, pero la constancia aún está en proceso de validación.
                            </p>
                        </div>
                    @endif
                </div>
            @else
                <div class="bg-red-50 border-l-4 border-red-400 p-4">
                    <p class="text-red-700">No se encontró ningún participante con ese número personal. Verifica los datos.</p>
                </div>
            @endif
        @endif
    </div>
</div>