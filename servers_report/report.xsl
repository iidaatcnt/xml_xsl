<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl:apply-templates select="report"/>
  </xsl:template>

  <xsl:template match="report">
    <TABLE>
    <xsl:for-each select="server">
      <xsl:value-of select="hostname"/>
        <TR>
          <TH>HOST名</TH>
          <TD><xsl:value-of select="hostname"/></TD>
        </TR>
        <TR>
          <TH>OS</TH>
          <TD><xsl:value-of select="OS"/></TD>
        </TR>
        <TR>
          <TH>メモリ</TH>
          <TD><xsl:value-of select="mem"/></TD>
        </TR>
        <TR>
          <TH>ディスク容量</TH>
          <TD><xsl:value-of select="disk"/></TD>
        </TR>
    </xsl:for-each>
    </TABLE>
  </xsl:template>

</xsl:stylesheet>