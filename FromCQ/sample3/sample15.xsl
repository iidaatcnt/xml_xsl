<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:template match="/">
	<html lang="ja">
		<head>
		<title><xsl:value-of select="全体/題名" /></title>
		</head>
		<body><xsl:apply-templates select="全体/本文" /></body>
	</html>
	</xsl:template>

	<xsl:template match="全体/本文">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="イラスト">
		<img>
			<xsl:attribute name="src">
				<xsl:value-of select="."/>
			</xsl:attribute>
			<xsl:attribute name="alt">
				サンプル画像
			</xsl:attribute>
		</img>
	</xsl:template>

	<xsl:template match="text()">
		<div><xsl:value-of select="."/></div>
	</xsl:template>

</xsl:stylesheet>
