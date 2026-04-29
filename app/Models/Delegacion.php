<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Delegacion extends Model
{
    protected $table = 'delegaciones';

    protected $fillable = [
        'region_id',
        'nivel_id',
        'delegacion',
    ];

    /**
     * La delegación pertenece a una región
     */
    public function region(): BelongsTo
    {
        return $this->belongsTo(Region::class, 'region_id');
    }

    /**
     * La delegación pertenece a un nivel educativo
     */
    public function nivel(): BelongsTo
    {
        return $this->belongsTo(Nivel::class, 'nivel_id');
    }    
}
