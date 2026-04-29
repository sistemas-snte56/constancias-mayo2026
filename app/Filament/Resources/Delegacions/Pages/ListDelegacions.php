<?php

namespace App\Filament\Resources\Delegacions\Pages;

use App\Filament\Resources\Delegacions\DelegacionResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListDelegacions extends ListRecords
{
    protected static string $resource = DelegacionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
