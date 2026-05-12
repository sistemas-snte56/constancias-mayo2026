<?php

namespace App\Filament\Resources\Participantes\Schemas;

use App\Models\Delegacion;
use App\Models\Region;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;


class ParticipanteForm
{
    /**
     * Generando mayusculas a campos de nombre
     */
    protected static function upperCase(): \Closure
    {
        return fn ($state) => mb_strtoupper($state, 'UTF-8');
    }

    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nombres')
                    ->label('Nombre')
                    ->dehydrateStateUsing(self::upperCase())
                    ->required(),
                TextInput::make('apellido_paterno')
                    ->label('Apellido Paterno')
                    ->dehydrateStateUsing(self::upperCase())
                    ->required(),
                TextInput::make('apellido_materno')
                    ->label('Apellido Materno')
                    ->dehydrateStateUsing(self::upperCase())
                    ->nullable(),
                TextInput::make('rfc')
                    ->label('RFC')
                    ->dehydrateStateUsing(self::upperCase())
                    ->required(),
                Select::make('genero')
                    ->options(['H' => 'HOMBRE', 'M' => 'MUJER', 'O' => 'OTRO'])
                    ->required(),
                TextInput::make('telefono')
                    ->label('Teléfono')
                    ->tel()
                    ->rule('regex:/^\d{10}$/')
                    ->validationMessages(['regex' => 'El número de teléfono debe tener 10 dígitos.'])
                    ->required(),
                TextInput::make('email')
                    ->label('Email address')
                    ->email()
                    ->required(),
                TextInput::make('numero_personal')
                    ->label('Número de Personal')
                    ->rule('digits_between:1,20')
                    ->validationMessages(['digits_between' => 'El número de personal debe contener entre 1 y 20 dígitos.'])
                    ->required()
                    ->unique(ignoreRecord: true)
                    ->validationMessages([
                        'required' => 'El número de personal es obligatorio.',
                        'unique' => 'Este número de personal ya está registrado.',
                    ]),

                // Select de Region
                Select::make('region_id')
                    ->required()
                    ->label('Región')
                    ->placeholder('Selecciona una región')
                    ->options( fn() => Region::orderBy('id')->pluck('nombre', 'id')->toArray())
                    ->searchable()
                    ->dehydrated(false) // No se guarda directamente en el modelo, es solo para filtrar las delegaciones
                    ->live()
                    ->afterStateUpdated( fn (Set $set) => $set('delegacion_id', null) ),

                // 2. Selección de Delegación
                Select::make('delegacion_id')
                    ->label('Delegación Correspondiente')
                    ->options(function (callable $get) {
                        $regionId = $get('region_id');

                        if (!$regionId) {
                            return [];
                        }

                        return Delegacion::with('nivel') // 👈 cargar relación
                            ->where('region_id', $regionId)
                            ->orderBy('delegacion')
                            ->get()
                            ->mapWithKeys(function ($delegacion) {
                                return [
                                    $delegacion->id => $delegacion->nombre_completo
                                ];
                            })
                            ->toArray();
                    })
                    ->searchable()
                    ->preload()
                    ->required()
                    ->live()
                    ->disabled( fn (callable $get) => !$get('region_id') ),






                    


                // Select::make('delegacion_id')
                //     ->label('Delegación')
                //     ->searchable()
                //     ->getSearchResultsUsing(function (string $search) {
                //         return \App\Models\Delegacion::query()
                //             ->where('delegacion', 'like', "%{$search}%")
                //             ->orWhere('sede', 'like', "%{$search}%")
                //             ->limit(50)
                //             ->get()
                //             ->mapWithKeys(fn ($record) => [
                //                 $record->id => $record->delegacion . ' - ' . ($record->sede ?? 'Sin sede'),
                //             ])
                //             ->toArray();
                //     })
                //     ->getOptionLabelUsing(fn ($value) =>
                //         \App\Models\Delegacion::find($value)?->nombre_completo
                //     )
                //     ->required(),
                Hidden::make('status')
                    ->default('pendiente')
                    ->required(),
            ]);
    }
}
