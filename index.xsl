<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
    
    <xsl:template match="/club_voleibol" >
        <html lang="es">
        <head>
            <link href="./plantilla/css/estilo.css" rel="stylesheet" type="text/css" />
            <meta charset="utf-8"/>
            <meta name="description" content="Página principal" />
            <title>tarea de evaluacion2</title>
        </head>

        <body>
            <header>
                <img src= "./plantilla/img/logotipo.png" alt= "Reservas" />
                <a href="tienda.xml">Tienda</a>
                <a href="equipos.xml">Equipos</a>
                <a href="partidos.xml">Partidos</a>
            </header>
            
            <main class="principal">
                    <h1>TRABAJANDO CON PLANTILLAS XSLT</h1>
            </main>

            <footer>
                <address>&#169; Desarrollado por info@birt.eus</address>
            </footer>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>