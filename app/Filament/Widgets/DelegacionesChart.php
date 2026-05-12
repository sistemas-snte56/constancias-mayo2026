<?php

namespace App\Filament\Widgets;

use App\Models\Participante;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Facades\DB;

class DelegacionesChart extends ChartWidget
{
    protected ?string $heading = 'Análisis por Delegación';

    // Esto hace que el widget use las 12 columnas (todo el ancho)
    protected int | string | array $columnSpan = 'full';    

    // Ajusta el número según qué tan alta la quieras (en píxeles)
    protected ?string $maxHeight = '300px';

    // Esto permite que el widget se pueda "encoger"
    protected bool $isCollapsible = true;

    // ESTA ES LA LÍNEA: Hace que inicie CERRADO automáticamente
    protected bool $isCollapsed = true;
    

    protected function getOptions(): array
    {
        return [
            'scales' => [
                'y' => [
                    'beginAtZero' => true,
                    'ticks' => [
                        'precision' => 0, // Para que no ponga medios maestros (0.5, 1.5)
                    ],
                ],
            ],
        ];
    }    

    protected function getFilters(): ?array
    {
        return [
            null => 'Todas las Regiones',
            '1'   =>  'REGIÓN I - TANTOYUCA',
            '2'   =>  'REGIÓN II - TUXPAN',
            '3'   =>  'REGIÓN III - POZA RICA',
            '4'   =>  'REGIÓN IV - MARTÍNEZ DE LA TORRE',
            '5'   =>  'REGIÓN V - XALAPA',
            '6'   =>  'REGIÓN VI - VERACRUZ',
            '7'   =>  'REGIÓN VII - CORDOBA',
            '8'   =>  'REGIÓN VIII - ORIZABA',
            '9'   =>  'REGIÓN IX - COSAMALOAPAN',
            '10'  =>  'REGIÓN X - SAN ANDRES TUXTLA',
            '11'  =>  'REGIÓN XI - MINATITLÁN',
        ];
    }

    protected function getData(): array
    {
        $activeFilter = $this->filter;

        $query = Participante::query()
            // Unimos participantes con delegaciones
            ->join('delegaciones', 'participantes.delegacion_id', '=', 'delegaciones.id')
            
            // Seleccionamos el nombre de la delegación y el conteo
            ->select('delegaciones.delegacion as nombre_delegacion', DB::raw('count(*) as total'))
            
            // FILTRO CORREGIDO: Buscamos en la tabla delegaciones, no en participantes
            ->when($activeFilter, fn ($query) => $query->where('delegaciones.region_id', $activeFilter))
            
            ->groupBy('delegaciones.delegacion')
            ->orderBy('total', 'desc')
            ->limit(15)
            ->get();

        return [
            'datasets' => [
                [
                    'label' => 'Maestros Registrados',
                    'data' => $query->pluck('total')->toArray(),
                    'backgroundColor' => '#fbbf24',
                ],
            ],
            'labels' => $query->pluck('nombre_delegacion')->toArray(),
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}