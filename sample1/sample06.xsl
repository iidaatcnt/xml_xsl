<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
</head>
<body>
<xsl:apply-templates select="�S��" />
</body>
</html>
</xsl:template>
<xsl:template match="�S��">
<xsl:for-each select="�{��">
	<xsl:choose>
		<xsl:when test="���o��[@�F='silver']">
		<h2 style="color:silver"><xsl:value-of select="���o��" /></h2>
		</xsl:when>
		<xsl:when test="���o��[@�F='gray']">
		<h2 style="color:dimgray"><xsl:value-of select="���o��" /></h2>
		</xsl:when>
		<xsl:otherwise>
		<h2 style="color:black"><xsl:value-of select="���o��" /></h2>
		</xsl:otherwise>
	</xsl:choose>
	<p><xsl:value-of select="�i��" /></p>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
