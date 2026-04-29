<?php

namespace Database\Seeders;

use App\Models\Nivel;
use Illuminate\Database\Seeder;

class NivelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = database_path('seeders/data/niveles.csv');

        if (!file_exists($path)) {
            $this->command->warn('El archivo niveles.csv no fue encontrado.');
            return;
        }

        $niveles = array_map('str_getcsv', file($path));

        foreach ($niveles as $index => $row) {
            if ($index === 0) continue; // Omitir cabecera

            Nivel::updateOrCreate(
                ['id' => $row[0]],
                [
                    'nombre' => $row[1],
                ]
            );
        }

        $this->command->info('Niveles importadas correctamente.');
    }
}
