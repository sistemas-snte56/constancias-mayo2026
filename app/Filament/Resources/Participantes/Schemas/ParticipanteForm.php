<?php

namespace App\Filament\Resources\Participantes\Schemas;

use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
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
                Select::make('delegacion_id')
                    ->label('Delegación')
                    ->searchable()
                    ->getSearchResultsUsing(function (string $search) {
                        return \App\Models\Delegacion::query()
                            ->where('delegacion', 'like', "%{$search}%")
                            ->orWhere('sede', 'like', "%{$search}%")
                            ->limit(50)
                            ->get()
                            ->mapWithKeys(fn ($record) => [
                                $record->id => $record->delegacion . ' - ' . ($record->sede ?? 'Sin sede'),
                            ])
                            ->toArray();
                    })
                    ->getOptionLabelUsing(fn ($value) =>
                        \App\Models\Delegacion::find($value)?->nombre_completo
                    )
                    ->required(),
                Hidden::make('status')
                    ->default('pendiente')
                    ->required(),
            ]);
    }
}
