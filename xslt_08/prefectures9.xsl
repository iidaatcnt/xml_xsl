<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="prefectures10.xsl"/>
  <xsl:output method="html" encoding="Shift_JIS"/> 

  <xsl:template match="/prefectures">
    <HTML>
      <BODY>
        <xsl:apply-templates select="prefecture"/>
      </BODY>
    </HTML>
  </xsl:template> 

</xsl:stylesheet>