<?xml version="1.0" encoding="shift_jis" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
  <xsl:output method="xml" encoding="shift_jis"/>
    <xsl:template match="/">
      <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="customer">
      <顧客>
        <xsl:apply-templates/>
      </顧客>
    </xsl:template>
    <xsl:template match="name">
      <氏名>
      <xsl:value-of select="."/>
    </氏名>
  </xsl:template>
</xsl:stylesheet>