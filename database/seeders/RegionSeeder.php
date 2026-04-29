<?php

namespace Database\Seeders;

use App\Models\Region;
use Illuminate\Database\Seeder;

class RegionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = database_path('seeders/data/regiones.csv');

        if (!file_exists($path)) {
            $this->command->warn('El archivo regiones.csv no fue encontrado.');
            return;
        }

        $regions = array_map('str_getcsv', file($path));

        foreach ($regions as $index => $row) {
            if ($index === 0) continue; // Omitir cabecera

            Region::updateOrCreate(
                ['id' => $row[0]],
                [
                    'nombre' => $row[1],
                ]
            );
        }

        $this->command->info('Regiones importadas correctamente.');
    }
}
