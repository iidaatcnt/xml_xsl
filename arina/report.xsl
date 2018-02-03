<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 

  <xsl:template match="/"> 
    <xsl:apply-templates/>
  </xsl:template> 

  <xsl:template match="servers"> 
    <html><xsl:apply-templates/></html>
  </xsl:template> 

  <xsl:template match="server" > 
    <p><xsl:value-of select="."/></p>
  </xsl:template>

</xsl:stylesheet>