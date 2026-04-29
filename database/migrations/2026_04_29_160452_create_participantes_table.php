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
        Schema::create('participantes', function (Blueprint $table) {
            $table->id();
            $table->string('nombres');
            $table->string('apellido_paterno');
            $table->string('apellido_materno')->nullable();
            $table->string('rfc', 13)->unique();
            $table->enum('genero', ['H', 'M', 'O']);
            $table->string('telefono')->nullable();
            $table->string('email')->nullable();
            $table->string('numero_personal')->unique();
            $table->string('uudd'); // Unidad/Dependencia
            $table->string('folio')->unique();
            $table->text('codigo_qr')->nullable();
            
            // Relaciones
            $table->foreignId('delegacion_id')->constrained('delegaciones');
            $table->foreignId('created_by')->constrained('users'); 
            $table->enum('status', ['pendiente', 'aprobado', 'rechazado'])->default('pendiente');                       
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('participantes');
    }
};
