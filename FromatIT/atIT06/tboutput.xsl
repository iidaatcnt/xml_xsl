<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
<xsl:template match="/">
  <html>
    <body>
      <xsl:apply-templates/>
    </body>
  </html>
</xsl:template>
<xsl:template match="customers_list">
  <xsl:apply-templates select="title"/>
  <xsl:apply-templates select="tbl"/>
</xsl:template>
<xsl:template match="title">
  <h3><xsl:value-of select="."/></h3>
</xsl:template>
<xsl:template match="tbl">
  <table border="3">
    <tr>
      <th>お名前</th>
      <th>ご住所</th>
    </tr>
    <xsl:variable name="t" select="document(@href)"/>
    <xsl:for-each select="$t//customer">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="addr"/></td>
      </tr>
    </xsl:for-each>
  </table>
</xsl:template>
</xsl:stylesheet>