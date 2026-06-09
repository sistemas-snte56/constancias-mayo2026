<?php

namespace App\Filament\Resources\Participantes\Tables;

use App\Models\Delegacion;
use App\Models\Participante;
use Filament\Actions\Action;
use Filament\Actions\BulkAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Filters\TernaryFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Collection;


use Filament\Tables\Filters\Filter;
use Filament\Forms\Components\Select;
use Illuminate\Database\Eloquent\Builder;

use Filament\Tables\Actions\CreateAction;





class ParticipantesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id')
                    ->label('ID')
                    ->sortable(),
                TextColumn::make('nombre_completo')
                    ->label('Nombre')
                    ->searchable(query: function ($query, $search) {
                        $query->where('nombres', 'like', "%{$search}%")
                            ->orWhere('apellido_paterno', 'like', "%{$search}%")
                            ->orWhere('apellido_materno', 'like', "%{$search}%");
                    }),
                // TextColumn::make('rfc')
                //     ->label('RFC')
                //     ->toggleable(isToggledHiddenByDefault: true)
                //     ->searchable(),

                // TextColumn::make('telefono')
                //     ->label('Teléfono')
                //     ->searchable(),
                // TextColumn::make('email')
                //     ->label('Email')
                //     ->searchable(),
                TextColumn::make('numero_personal')
                    ->label('Número de Personal')
                    ->searchable(),

                TextColumn::make('delegacion.delegacion')
                    ->searchable(),
                TextColumn::make('created_by')
                    ->numeric()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->sortable(),
                TextColumn::make('status')
                    ->badge() // Agrega una etiqueta visual para el estado,
                    ->color(fn($state) => match ($state) {
                        'aprobado' => 'success',
                        'pendiente' => 'warning',
                        'rechazado' => 'danger',
                        default => null,
                    })
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('Estado'),

                TextColumn::make('descargado_at')
                    ->label('Estado de Entrega')
                    ->badge() // Convierte el texto en un badge (pastilla)
                    ->dateTime('d/M/Y H:i') // Muestra la fecha si existe
                    ->placeholder('Pendiente') // Texto que sale si descargado_at es NULL
                    ->color(fn($state): string => match ($state) {
                        null => 'gray', // Si no hay fecha, color gris (Pendiente)
                        default => 'success', // Si hay cualquier fecha, color verde (Éxito)
                    })
                    ->icon(fn($state): string => match ($state) {
                        null => 'heroicon-o-clock',
                        default => 'heroicon-o-check-circle',
                    })
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->sortable(),



                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('uudd')
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->label('UUID')
                    ->copyable()
                    ->fontfamily('mono')
                    ->searchable(),
            ])
            ->filters([
                TernaryFilter::make('descargado_at')
                    ->label('¿Ya descargaron?')
                    ->placeholder('Todos')
                    ->trueLabel('Solo descargados')
                    ->falseLabel('Aún pendientes')
                    ->queries(
                        true: fn($query) => $query->whereNotNull('descargado_at'),
                        false: fn($query) => $query->whereNull('descargado_at'),
                    ),
                Filter::make('region_delegacion')
                    ->form([
                        Select::make('region_id')
                            ->label('Región')
                            ->options(\App\Models\Region::pluck('nombre', 'id'))
                            ->live()       // 👈 reactivo, actualiza delegaciones al cambiar
                            ->afterStateUpdated(fn(callable $set) => $set('delegacion_id', null)),

                        Select::make('delegacion_id')
                            ->label('Delegación')
                            ->options(function (callable $get) {
                                $regionId = $get('region_id');

                                if (!$regionId) {
                                    return \App\Models\Delegacion::query()
                                        ->orderBy('delegacion')
                                        ->pluck('delegacion', 'id');
                                }

                                return \App\Models\Delegacion::query()
                                    ->where('region_id', $regionId)
                                    ->orderBy('delegacion')
                                    ->pluck('delegacion', 'id');
                            })
                            ->live(),
                    ])
                    ->query(function (Builder $query, array $data) {
                        $query
                            ->when(
                                $data['delegacion_id'],
                                fn(Builder $q) => $q->where('delegacion_id', $data['delegacion_id'])
                            )
                            ->when(
                                $data['region_id'] && !$data['delegacion_id'],
                                fn(Builder $q) => $q->whereHas('delegacion', function (Builder $q) use ($data) {
                                    $q->where('region_id', $data['region_id']);
                                })
                            );
                    })
                    ->indicateUsing(function (array $data): array {
                        $indicators = [];

                        if ($data['region_id'] ?? null) {
                            $region = \App\Models\Region::find($data['region_id']);
                            $indicators[] = 'Región: ' . $region?->nombre;
                        }

                        if ($data['delegacion_id'] ?? null) {
                            $delegacion = \App\Models\Delegacion::find($data['delegacion_id']);
                            $indicators[] = 'Delegación: ' . $delegacion?->delegacion;
                        }

                        return $indicators;
                    }),
            ])
            ->recordUrl(null)
            ->recordActions([
                ViewAction::make()->slideOver(),
                EditAction::make()->slideOver(),
            ])
            ->actions([
                // Acción personalizada para aprobar
                Action::make('aprobar')
                    ->label('Aprobar')
                    ->icon('heroicon-o-check-circle')
                    ->color('success')
                    ->requiresConfirmation()
                    ->visible(fn($record) => auth()->user()->hasRole('admin') && $record->status === 'pendiente') // Solo se ve si es admin Y está pendiente
                    ->action(function ($record) {
                        $record->update(['status' => 'aprobado']);
                        // Esto envía una notificación visual en la esquina de la pantalla
                        \Filament\Notifications\Notification::make()
                            ->title('Aprobado correctamente')
                            ->success()
                            ->send();
                    }),
                EditAction::make()->slideOver(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([

                    BulkAction::make('aprobar_en_lote')
                        ->label('Aprobar seleccionados')
                        ->icon('heroicon-o-check-circle')
                        ->color('success')
                        ->requiresConfirmation()
                        ->visible(fn() => auth()->user()->hasRole('admin'))
                        ->action(function (Collection $records) {
                            // $records->each(function ($record) {
                            //     $record->update(['status' => 'aprobado']);
                            // });

                            \App\Models\Participante::whereIn('id', $records->pluck('id'))->update(['status' => 'aprobado']);

                            \Filament\Notifications\Notification::make()
                                ->title('Registros aprobados en lote')
                                ->body("Se han aprobado {$records->count()} registros correctamente.")
                                ->success()
                                ->send();
                        }),



                    DeleteBulkAction::make(),
                ]),
            ])

            
            ->modifyQueryUsing(fn (Builder $query) => $query->orderBy(        // 👈 aquí
                \App\Models\Delegacion::select('delegacion')
                    ->whereColumn('delegaciones.id', 'participantes.delegacion_id'),
                'asc'
            ));
    }
}
