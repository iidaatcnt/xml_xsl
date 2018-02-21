<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="Shift_JIS"/> 

  <xsl:variable name="number_of_prefectures" select="count(//prefecture)"/> 

  <xsl:template match="/prefectures">
    <HTML>
    <BODY>
    <xsl:value-of select="$number_of_prefectures"/>
    </BODY>
    </HTML>
  </xsl:template>

</xsl:stylesheet>