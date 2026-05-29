<?php

use App\Livewire\ConsultaParticipante;
use App\Models\Participante;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Route;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

/*
|--------------------------------------------------------------------------
| Ruta Raíz
|--------------------------------------------------------------------------
*/

Route::get('/', function () {
    return redirect()->route('public.consulta');
});

/*
|--------------------------------------------------------------------------
| Rutas Públicas
|--------------------------------------------------------------------------
*/

// 1. Buscador principal (Livewire) — los maestros se buscan aquí
Route::get('/consulta', ConsultaParticipante::class)
    ->name('public.consulta');

// 2. Validación por QR — ruta que escanea el QR y muestra resultado directo
Route::get('/validar/{uudd}', function ($uudd) {
    $participante = Participante::where('uudd', $uudd)->first();

    if (!$participante) {
        return response()->view('validar.error_qr', [], 404);
    }

    return view('validar.resultados_qr', compact('participante'));
})->name('validar.constancia');

// 3. Descarga de constancia en PDF
Route::get('/descargar-constancia/{uudd}', function ($uudd) {
    // Buscar participante aprobado
    $participante = Participante::where('uudd', $uudd)
        ->where('status', 'aprobado')
        ->firstOrFail();

    // Registrar primera descarga
    if (is_null($participante->descargado_at)) {
        $participante->update(['descargado_at' => now()]);
    }

    // Generar QR en base64
    $qrCode = base64_encode(
        QrCode::format('svg')
            ->size(150)
            ->margin(1)
            ->errorCorrection('H')
            ->generate(route('validar.constancia', $participante->uudd))
    );

    // Generar y entregar PDF
    $pdf = Pdf::loadView('pdf.constancia', compact('participante', 'qrCode'))
        ->setPaper('letter', 'portrait');

    $filename = implode('-', [
        $participante->nombres,
        $participante->apellido_paterno,
        $participante->apellido_materno,
    ]) . '.pdf';

    return $pdf->stream($filename);
})->name('constancia.descargar');