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
<xsl:template match="�C���X�g">
	<img>
		<xsl:attribute name="src">
			<xsl:value-of />
		</xsl:attribute>
		<xsl:attribute name="alt">
			�T���v���摜
		</xsl:attribute>
	</img>
</xsl:template>
<xsl:template match="text()">
	<div><xsl:value-of /></div>
</xsl:template>
</xsl:stylesheet>
