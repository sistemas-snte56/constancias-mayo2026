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

class ParticipantesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([


                TextColumn::make('nombre_completo')
                    ->label('Nombre')
                    ->searchable(query: function ($query, $search) {
                        $query->where('nombres', 'like', "%{$search}%")
                            ->orWhere('apellido_paterno', 'like', "%{$search}%")
                            ->orWhere('apellido_materno', 'like', "%{$search}%");
                    }),






                TextColumn::make('rfc')
                    ->label('RFC')
                    ->toggleable(isToggledHiddenByDefault: true)
                    ->searchable(),

                TextColumn::make('telefono')
                    ->label('Teléfono')
                    ->searchable(),
                TextColumn::make('email')
                    ->label('Email')
                    ->searchable(),
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
                    ->color(fn ($state) => match ($state) {
                        'aprobado' => 'success',
                        'pendiente' => 'warning',
                        'rechazado' => 'danger',
                        default => null,
                    })
                    ->sortable()
                    ->label('Estado'),

                TextColumn::make('descargado_at')
                    ->label('Estado de Entrega')
                    ->badge() // Convierte el texto en un badge (pastilla)
                    ->dateTime('d/M/Y H:i') // Muestra la fecha si existe
                    ->placeholder('Pendiente') // Texto que sale si descargado_at es NULL
                    ->color(fn ($state): string => match ($state) {
                        null => 'gray', // Si no hay fecha, color gris (Pendiente)
                        default => 'success', // Si hay cualquier fecha, color verde (Éxito)
                    })
                    ->icon(fn ($state): string => match ($state) {
                        null => 'heroicon-o-clock',
                        default => 'heroicon-o-check-circle',
                    })
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
                // 1. FILTRO DE REGIÓN
                SelectFilter::make('region_id')
                    ->label('Región')
                    ->relationship('delegacion.region', 'nombre') // Ajusta 'nombre' al campo de tu tabla regiones
                    ->searchable()
                    ->preload(),

                // 2. FILTRO DE DELEGACIÓN (DEPENDIENTE)
                SelectFilter::make('delegacion_id')
                    ->label('Delegación')
                    // ->relationship('delegacion', 'delegacion') // Ajusta 'nombre' al campo de tu tabla delegaciones
                    // ->searchable()
                    // ->preload()
                    // ->options(function (callable $get) {
                    //     // AQUÍ ESTÁ LA MAGIA:
                    //     // Obtenemos el ID de la región seleccionada en el filtro anterior
                    //     $regionId = $get('region_id');

                    //     if (!$regionId) {
                    //         return Delegacion::all()->pluck('delegacion', 'id');
                    //     }

                    //     // Si hay una región seleccionada, solo mostramos sus delegaciones
                    //     return Delegacion::where('region_id', $regionId)->pluck('delegacion', 'id');
                    // })

                    // ->options(function (callable $get) {
                    //     $regionId = $get('region_id');

                    //     if (!$regionId) {
                    //         return Delegacion::all()->pluck('delegacion', 'id');
                    //     }

                    //     return Delegacion::where('region_id', $regionId)->pluck('delegacion', 'id');
                    // })
                    // ->searchable()
                    // ->preload()


                    ,

                    
                TernaryFilter::make('descargado_at')
                    ->label('¿Ya descargaron?')
                    ->placeholder('Todos')
                    ->trueLabel('Solo descargados')
                    ->falseLabel('Aún pendientes')
                    ->queries(
                        true: fn ($query) => $query->whereNotNull('descargado_at'),
                        false: fn ($query) => $query->whereNull('descargado_at'),
                    ),
            ])
            
            ->recordUrl(null)

            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])








            ->actions([
                // Acción personalizada para aprobar
                Action::make('aprobar')
                        ->label('Aprobar')
                        ->icon('heroicon-o-check-circle')
                        ->color('success')
                        ->requiresConfirmation()
                        ->visible(fn ($record) => auth()->user()->hasRole('admin') && $record->status === 'pendiente') // Solo se ve si es admin Y está pendiente
                        ->action(function ($record) {
                            $record->update(['status' => 'aprobado']);
                            // Esto envía una notificación visual en la esquina de la pantalla
                            \Filament\Notifications\Notification::make()
                                ->title('Aprobado correctamente')
                                ->success()
                                ->send();
                        }),
                EditAction::make(),
            ])







            ->toolbarActions([
                BulkActionGroup::make([

                    BulkAction::make('aprobar_en_lote')
                        ->label('Aprobar seleccionados')
                        ->icon('heroicon-o-check-circle')
                        ->color('success')
                        ->requiresConfirmation()
                        ->visible(fn () => auth()->user()->hasRole('admin'))
                        ->action(function (Collection $records) {
                            $records->each(function ($record) {
                                $record->update(['status' => 'aprobado']);
                            });

                            \Filament\Notifications\Notification::make()
                                ->title('Registros aprobados en lote')
                                ->success()
                                ->send();
                        }),



                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
