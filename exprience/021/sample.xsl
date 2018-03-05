<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <!-- <xsl:apply-templates select="bookstore"/> -->
    <HTML>
    <BODY>
    <xsl:apply-templates select="ecsite" />
    </BODY>
    </HTML>
  </xsl:template>

  <xsl:template match="ecsite">

    <xsl:for-each select="bookstore/book">
      <P><xsl:value-of select="position()"/>.<xsl:value-of select="title"/></P>
      <xsl:if test="current()=../book[last()]">
        最後です
      </xsl:if>
    </xsl:for-each>
    
  </xsl:template>

</xsl:stylesheet>