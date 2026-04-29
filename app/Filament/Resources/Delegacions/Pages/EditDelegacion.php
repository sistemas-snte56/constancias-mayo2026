<?php

namespace App\Filament\Resources\Delegacions\Pages;

use App\Filament\Resources\Delegacions\DelegacionResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditDelegacion extends EditRecord
{
    protected static string $resource = DelegacionResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
