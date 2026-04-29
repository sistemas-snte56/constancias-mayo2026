<?php

namespace App\Filament\Resources\Participantes;

use App\Filament\Resources\Participantes\Pages\CreateParticipante;
use App\Filament\Resources\Participantes\Pages\EditParticipante;
use App\Filament\Resources\Participantes\Pages\ListParticipantes;
use App\Filament\Resources\Participantes\Pages\ViewParticipante;
use App\Filament\Resources\Participantes\Schemas\ParticipanteForm;
use App\Filament\Resources\Participantes\Schemas\ParticipanteInfolist;
use App\Filament\Resources\Participantes\Tables\ParticipantesTable;
use App\Models\Participante;
use BackedEnum;
use Filament\Facades\Filament;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class ParticipanteResource extends Resource
{
    protected static ?string $model = Participante::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'nombre_completo';

    public static function form(Schema $schema): Schema
    {
        return ParticipanteForm::configure($schema);
    }

    public static function infolist(Schema $schema): Schema
    {
        return ParticipanteInfolist::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ParticipantesTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListParticipantes::route('/'),
            'create' => CreateParticipante::route('/create'),
            'view' => ViewParticipante::route('/{record}'),
            'edit' => EditParticipante::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        // $query = parent::getEloquentQuery();

        // $user = Filament::auth()->user();

        // if (! $user || ! $user->hasRole('admin')) {
        //     $query->where('created_by', $user?->id);
        // }

        // return $query;

        $query = parent::getEloquentQuery();

        // Si NO es admin, solo ve sus registros
        if (!auth()->user()->hasRole('admin')) {
            $query->where('created_by', auth()->id());
        }

        return $query;
                
    }    
}
