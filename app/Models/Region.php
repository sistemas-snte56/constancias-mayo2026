<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Region extends Model
{
    protected $table = 'regiones';

    protected $fillable = [
        'nombre',
    ];

    /**
     * Una región tiene muchas delegaciones
     */

    public function delegaciones(): HasMany
    {
        return $this->hasMany(
            Delegacion::class,'region_id');
    }
}
