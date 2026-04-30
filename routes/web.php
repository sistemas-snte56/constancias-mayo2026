<?php

use App\Livewire\ConsultaParticipante;
use App\Models\Participante;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// 1. EL BUSCADOR (Livewire)
// Esta es la página principal que verán los maestros para buscarse.
Route::get('/consulta', ConsultaParticipante::class)->name('public.consulta');

// 2. EL QR (Validación directa)
// Esta ruta es la que escanean; los manda directo al resultado sin buscar.
Route::get('/validar/{uudd}', function ($uudd) {
    // Buscamos al participante
    $participante = Participante::where('uudd', $uudd)->firstOrFail();
    
    // Aquí podrías redirigir al buscador pero ya con el resultado cargado,
    // o simplemente mostrar una vista sencilla de validación.
    return view('public.resultado_qr', compact('participante'));
})->name('validar.constancia');

// 3. LA DESCARGA (El "motor" del PDF)
// Solo se activa cuando el usuario ya se encontró y le da clic al botón.
Route::get('/descargar-constancia/{uudd}', function ($uudd) {
    $participante = Participante::where('uudd', $uudd)
        ->where('status', 'aprobado')
        ->firstOrFail();

    // Por ahora lo dejamos como un mensaje para que no te dé error de PDF
    return "Preparando archivo para: " . $participante->nombres;
})->name('constancia.descargar');
