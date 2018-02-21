<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:template match="/">
		<HTML lang="ja">
		<HEAD><TITLE><xsl:value-of select="全体/題名" /></TITLE></HEAD>
		<BODY><xsl:apply-templates select="全体" /></BODY>
		</HTML>
	</xsl:template>
	
	<xsl:template match="全体">
		<xsl:for-each select="本文">
			<H2><xsl:value-of select="見出し" /></H2>
			<P><xsl:apply-templates select="段落" /></P>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="段落">
			<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="強調">
		<STRONG><xsl:apply-templates /></STRONG>
	</xsl:template>

	<xsl:template match="text()">
		<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
