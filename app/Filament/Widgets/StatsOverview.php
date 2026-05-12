<?php

namespace App\Filament\Widgets;

use App\Models\Participante;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Padrón Total', Participante::count())
                ->description('Maestros en el sistema')
                ->descriptionIcon('heroicon-m-users')
                ->color('info'),

            Stat::make('Por Validar', Participante::where('status', 'pendiente')->count())
                ->description('Esperando aprobación')
                ->descriptionIcon('heroicon-m-clock')
                ->color('warning'),

            Stat::make('Aprobados', Participante::where('status', 'aprobado')->count())
                ->description('Listos para constancia')
                ->descriptionIcon('heroicon-m-check-badge')
                ->color('success'),
        ];
    }
}