<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="全体/題名" /></title>
</head>
<body><xsl:apply-templates select="全体/図" /></body>
</html>
</xsl:template>
<xsl:template match="全体/図">
	<xsl:for-each select="イラスト">
	<img>
		<xsl:attribute name="src">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</img>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
