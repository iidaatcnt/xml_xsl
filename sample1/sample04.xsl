<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" xml:lang="ja">
<xsl:template match="/">
	<html lang="ja">
	<head><title><xsl:value-of select="�S��/�薼" /></title></head>
	<body><xsl:apply-templates select="�S��" /></body>
	</html>
	</xsl:template>
	<xsl:template match="�S��">
		<xsl:for-each select="�{��">
			<h2><xsl:value-of select="���o��" /></h2>
			<p><xsl:apply-templates select="�i��" /></p>
		</xsl:for-each>
	</xsl:template>
		<xsl:template match="�i��">
			<xsl:apply-templates />
		</xsl:template>
		<xsl:template match="����">
			<strong><xsl:apply-templates /></strong>
		</xsl:template>
		<xsl:template match="text()">
			<xsl:value-of />
		</xsl:template>
</xsl:stylesheet>
