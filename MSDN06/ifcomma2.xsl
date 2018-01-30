<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="namelist/name">
  <xsl:if test="position()!=1">, </xsl:if>
  <xsl:apply-templates/>
</xsl:template>

</xsl:stylesheet>