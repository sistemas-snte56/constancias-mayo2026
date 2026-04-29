<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Str;

class Participante extends Model
{
    protected $table = 'participantes';

    protected $fillable = [
        'nombres',
        'apellido_paterno',
        'apellido_materno',
        'rfc',
        'genero',
        'telefono',
        'email',
        'numero_personal',
        'uudd',
        'folio',
        'codigo_qr',
        'delegacion_id',
        'created_by',
        'status',
    ];

    /**
     * El participante pertenece a una delegación
     */
    public function delegacion() : BelongsTo
    {
        return $this->belongsTo(Delegacion::class, 'delegacion_id');
    }

    /**
     * Relacionamos el usuario que creo el registro de los participantes
     */
    public function creador() : BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    

    public function getNombreCompletoAttribute()
    {
        // return "{$this->nombres} {$this->apellido_paterno} {$this->apellido_materno}";

        /**
         * Concatenamos los campos de nombre completo y eliminamos espacios adicionales, 
         * esto es útil para evitar problemas con espacios en blanco al buscar por nombre completo. 
         * Por ejemplo, si un participante tiene un apellido materno vacío, no queremos que haya un espacio 
         * extra al final del nombre completo. Al usar trim() y implode(), 
         * garantizamos que el formato del nombre completo sea consistente sin importar si algunos campos están vacíos o no.
         */
        return trim(implode(' ', [
            $this->nombres,
            $this->apellido_paterno,
            $this->apellido_materno,
        ]));        
    }    

    protected static function booted()
    {
        static::creating(function ($participante) {
            // 1. Asignar el creador automáticamente
            $participante->created_by = auth()->id();

            // 2. Lógica para el Folio (Ejemplo: MAYO26- y un número aleatorio o ID)
            // Nota: Como el ID aún no existe antes de crear, usamos un string único
            $year = now()->format('Y');
            $participante->folio = "SNTE56-CPM-{$year}-" . strtoupper(bin2hex(random_bytes(3)));

            // 4. Lógica para UUDD 
             $participante->uudd = (string) Str::uuid();

            // 3. Lógica para el Código QR
            // Aquí podrías guardar la URL que validará la constancia más tarde
            $participante->codigo_qr = url("/validar/{$participante->uudd}");

        });
    }    


}
