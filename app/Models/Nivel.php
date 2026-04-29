<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Nivel extends Model
{
    protected $table = 'niveles';
    protected $fillable = [
        'nombre',
    ];

    /**
     * Un nivel educativo tiene muchas delegaciones
     */

    public function delegaciones(): HasMany
    {
        return $this->hasMany(Delegacion::class,'nivel_id');
    }
}
