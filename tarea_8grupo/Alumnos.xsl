<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Alumnos</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid #ccc;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #b2ebf2; /* Azul más intenso */
                    }
                    h2 {
                        text-align: center;
                        color: blue;
                        text-transform: uppercase;
                        text-decoration: underline;
                    }
                    tr:nth-child(even) {
                        background-color: #e0f7fa; /* Azul claro para filas pares */
                    }
                    tr:nth-child(odd) {
                        background-color: #ffffff; /* Blanco para filas impares */
                    }
                    tr:hover {
                        background-color: #b2ebf2; /* Azul más intenso al pasar el cursor */
                    }
                    .centered {
                        text-align: center;
                    }
                </style>
            </head>
            <body>
                <h2>Lista de Alumnos</h2>
                <table>
                    <tr>
                        <th class="centered">NIA</th>
                        <th>NOMBRE</th>
                        <th>APELLIDOS</th>
                        <th class="centered">GÉNERO</th>
                        <th>FECHA DE NACIMIENTO</th>
                        <th>CICLO</th>
                        <th class="centered">CURSO</th>
                        <th class="centered">GRUPO</th>
                    </tr>
                    <xsl:for-each select="alumnos/alumno">
                        <tr>
                            <td class="centered"><xsl:value-of select="@nia" /></td>
                            <td><xsl:value-of select="nombre" /></td>
                            <td><xsl:value-of select="apellidos" /></td>
                            <td class="centered"><xsl:value-of select="genero" /></td>
                            <td><xsl:value-of select="fecha_de_nacimiento" /></td>
                            <td><xsl:value-of select="ciclo" /></td>
                            <td class="centered"><xsl:value-of select="curso" /></td>
                            <td class="centered"><xsl:value-of select="grupo" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
