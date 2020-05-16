<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
 
        <head>
            <title>Present 2</title>
        </head>
 
        <body>
            <table border="5">
                <tr>
                    <th>Μάρκα Κατασκευής</th>  
                </tr>
                <xsl:apply-templates select="/cars/car/manufacturer_brand" >
                   <xsl:sort order ="ascending" select = "text()"/>
                </xsl:apply-templates>
            </table>
        </body>
 
        </html>
    </xsl:template>
    <xsl:template match="manufacturer_brand">
        <tr>
            <td>
                <xsl:value-of select="text()" />
            </td> 
        </tr>
    </xsl:template>
</xsl:stylesheet>