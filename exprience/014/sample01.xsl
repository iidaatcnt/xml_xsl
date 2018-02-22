<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/応答メッセージ">
    <html>
    <body>
    <OL>
      <LI><xsl:value-of select="朝の挨拶/メッセージ[lang('en')]" /></LI>
      <LI><xsl:value-of select="昼の挨拶/メッセージ[lang('en')]" /></LI>
      <LI><xsl:value-of select="夜の挨拶/メッセージ[lang('en')]" /></LI>
    </OL>
    <OL>
      <LI><xsl:value-of select="朝の挨拶/メッセージ[lang('ja')]" /></LI>
      <LI><xsl:value-of select="昼の挨拶/メッセージ[lang('ja')]" /></LI>
      <LI><xsl:value-of select="夜の挨拶/メッセージ[lang('ja')]" /></LI>
    </OL>
    </body>
    </html>
  </xsl:template>

</xsl:stylesheet>