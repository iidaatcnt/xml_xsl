<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
	<HTML lang="ja">
	<HEAD>
	<TITLE><xsl:value-of select="全体/題名" /></TITLE>
	</HEAD>
	<BODY><xsl:apply-templates select="全体/本文" /></BODY>
	</HTML>
</xsl:template>
<xsl:template match="全体/本文">
	<xsl:for-each select="段落">
		<p><xsl:apply-templates /></p>
	</xsl:for-each>
</xsl:template>
	<xsl:template match="段落/リスト">
		<OL>
			<xsl:for-each select="項目">
			<LI><xsl:value-of select="."/></LI>
			</xsl:for-each>
		</OL>
</xsl:template>
<xsl:template match="text()">
	<xsl:value-of select="."/>
</xsl:template>
</xsl:stylesheet>
