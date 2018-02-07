<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="Shift_JIS"/> 

  <xsl:template match="/prefectures">
    <HTML>
    <BODY>
    人口密度が高い都道府県<br/>
    <xsl:apply-templates select="prefecture"/>
    </BODY>
    </HTML>
  </xsl:template> 

  <xsl:template match="prefecture">

    <xsl:if test="population div area&gt;1000">
      <xsl:value-of select="name"/> 
      <br/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>