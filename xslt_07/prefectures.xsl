<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="Shift_JIS"/> 

  <xsl:template match="/prefectures">
    <HTML>
    <BODY>
    <xsl:for-each select="prefecture">
      <xsl:call-template name="prefecture"/>
    </xsl:for-each>
    </BODY>
    </HTML>
  </xsl:template> 

  <xsl:template name="prefecture">
    <xsl:value-of select="name"/><br/>
  </xsl:template>

</xsl:stylesheet>