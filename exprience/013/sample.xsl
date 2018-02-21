<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/bookstore">
    <xsl:for-each select="book">
      <xsl:sort select="title"/>
      <div>
        <xsl:number value="position()" format="10"/>
        .<xsl:value-of select="title"/>
      </div>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>