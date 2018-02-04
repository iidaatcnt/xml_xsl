<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:template match="/">
  	<html lang="ja">
  	  <head>
  	  <title><xsl:value-of select="全体/題名" /></title>
  	  </head>
  	  <body>
        <xsl:for-each select="全体/本文">
          <H1><xsl:value-of select="見出し" /></H1>
          <P><xsl:value-of select="段落" /></P>
        </xsl:for-each>
  	  </body>
  	</html>
  </xsl:template>
</xsl:stylesheet>
