<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<xsl:output method="html" encoding="UTF-8"/> 

<xsl:template match="/"> 
  <html>
    <body>
      <h1>薬品</h1>
      <xsl:for-each select="//drug">
        <xsl:call-template name="drug"/>
      </xsl:for-each>
      <h2>製薬会社</h2>
      <xsl:apply-templates select="//company"/>
    </body>
  </html>
</xsl:template> 

<xsl:template name="drug">
  <a href="#{generate-id(../../name)}">
    <xsl:value-of select="current()"/>
  </a><br/>
</xsl:template> 

<xsl:template match="company">
  <a href="{generate-id(name)}">
    <xsl:value-of select="name"/>
  </a><br/>
</xsl:template>
</xsl:stylesheet>