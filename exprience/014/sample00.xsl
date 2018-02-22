<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <body>
      <h1>en=<xsl:value-of select="count(//p[lang('en')])" /></h1>
      <h1>ja=<xsl:value-of select="count(//p[lang('ja')])" /></h1>
      <!-- <xsl:value-of select="count(//p[lang('en-GB')])" />  -->
      <!-- <xsl:value-of select="count(//p[lang('en-US')])" /> -->
      <!-- <xsl:value-of select="count(//p[lang('de')])" /> -->
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>