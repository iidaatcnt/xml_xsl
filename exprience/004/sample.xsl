<?xml version="1.0" encoding="UTF-8"?>
<!-- 全角スペース入り -->
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
　　<xsl:apply-templates/>　　
  </xsl:template>
  <xsl:template match="article">
    <h1>
　　<xsl:value-of select="title"/>　　
    </h1>
    <p>
　　<xsl:value-of select="paragraph"/>　　
    </p>
  </xsl:template>
</xsl:stylesheet>