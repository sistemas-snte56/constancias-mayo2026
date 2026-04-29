<?php

namespace App\Filament\Resources\Delegacions;

use App\Filament\Resources\Delegacions\Pages\CreateDelegacion;
use App\Filament\Resources\Delegacions\Pages\EditDelegacion;
use App\Filament\Resources\Delegacions\Pages\ListDelegacions;
use App\Filament\Resources\Delegacions\Schemas\DelegacionForm;
use App\Filament\Resources\Delegacions\Tables\DelegacionsTable;
use App\Models\Delegacion;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class DelegacionResource extends Resource
{
    protected static ?string $model = Delegacion::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'delegacion';

    public static function form(Schema $schema): Schema
    {
        return DelegacionForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return DelegacionsTable::configure($table);
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
            'index' => ListDelegacions::route('/'),
            'create' => CreateDelegacion::route('/create'),
            'edit' => EditDelegacion::route('/{record}/edit'),
        ];
    }
}
