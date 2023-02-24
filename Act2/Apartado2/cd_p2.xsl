<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Lista de CDs segun artista</h1>
                    <table border="8">
                        <tr bgcolor="#621835">
                            <th>Artista</th>
                            <th>Canciones</th>
                            <th>Duracion</th>
                        </tr>
                        <xsl:for-each select="ListaCD/CD">
                            <xsl:if test="Artista= 'Harry Styles'">
                            <tr>
                                <td><xsl:value-of select="Artista"/></td>
                                <td> <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/> <br/>
                                    </xsl:for-each></td>
                                    <td>
                                        <xsl:for-each select="cancion/@tiempo">
                                            <xsl:value-of select="."/>
                                            <br/>
                                        </xsl:for-each>
                                    </td>
                            </tr>
                        </xsl:if>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>