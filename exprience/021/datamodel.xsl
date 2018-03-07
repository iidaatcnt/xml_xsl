<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/" >
  <HTML><BODY>
     <xsl:apply-templates select="node()|@*"/>
  </BODY></HTML>
</xsl:template>

<xsl:template match="node()" >
  <xsl:value-of select="name(.)"/>：：：
  <xsl:value-of select="." /><BR/>
  <xsl:apply-templates  select="node()|@*"/>
</xsl:template>

</xsl:stylesheet>