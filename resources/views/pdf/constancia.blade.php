<?php
$nombreCompleto = $participante->nombres . ' ' . $participante->apellido_paterno . ' ' . $participante->apellido_materno;
$fontSize = mb_strlen($nombreCompleto) < 30 ? '18pt' : '23pt';
$lineas = mb_strlen($nombreCompleto) > 30 ? 2 : 1;
$paddingTop = $lineas === 1 ? '38px' : '25px';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <style>
        @page { margin: 0px; }
        body { margin: 0; padding: 0; font-family: 'Helvetica', 'Arial', sans-serif; }

        #background {
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            z-index: -1000;
        }
        #background img { width: 100%; height: 100%; }

        .uudd-container {
            position: fixed;
            top: 10px; right: 50px;
            font-size: 8pt; color: #666;
            text-align: right;
        }

        .folio-container {
            position: fixed;
            bottom: 30px; left: 26px;
            font-size: 10pt; font-weight: bold;
        }

        .qr-box {
            position: fixed;
            bottom: 35px; left: 41px;
            z-index: 1000;
        }

        table.layout {
            width: 100%;
            height: 792px;
            border-collapse: collapse;
        }

        td.espacio { height: 370px;}

        td.nombre {
            height: 60px;
            text-align: center;
            vertical-align: top;
            padding-left: 60px;
            padding-right: 60px;
            padding-bottom: 0;
            font-weight: bold;
            text-transform: uppercase;
            color: #9E1D18;
            line-height: 1.25;
        }
    </style>
</head>
<body>

    <div id="background">
        <img src="{{ public_path('images/constancia-2026@2x-100.jpg') }}" alt="fondo">
    </div>

    <div class="uudd-container">{{ $participante->uudd }}</div>

    <div class="folio-container">FOLIO: {{ $participante->folio }}</div>

    <table class="layout" cellpadding="0" cellspacing="0">
        <tr><td class="espacio"></td></tr>
        <tr>
            <td class="nombre" style="font-size: {{ $fontSize }}; padding-top: {{ $paddingTop }};">
                {{ $nombreCompleto }}
            </td>
        </tr>
    </table>

    <div class="qr-box">
        <img src="data:image/svg+xml;base64,{{ $qrCode }}" width="110" height="110">
    </div>

</body>
</html>