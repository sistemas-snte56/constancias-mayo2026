<?php

namespace Database\Seeders;


use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RolSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // 1. Creamos Roles
        $adminRole = Role::create(['name' => 'admin']);
        $gestorRole = Role::create(['name' => 'gestor']);

        // 2. Creamos Usuarios
        $admin = User::find(1); // Asumiendo que el primer usuario es el admin
        $admin->assignRole($adminRole);

        // 3. Crear un usuario de prueba (Gestor)
        $gestor = User::factory()->create([
            'name' => 'Usuario Gestor',
            'email' => 'gestor@email.com',
            'password' => bcrypt('password2026'),
        ]);
        $gestor->assignRole($gestorRole);    
    }
}
