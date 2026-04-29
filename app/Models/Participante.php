<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

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
}
