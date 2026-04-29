<?php

namespace Database\Seeders;

use App\Models\Delegacion;
use Illuminate\Database\Seeder;

class DelegacionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = database_path('seeders/data/delegaciones.csv');

        if (!file_exists($path)) {
            $this->command->warn('El archivo delegaciones.csv no fue encontrado.');
            return;
        }

        $delegaciones = array_map('str_getcsv', file($path));

        foreach ($delegaciones as $index => $row) {
            if ($index === 0) continue; // Omitir cabecera

            $row = array_map('trim', $row); // Elimina espacios invisibles

            Delegacion::updateOrCreate(
                ['id' => $row[0]],
                [
                    'region_id'        => $row[1],
                    'delegacion'       => $row[2],
                    'sede'             => $row[3],
                    'nivel_id'         => $row[4],
                ]
            );
        }

        $this->command->info('delegaciones importadas correctamente.');
    } 
}
