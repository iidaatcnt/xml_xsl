<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:template match="/">
    <HTML>
      <HEAD><TITLE><xsl:value-of select="customers/title" /></TITLE></HEAD>
      <BODY>
        <TABLE border="1">
          <xsl:for-each select="customers/customer">
            <!-- <xsl:sort select="pos" order="descending"/>
            <xsl:sort select="name"/> -->
            <TR>
              <TD><xsl:value-of select="name" /></TD>
              <TD><xsl:value-of select="pos" /></TD>
              <TD><xsl:value-of select="number" /></TD>
              <TD><xsl:value-of select="college" /></TD>
            </TR>
          </xsl:for-each>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>

</xsl:stylesheet>