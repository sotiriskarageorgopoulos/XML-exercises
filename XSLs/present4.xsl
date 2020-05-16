<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <cars_to_rent>
            <xsl:apply-templates select="/cars/car/manufacturer_brand" />
        </cars_to_rent>
    </xsl:template>
    <xsl:template match="manufacturer_brand">
        <car>
            <xsl:element name="brand">
                <xsl:value-of select="text()" />
            </xsl:element>
            <xsl:element name="model">
                <xsl:value-of select="model" />
            </xsl:element>
            <xsl:for-each select="../equipment/basic_equipment/equip">
                <xsl:element name="equipment">
                    <xsl:value-of select="." />
                </xsl:element>
            </xsl:for-each>
        </car>
    </xsl:template>
</xsl:stylesheet>