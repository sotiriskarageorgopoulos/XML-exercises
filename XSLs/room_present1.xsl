<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <title>Present Room 1</title>
        </head>

        <body>
            <table border="5">
                <tr>
                    <th>Όνομα Δωματίου</th>
                    <th>Αριθμός Μονών Κρεβατιών</th>
                    <th>Αριθμός Διπλών Κρεβατιών</th>
                    <th>Αριθμός Υπερδιπλών Κρεβατιών</th>
                    <th>Αριθμός καναπέδων - κρεβατιών</th>
                </tr>
                <xsl:apply-templates select="Hotel/Rooms/Room"/>
            </table>
        </body>

        </html>
    </xsl:template>

    <xsl:template match="Room">
        <tr>
            <td>
                <xsl:value-of select="nameOfRoom" />
                <xsl:if test="not(nameOfRoom)">0</xsl:if>
            </td>
            <td>
                <xsl:value-of select="typesOfBeds/single" />
                <xsl:if test="not(typesOfBeds/single)">0</xsl:if>
            </td>
            <td>
                <xsl:value-of select="typesOfBeds/twin" />
                <xsl:if test="not(typesOfBeds/twin)">0</xsl:if>
            </td>
            <td>
                <xsl:value-of select="typesOfBeds/twinXL" />
                <xsl:if test="not(typesOfBeds/twinXL)">0</xsl:if>
            </td>
            <td>
                <xsl:value-of select="typesOfBeds/couch" />
                <xsl:if test="not(typesOfBeds/couch)">0</xsl:if>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>