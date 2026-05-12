<?php

namespace App\Filament\Widgets;

use App\Models\Participante;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;

class RegistroMensualChart extends ChartWidget
{
    // En v4, estas propiedades NO son estáticas
    protected ?string $heading = 'Ritmo de Registro (Maestros por Día)';
    
    // QUITAMOS "static" de aquí también
    protected ?string $pollingInterval = '15s'; 

    protected int | string | array $columnSpan = 'full';

        // Esto permite que el widget se pueda "encoger"
    protected bool $isCollapsible = true;

    // ESTA ES LA LÍNEA: Hace que inicie CERRADO automáticamente
    protected bool $isCollapsed = true;
    

    protected function getData(): array
    {
        $data = Participante::select(
            DB::raw('count(*) as count'), 
            DB::raw('DATE(created_at) as date')
        )
        ->where('created_at', '>=', now()->subDays(30))
        ->groupBy('date')
        ->orderBy('date')
        ->get();

        return [
            'datasets' => [
                [
                    'label' => 'Maestros cargados',
                    'data' => $data->pluck('count')->toArray(),
                    'fill' => 'start',
                    'borderColor' => '#3b82f6',
                    'backgroundColor' => 'rgba(59, 130, 246, 0.1)',
                    'tension' => 0.4,
                ],
            ],
            'labels' => $data->pluck('date')->toArray(),
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
}