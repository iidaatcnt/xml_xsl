<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
	<html lang="ja">
	<head>
	<title><xsl:value-of select="�S��/�薼" /></title>
	</head>
	<body>
	<!-- <xsl:apply-templates select="�S��" /> -->
        <TABLE border="1">
          <xsl:for-each select="�S��/�{��">
            <TR>
              <TD><xsl:value-of select="���o��" /></TD>
              <TD><xsl:value-of select="�i��" /></TD>
            </TR>
          </xsl:for-each>
        </TABLE>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet>
