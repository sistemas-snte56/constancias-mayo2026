<?php

namespace App\Filament\Resources\Delegacions\Schemas;

use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class DelegacionForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Select::make('region_id')
                    ->relationship('region', 'id')
                    ->required(),
                TextInput::make('delegacion')
                    ->required(),
                TextInput::make('sede'),
                Select::make('nivel_id')
                    ->relationship('nivel', 'id')
                    ->required(),
            ]);
    }
}
