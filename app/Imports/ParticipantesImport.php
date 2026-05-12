<?php

namespace App\Imports;

use App\Models\Delegacion;
use App\Models\Participante;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class ParticipantesImport implements ToModel, WithHeadingRow, WithValidation
{
    public function model(array $row)
    {
        // 1. Buscamos la delegación (tu lógica actual se mantiene)
        $nombreDeExcel = trim($row['delegacion'] ?? '');
        if (empty($nombreDeExcel)) return null;

        $delegacion = Delegacion::where('delegacion', $nombreDeExcel)->first();

        if (!$delegacion) {
            throw new \Exception("La delegación '{$nombreDeExcel}' no existe.");
        }

        // 2. Usamos updateOrCreate para evitar duplicados y errores
        // El primer array busca por 'numero_personal'
        // El segundo array actualiza o inserta los datos
        return Participante::updateOrCreate(
            ['numero_personal' => trim($row['numero_personal'])],
            [
                'nombres'           => trim($row['nombres']),
                'apellido_paterno'  => trim($row['apellido_paterno']),
                'apellido_materno'  => trim($row['apellido_materno'] ?? ''),
                'rfc'               => strtoupper(trim($row['rfc'])),
                'genero'            => (str_contains(strtoupper($row['genero'] ?? ''), 'MAS')) ? 'H' : 'M',
                'telefono'          => str_replace(' ', '', $row['telefono'] ?? ''),
                'email'             => strtolower(trim($row['email'] ?? '')) ?: null,
                'delegacion_id'     => $delegacion->id,
                // Nota: No incluimos 'status' aquí para no resetear a 'pendiente' 
                // a los que ya fueron aprobados manualmente en el panel.
            ]
        );
    }

    public function rules(): array
    {
        return [
            'numero_personal' => ['required'], // Quitamos el 'unique' para que no truene
            'rfc'             => ['required'],
            'delegacion'      => ['required'],
            'nombres'         => ['required'],
            'apellido_paterno'=> ['required'],
        ];
    }
}