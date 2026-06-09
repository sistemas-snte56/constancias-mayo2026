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
        // 1. Buscamos la delegación (tu lógica original e intacta)
        $nombreDeExcel = trim($row['delegacion'] ?? '');
        if (empty($nombreDeExcel)) return null;

        $delegacion = Delegacion::where('delegacion', $nombreDeExcel)->first();

        if (!$delegacion) {
            throw new \Exception("La delegación '{$nombreDeExcel}' no existe.");
        }

        // 2. Limpieza y asignación del número de personal
        $numeroPersonal = trim($row['numero_personal'] ?? '');        

        // Si la celda está vacía, generamos el TEMP único
        if (empty($numeroPersonal)) {
            do {
                $numeroPersonal = 'TEMP-' . str_pad(rand(0, 999999), 6, '0', STR_PAD_LEFT);
            } while (Participante::where('numero_personal', $numeroPersonal)->exists());
        }

        $genero = mb_strtoupper(trim($row['genero'] ?? ''), 'UTF-8');

        // 3. Guardado/Actualización seguro
        return Participante::updateOrCreate(
            ['numero_personal' => $numeroPersonal], // <--- AQUÍ ESTABA EL ERROR. Ya usa la variable limpia y corregida.
            [
                'nombres'           => mb_strtoupper(trim($row['nombres'] ?? ''), 'UTF-8'),
                'apellido_paterno'  => mb_strtoupper(trim($row['apellido_paterno'] ?? ''), 'UTF-8'),
                'apellido_materno'  => mb_strtoupper(trim($row['apellido_materno'] ?? ''), 'UTF-8'),
                // Si no tiene RFC, guarda un null limpio
                'rfc'               => !empty($row['rfc']) ? mb_strtoupper(trim($row['rfc']), 'UTF-8') : null,
                // Traductor inteligente de género protegido para UTF-8
                'genero'            => in_array($genero, ['H', 'M']) ? $genero : 'O',
                'telefono'          => str_replace(' ', '', $row['telefono'] ?? ''),
                'email'             => strtolower(trim($row['email'] ?? '')) ?: null,
                'delegacion_id'     => $delegacion->id,
            ]
        );
    }

    public function rules(): array
    {
        return [
            'numero_personal' => ['nullable'], // Permite que venga vacío para generar el TEMP
            'rfc'             => ['nullable'], 
            'delegacion'      => ['required'],
            'nombres'         => ['required'],
            'apellido_paterno'=> ['required'],
        ];
    }
}