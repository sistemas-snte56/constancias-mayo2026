# 🎖️ Sistema de Gestión de Constancias - Desfile 1º de Mayo
## SNTE Sección 56 - Veracruz (Edición 2026)

Este sistema integral ha sido diseñado para automatizar el registro, control estadístico y validación de autenticidad de los docentes que participan en el desfile conmemorativo del 1º de mayo.

---

## 🛠️ Arquitectura Técnica

El proyecto está construido bajo un stack moderno y robusto para garantizar velocidad y seguridad:

*   **Backend:** Laravel 11.
*   **Panel Administrativo:** Filament v4 (TALL Stack: Tailwind, Alpine.js, Laravel, Livewire).
*   **Base de Datos:** MySQL con relaciones normalizadas para Regiones y Delegaciones.
*   **Generación de QR:** `simplesoftwareio/simple-qrcode`.
*   **Reportes PDF:** `barryvdh/laravel-dompdf`.

---

## 🚀 Funcionalidades Clave

### 1. Gestión de Participantes
- Registro completo de docentes (Nombre, RFC, CURP).
- Asignación automática de **UUDD** (Identificador Único) y Folio.
- Relación inteligente: Cada participante pertenece a una **Delegación**, la cual está vinculada a una **Región**.

### 2. Dashboard de Inteligencia (Widgets)
- **Tarjetas de Resumen:** Visualización instantánea del total de registrados y distribución por género.
- **Gráfica de Participación:** Gráfica de líneas que muestra el ritmo de registros diarios.
- **Análisis por Delegación (Widget Avanzado):**
    - Gráfica de barras que muestra el top de delegaciones con más registros.
    - **Filtro dinámico por Región:** Permite segmentar los datos en tiempo real.
    - **Interfaz Colapsable:** Optimización del espacio visual para una gestión limpia.

### 3. Sistema de Validación QR "Bulletproof"
- **Generación Dinámica:** Al registrar a un maestro, se genera un código QR que apunta a una URL de validación oficial.
- **Vista Pública Institucional:** Interfaz optimizada para móviles con los colores institucionales (Naranja/Gris), que muestra la validez del documento tras ser escaneado.
- **Seguridad:** Validación directa contra base de datos mediante el token `uudd`.

---

## 📂 Estructura de Datos Relevante

El sistema utiliza un esquema de base de datos eficiente:
- `regiones`: ID y nombre de la región.
- `delegaciones`: ID, nombre y llave foránea `region_id`.
- `participantes`: Datos personales, folios y llave foránea `delegacion_id`.

---

## 🔧 Instalación y Despliegue

1. **Clonación y Dependencias:**
   ```bash
   git clone <url-repositorio>
   composer install
   npm install && npm run build