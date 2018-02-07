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
    <xsl:number count="prefecture" format="I"/>
    <xsl:value-of select="name"/><br/>
  </xsl:template>

</xsl:stylesheet>