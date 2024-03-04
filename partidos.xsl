<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
    <xsl:template match="/club_voleibol" >
        <html lang="es">

            <head>
                <link href="./plantilla/css/estilo.css" rel="stylesheet" type="text/css" />
                <meta charset="utf-8"/>
                <meta name="description" content="Página principal" />
                <title>tarea de evaluacion2_partidos</title>
            </head>

            <body>
                <header>
                    <img src= "./plantilla/img/logotipo.png" alt= "Reservas" />
                    <a href="tienda.xml">Tienda</a>
                    <a href="equipos.xml">Equipos</a>
                    <a href="partidos.xml">Partidos</a>
                </header>
                
                <main>
                    <h1>PARTIDOS</h1>
                    <table>
                        <tr>
                            <th>PARTIDO</th>
                            <th>FECHA</th>
                            <th>RESULTADO</th>
                        </tr>
                        <xsl:for-each select="partido">
                        <xsl:sort order="descending" select="fecha"/>
                            <tr>
                                <td><xsl:value-of select="equipos/local"/> - <xsl:value-of select="equipos/visitante"/></td>
                                <td><xsl:value-of select="fecha"/></td>
                                <xsl:choose>
                                    <xsl:when test="equipos/local/@puntuacion &lt; equipos/visitante/@puntuacion">
                                        <td style="color:blue"><xsl:value-of select="equipos/local/@puntuacion"/> - <xsl:value-of select="equipos/visitante/@puntuacion"/></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td><xsl:value-of select="equipos/local/@puntuacion"/> - <xsl:value-of select="equipos/visitante/@puntuacion"/></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>
                    </table>			
                </main>

                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>