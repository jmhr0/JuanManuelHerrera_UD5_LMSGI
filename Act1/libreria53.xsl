<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal</h1>
        <table>
        <tr bgcolor="#682739">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Editor</th>
            <th>Número Páginas</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro[autor='Ignacio Martinez de Pison']">   <!-- Se muestra libros de este autor-->
        <xsl:if test="precio &gt;12">   <!-- muestra los libros que superen el coste indicado-->
        <tr>
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="editor"/></td>
            <td><xsl:value-of select="numPaginas"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>    
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
