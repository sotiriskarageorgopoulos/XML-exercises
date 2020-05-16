<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <title>Present 3</title>
        </head>

        <body>
            <table border="5">
                <tr>
                    <th>Μάρκα Κατασκευής</th>
                    <th>Μοντέλο</th>
                    <th>Μηνιαίο Μίσθωμα</th>
                </tr>
                <xsl:for-each select="/cars/car">
                    <xsl:sort select="economic_info_leasing/monthly_leasing[@without_tax = 'true']" data-type="number" order="descending"/>
                    <xsl:for-each select="manufacturer_brand">
                        <tr>
                            <td>
                                <xsl:value-of select="text()" />
                            </td>
                            <td>
                                <xsl:value-of select="model" />
                            </td>
                            <td>
                                <xsl:value-of
                                    select="../economic_info_leasing/monthly_leasing[@without_tax = 'true']" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </table>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>