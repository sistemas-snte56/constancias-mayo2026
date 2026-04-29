<?php

namespace App\Filament\Resources\Participantes\Tables;

use App\Models\Participante;
use Filament\Actions\Action;
use Filament\Actions\BulkAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
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


                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
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
