<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
        <h1>Lista de CDs de menor duracion a 200s</h1>
            <table border="8">
                <tr bgcolor="#621835">
                    <th>Título Álbum</th>
                    <th>Artista</th>
                    <th>Canciones</th>
                    <th>Sello Discográfico</th>
                    <th>Año Publicación</th>     
                </tr>
                <xsl:for-each select="ListaCD/CD">
                <tr>
                    <td><xsl:value-of select="TituloAlbum"/></td>
                    <td><xsl:value-of select="Artista"/></td>
                    <td>
                        <xsl:for-each select="cancion">
                            <xsl:if test="@tiempo &lt; 200">
                                <xsl:value-of select="."/>
                                <br/>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                    <td><xsl:value-of select="SelloDisco"/></td>
                    <td><xsl:value-of select="AnioPubli"/></td>
                </tr>
                </xsl:for-each>    
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>