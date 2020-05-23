<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <title>Present Room 2</title>
        </head>

        <body>
            <table border="5">
                <tr>
                    <th>Δωμάτια με wifi</th>

                </tr>
                <xsl:apply-templates select="Hotel/Rooms/Room/nameOfRoom">
                    <xsl:sort select="." />
                </xsl:apply-templates>

            </table>
        </body>

        </html>
    </xsl:template>
    <xsl:template match="nameOfRoom">
        <xsl:if test="@wifi = 'yes'">
            <tr>
                <td>
                    <xsl:value-of select="." />
                </td>

            </tr>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>