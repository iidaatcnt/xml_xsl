<xsl:template match="section">
  <DIV>
    <H2><xsl:value-of select="title"/></H2>
    <xsl:apply-templates />
  </DIV>
</xsl:template>

<xsl:template match="section/section">
  <DIV>
    <H3><xsl:value-of select="title"/></H3>
    <xsl:apply-templates />
  </DIV>
</xsl:template>