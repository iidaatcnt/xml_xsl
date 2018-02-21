<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl:apply-templates select="docs"/>
  </xsl:template>
  
  <xsl:template match="docs">
  <xsl:for-each select="xsl_elem">
    <div>
      <xsl:value-of select="."/>
    </div>
  </xsl:for-each>
  </xsl:template>
  
</xsl:stylesheet>