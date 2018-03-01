<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <!-- <xsl:apply-templates select="bookstore"/> -->
    <xsl:apply-templates />
  </xsl:template>

  <xsl:template match="ecsite/bookstore">

    <!-- No.1 -->
    <!-- <xsl:for-each select="book">
    <p>
      <xsl:value-of select="title"/>
    </p>
    </xsl:for-each> -->
    
    <!-- No.2 -->
    <!-- <xsl:value-of select="book[2]/title"/><BR/> -->
    <xsl:value-of select="book/title"/><BR/>

    <!-- No.3 -->
    <!-- <xsl:value-of select="book/price[text()]"/> -->

    <!-- No.4 -->
    <!-- <xsl:value-of select="book[price>10]/price"/> -->

    <!-- No.5 -->
    <!-- <xsl:value-of select="book[price>35]/title"/> -->

  </xsl:template>

</xsl:stylesheet>