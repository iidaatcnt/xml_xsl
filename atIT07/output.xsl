<?xml version="1.0" encoding="shift_jis" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
  <xsl:output method="xml" encoding="shift_jis"/>
    <xsl:template match="/">
      <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="customer">
      <�ڋq>
        <xsl:apply-templates/>
      </�ڋq>
    </xsl:template>
    <xsl:template match="name">
      <����>
      <xsl:value-of select="."/>
    </����>
  </xsl:template>
</xsl:stylesheet>