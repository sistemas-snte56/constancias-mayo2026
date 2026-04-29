<?php
namespace App\Imports;

use App\Models\Delegacion;
use App\Models\Participante;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow; // <--- FALTA ESTO
use Maatwebsite\Excel\Concerns\WithValidation; // <--- FALTA ESTO

class ParticipantesImport implements ToModel, WithHeadingRow, WithValidation
{
    public function model(array $row)
    {
        // 1. Buscamos la delegación
        $nombreDeExcel = trim($row['delegacion'] ?? '');

        if (empty($nombreDeExcel)) {
            return null;
        }

        // IMPORTANTE: Verifica si tu campo en la BD se llama 'nombre' o 'delegacion'
        $delegacion = Delegacion::where('delegacion', $nombreDeExcel)->first();

        if (!$delegacion) {
            throw new \Exception("La delegación '{$nombreDeExcel}' no existe en la base de datos.");
        }

        // El chequeo manual de RFC ya no es necesario aquí porque 
        // la función rules() de abajo lo hará automáticamente de forma profesional.

        return new Participante([
            'nombres'           => trim($row['nombres']),
            'apellido_paterno'  => trim($row['apellido_paterno']),
            'apellido_materno'  => trim($row['apellido_materno'] ?? ''),
            'rfc'               => strtoupper(trim($row['rfc'])),
            'genero'            => (str_contains(strtoupper($row['genero'] ?? ''), 'MAS')) ? 'H' : 'M',
            'telefono'          => str_replace(' ', '', $row['telefono'] ?? ''),
            'email'             => strtolower(trim($row['email'] ?? '')) ?: null,
            'numero_personal'   => trim($row['numero_personal']),
            'delegacion_id'     => $delegacion->id,
            'status'            => 'pendiente',
        ]);
    }

    public function rules(): array
    {
        return [
            'rfc' => [
                'required',
            ],
            'numero_personal' => [
                'required',
                'unique:participantes,numero_personal',
            ],
            'email' => [
                'nullable',
            ],
            'delegacion' => [
                'required',
                // 'exists:delegaciones,nombre', // Asegúrate que el campo sea 'nombre'
            ],
        ];
    }

    public function customValidationMessages()
    {
        return [
            'rfc.unique' => 'Error: El RFC :input ya está registrado.',
            'numero_personal.unique' => 'Error: El Número de Personal :input ya existe.',
            'email.unique' => 'Error: El correo :input ya está en uso.',
        ];
    }
}