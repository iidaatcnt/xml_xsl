<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<HTML lang="ja">
<HEAD>
<TITLE><xsl:value-of select="全体/題名" /></TITLE>
</HEAD>
<BODY><xsl:apply-templates select="全体/本文" /></BODY>
</HTML>
</xsl:template>
<xsl:template match="全体/本文">
	<xsl:for-each select="リンク">
		<xsl:element name="A">
		<xsl:attribute name="HREF">
			<xsl:value-of select="リンク先/@url" />
		</xsl:attribute>
			<xsl:value-of select="リンク先" /><BR />
		</xsl:element>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
