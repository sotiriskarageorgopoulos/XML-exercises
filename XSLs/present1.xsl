<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <title>Present 1</title>
        </head>

        <body>
            <table border="5">
                <tr>
                    <th>Μάρκα Κατασκευής</th>
                    <th>Μοντέλο</th>
                    <th>Χρώμα</th>
                    <th>Μικρή Περιγραφή</th>
                </tr>
                <xsl:apply-templates select="cars/car/manufacturer_brand" />
            </table>
        </body>

        </html>
    </xsl:template>
    <xsl:template match="manufacturer_brand">
        <tr>
            <td>
                <xsl:value-of select="text()" />
            </td>
            <td>
                <xsl:value-of select="model" />
            </td>
            <td>
                <xsl:value-of select="extra_car_info/@color" />
            </td>
            <td>
                <xsl:value-of select="extra_car_info/@mini_model_description" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>