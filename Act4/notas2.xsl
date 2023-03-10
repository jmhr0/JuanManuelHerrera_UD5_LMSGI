<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/notas">
    <html>
            <body>
                <title>Ej4 A&#241;o graduaci&#243;n</title>
                <div style="float:left; position:absolute; width:100%;">
                    <h2>Convocatoria Junio</h2>
                    <table border="2" align="center">
                        <tr>
                            <th colspan="2">Datos</th>
                            <th colspan="4">Notas</th>
                        </tr>
                        <tr>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Tareas</th>
                            <th>Cuestionarios</th>
                            <th>Examen</th>
                            <th>Final</th>
                        </tr>
                        <xsl:apply-templates select="alumno"/>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="alumno">
        <xsl:if test="./@convocatoria='Junio'">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="apellidos"/></td>
                <td><xsl:value-of select="tareas"/></td>
                <td><xsl:value-of select="cuestionarios"/></td>
                <td><xsl:value-of select="examen"/></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="final&gt;=9">
                            <font color="blue">Sobresaliente</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=7">
                            <font color="cyan">Notable</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=6">
                            <font color="black">Bien</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=5">
                            <font color="orange">Suficiente</font>
                        </xsl:when>
                        <xsl:otherwise>
                            <font color="red">Suspenso</font>
                        </xsl:otherwise>
                    </xsl:choose>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
    <xsl:template match="matricula"/>
</xsl:stylesheet>