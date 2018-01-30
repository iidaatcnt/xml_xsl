<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
</head>
<body><xsl:apply-templates select="�S��/�{��" /></body>
</html>
</xsl:template>
<xsl:template match="�S��/�{��">
	<xsl:apply-templates />
</xsl:template>
<xsl:template match="�Q��">
	<xsl:element name="a">
		<xsl:attribute name="href">
			<xsl:value-of select="@url" />
		</xsl:attribute>
			<xsl:value-of />
	</xsl:element>
</xsl:template>
<xsl:template match="text()">
	<xsl:value-of />
</xsl:template>
</xsl:stylesheet>
