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
<xsl:element name="ol">
	<xsl:for-each select="�����N">
		<xsl:element name="a">
		<xsl:attribute name="href">
			<xsl:value-of select="�����N��/@url" />
		</xsl:attribute>
		<li><xsl:value-of select="�����N��" /></li>
		</xsl:element>
	</xsl:for-each>
</xsl:element>
</xsl:template>
</xsl:stylesheet>