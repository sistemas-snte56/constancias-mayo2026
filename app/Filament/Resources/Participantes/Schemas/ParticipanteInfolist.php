<?php

namespace App\Filament\Resources\Participantes\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Components\Grid;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class ParticipanteInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                
                // --- SECCIÓN 1: DATOS PERSONALES ---
                Section::make('Información Personal')
                    ->icon('heroicon-o-user')
                    ->inlineLabel(false) // Etiquetas arriba, valores abajo
                    ->components([
                        
                        // 1. El Nombre toma todo el renglón completo por defecto
                        TextEntry::make('nombres')
                            ->label('Nombre(s)')
                            ->weight('bold'),
                            
                        // 2. AQUÍ EL TRUCO: Un grid de 2 columnas solo para los apellidos
                        Grid::make(2)
                            ->components([
                                TextEntry::make('apellido_paterno')
                                    ->label('Apellido Paterno')
                                    ->columnSpan(1), // Ocupa la mitad izquierda
                                    
                                TextEntry::make('apellido_materno')
                                    ->label('Apellido Materno')
                                    ->placeholder('-')
                                    ->columnSpan(1), // Ocupa la mitad derecha
                            ]),

                        // 3. Otro bloque limpio para los datos de abajo
                        Grid::make(2)
                            ->components([
                                TextEntry::make('rfc')
                                    ->label('RFC')
                                    ->copyable()
                                    ->fontFamily('mono')
                                    ->color('primary'),
                                    
                                // TextEntry::make('genero')
                                //     ->label('Género')
                                //     ->badge()
                                //     ->color('gray'),



                                TextEntry::make('genero')
                                    ->label('Género')
                                    ->badge()
                                    // 1. Transformamos de forma limpia lo que ve el usuario
                                    ->formatStateUsing(fn (string $state): string => match (trim($state)) {
                                        'M'     => 'Mujer',
                                        'H'     => 'Hombre',
                                        'O'     => 'Prefiero no decirlo',
                                        default => $state,
                                    })
                                    // 2. FUERZA BRUTA: Leemos directo de la base de datos con $record para el color
                                    ->color(fn ($record): string => match ($record?->genero) {
                                        'M'     => 'danger', // Rosa / Rojo suave
                                        'H'     => 'info',   // Azul suave
                                        'O'     => 'gray',   // Gris
                                        default => 'gray',
                                    }),












                                    
                                TextEntry::make('numero_personal')
                                    ->label('Número de Personal')
                                    ->copyable()
                                    ->fontFamily('mono')
                                    ->columnSpanFull(),
                            ]),
                    ]),

                // --- SECCIÓN 2: CONTACTO Y UBICACIÓN ---
                Section::make('Contacto y Adscripción')
                    ->icon('heroicon-o-envelope')
                    ->inlineLabel(false)
                    ->components([
                        TextEntry::make('telefono')
                            ->label('Teléfono Celular')
                            ->icon('heroicon-m-phone')
                            ->placeholder('-'),
                            
                        TextEntry::make('email')
                            ->label('Correo Electrónico')
                            ->icon('heroicon-m-envelope')
                            ->placeholder('-'),
                            
                        TextEntry::make('delegacion.delegacion')
                            ->label('Delegación Asignada')
                            ->weight('semibold')
                            ->color('warning'),
                            
                        TextEntry::make('delegacion.region.nombre')
                            ->label('Región Geográfica')
                            ->color('info'),
                    ]),

                // --- SECCIÓN 3: CONTROL INTERNO Y SISTEMA ---
                Section::make('Seguimiento del Registro')
                    ->icon('heroicon-o-cpu-chip')
                    ->inlineLabel(false)
                    ->components([
                        TextEntry::make('status')
                            ->label('Estado Actual')
                            ->badge()
                            ->color(fn($state) => match ($state) {
                                'aprobado' => 'success',
                                'pendiente' => 'warning',
                                'rechazado' => 'danger',
                                default => 'gray',
                            }),
                            
                        TextEntry::make('folio')
                            ->label('Folio Interno')
                            ->fontFamily('mono')
                            ->weight('bold'),
                            
                        TextEntry::make('created_by')
                            ->label('ID de Usuario Creador')
                            ->numeric(),
                            
                        TextEntry::make('uudd')
                            ->label('UUID Único de Registro')
                            ->fontFamily('mono')
                            ->copyable(),
                            
                        TextEntry::make('codigo_qr')
                            ->label('Código QR Asignado')
                            ->placeholder('Sin QR generado aún'),
                            
                        TextEntry::make('created_at')
                            ->label('Fecha y Hora de Registro')
                            ->dateTime('d/M/Y H:i')
                            ->placeholder('-'),
                            
                        TextEntry::make('updated_at')
                            ->label('Última Actualización del Sistema')
                            ->dateTime('d/M/Y H:i')
                            ->placeholder('-'),
                    ]),
            ]);
    }
}