<?php

namespace App\Filament\Resources\Participantes\Schemas;

use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Schema;

class ParticipanteInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextEntry::make('nombres'),
                TextEntry::make('apellido_paterno'),
                TextEntry::make('apellido_materno')
                    ->placeholder('-'),
                TextEntry::make('rfc'),
                TextEntry::make('genero')
                    ->badge(),
                TextEntry::make('telefono')
                    ->placeholder('-'),
                TextEntry::make('email')
                    ->label('Email address')
                    ->placeholder('-'),
                TextEntry::make('numero_personal'),
                TextEntry::make('uudd'),
                TextEntry::make('folio'),
                TextEntry::make('codigo_qr')
                    ->placeholder('-')
                    ->columnSpanFull(),
                TextEntry::make('delegacion.id')
                    ->label('Delegacion'),
                TextEntry::make('created_by')
                    ->numeric(),
                TextEntry::make('status')
                    ->badge(),
                TextEntry::make('created_at')
                    ->dateTime()
                    ->placeholder('-'),
                TextEntry::make('updated_at')
                    ->dateTime()
                    ->placeholder('-'),
            ]);
    }
}
