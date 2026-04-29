<?php

namespace App\Filament\Resources\Participantes\Pages;

use App\Filament\Resources\Participantes\ParticipanteResource;
use Filament\Actions\Action;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListParticipantes extends ListRecords
{
    protected static string $resource = ParticipanteResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Action::make('importar')
            ->label('Subir Excel')
            ->icon('heroicon-o-arrow-up-tray')
            ->color('success')
            ->form([
                \Filament\Forms\Components\FileUpload::make('archivo')
                    ->label('Selecciona el archivo')
                    ->required()
                    ->disk('public')
            ])
            ->action(function (array $data) {
                $filePath = storage_path('app/public/' . $data['archivo']);
                
                try {
                    \Maatwebsite\Excel\Facades\Excel::import(new \App\Imports\ParticipantesImport, $filePath);
                    
                    \Filament\Notifications\Notification::make()
                        ->title('¡Éxito!')
                        ->body('Los registros se han cargado correctamente.')
                        ->success()
                        ->send();
                } catch (\Exception $e) {
                    \Filament\Notifications\Notification::make()
                        ->title('Error en Excel')
                        ->body($e->getMessage()) // Te dirá qué delegación falló
                        ->danger()
                        ->persistent() // No se quita hasta que lo cierres
                        ->send();
                }
            }),

            CreateAction::make(),
        ];
    }
}
