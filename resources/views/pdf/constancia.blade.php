<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <style>
        @page { 
            margin: 0px; 
        }

        body { 
            font-family: 'Helvetica', 'Arial', sans-serif; 
            margin: 0;
            padding: 0;
        }

        /* Fondo */
        #background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1000;
        }

        #background img {
            width: 100%;
            height: 100%;
        }

        /* CONTENIDO PRINCIPAL */
        .content-wrapper {
            position: relative;
            padding: 80px 50px;
            text-align: center;
        }

        /* NOMBRE */
        .nombres {
            font-size: 24pt;
            font-weight: bold;
            margin-top: 320px;
            text-transform: uppercase;
            color: #9E1D18;
            white-space: nowrap; /* evita salto de línea */
        }

        /* FOLIO (abajo izquierda) */
        .folio-container {
            position: fixed;
            bottom: 30px;
            left: 26px;
            font-size: 10pt;
            font-weight: bold;
        }

        /* UUDD (arriba derecha) */
        .uudd-container {
            position: fixed;
            top: 10px;
            right: 50px;
            text-align: right;
        }

        .uudd-text {
            font-size: 8pt;
            color: #666;
        }


        .qr-box {
position: fixed; 
    /* Ajusta estos valores si ves que se sale del recuadro blanco */
    bottom: 35px;    
    left: 41px;      
    width: 105px;    /* Un poquito más pequeño para que respete los márgenes del cuadro blanco */
    height: 160px;
    z-index: 1000;   /* Asegura que esté por encima de todo */
}

.qr-box img {
    display: block;
}



    </style>
</head>
<body>

    <!-- Fondo -->
    <div id="background">
        <img src="{{ public_path('images/constancia-2026@2x-100.jpg') }}" alt="fondo">
    </div>

    <!-- UUDD arriba derecha -->
    <div class="uudd-container">
        <span class="uudd-text">
            {{ $participante->uudd }}
        </span>
    </div>

    <!-- FOLIO abajo izquierda -->
    <div class="folio-container">
        FOLIO: {{ $participante->folio }}
    </div>

    <!-- CONTENIDO -->
    <div class="content-wrapper">

        <div class="nombres">
            {{ $participante->nombres }} 
            {{ $participante->apellido_paterno }} 
            {{ $participante->apellido_materno }}
        </div>

    </div>

    <!-- QR CODE
    <div class="qr-container">
        <img src="data:image/svg+xml;base64,{{ $qrCode }}" width="100" height="100">
    </div> -->

    <div class="qr-box">
        <img src="data:image/svg+xml;base64,{{ $qrCode }}" width="110" height="110">
    </div>

</body>
</html>