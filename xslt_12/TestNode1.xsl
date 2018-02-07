<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="Shift_JIS"/> 

<xsl:template match="/address"> 
  <page>
    <xsl:apply-templates/>
  </page>
</xsl:template> 

<xsl:template match="*">
  <xsl:value-of select="name()"/>:
  <xsl:value-of select="current()"/> 
</xsl:template> 

</xsl:stylesheet>