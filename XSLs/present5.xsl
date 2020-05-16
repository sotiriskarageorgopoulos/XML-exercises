<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <title>Present 5</title>
        </head>

        <body>
            <table border="5">
                <tr>
                    <th>Εκπομπές CO2 </th>
                </tr>
                <xsl:apply-templates select="/cars/car/main_characteristics"/>
            </table>
        </body>

        </html>
    </xsl:template>
    <xsl:template match="main_characteristics">
        <xsl:if test="CO2_emissions &gt; 110">
            <tr>
                <td>
                    <xsl:value-of select="../manufacturer_brand/text()" />
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>