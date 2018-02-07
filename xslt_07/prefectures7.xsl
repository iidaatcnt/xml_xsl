<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="Shift_JIS"/> 

  <xsl:template match="/prefectures">
    <HTML>
      <BODY>
        <xsl:apply-templates select="prefecture"/>
      </BODY>
    </HTML>
  </xsl:template>

  <xsl:template match="prefecture">
地方名: 
  <xsl:choose>
    <xsl:when test="@id=1">北海道</xsl:when>
    <xsl:when test="@id&lt;8">東北</xsl:when>
    <xsl:when test="@id&lt;15">関東</xsl:when>
    <xsl:when test="@id&lt;19">北陸</xsl:when>
    <xsl:when test="@id&lt;24">中部</xsl:when>
    <xsl:when test="@id&lt;31">近畿</xsl:when>
    <xsl:when test="@id&lt;36">中国</xsl:when>
    <xsl:when test="@id&lt;40">四国</xsl:when>
    <xsl:otherwise>九州</xsl:otherwise>
  </xsl:choose>
  <xsl:text> 都道府県名:</xsl:text>
  <xsl:value-of select="name"/> 
  <br/>
  </xsl:template>

</xsl:stylesheet>