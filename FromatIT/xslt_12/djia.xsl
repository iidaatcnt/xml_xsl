<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<xsl:output method="xml" encoding="Shift_JIS"/> 

<xsl:template match="/djia"> 
  <page>
    <xsl:apply-templates/>
  </page>
</xsl:template> 

<xsl:template match="company">
  <xsl:value-of select="current()"/>
  <xsl:value-of select="position()"/>:
  <xsl:if test="current()=../company[last()]">
最後です
  </xsl:if>
</xsl:template>
</xsl:stylesheet>