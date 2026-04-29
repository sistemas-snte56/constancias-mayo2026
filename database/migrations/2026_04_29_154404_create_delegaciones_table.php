<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('delegaciones', function (Blueprint $table) {
            $table->id();
            $table->foreignId('region_id')->constrained('regiones');
            $table->string('delegacion')->unique();             // D-II-59
            $table->string('sede')->nullable();            
            $table->foreignId('nivel_id')->constrained('niveles');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('delegaciones');
    }
};
