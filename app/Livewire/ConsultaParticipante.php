<?php

namespace App\Livewire;

use App\Models\Participante;
use Livewire\Component;

class ConsultaParticipante extends Component
{

    public $numero_personal = '';
    public $participante;
    public $busqueda_realizada = false;

    public function buscarParticipante()
    {
        $this->validate([
            'numero_personal' => 'required|min:3',
        ], [
            'numero_personal.required' => 'El número personal es obligatorio.',
        ]);        
        
        $this->participante = Participante::where('numero_personal', trim($this->numero_personal))->first();
        $this->busqueda_realizada = true;
    }

    public function render()
    {
        return view('livewire.consulta-participante')->layout('layouts.guest');
    }
}
