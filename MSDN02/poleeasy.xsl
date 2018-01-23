<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
      
<xsl:template match="section">
  <DIV>
    <H2><xsl:value-of select="title"/></H2>
    <xsl:apply-templates />
  </DIV>
</xsl:template>

<xsl:template match="section/section">
  <DIV>
    <H3><xsl:value-of select="title"/></H3>
    <xsl:apply-templates />
  </DIV>
</xsl:template>