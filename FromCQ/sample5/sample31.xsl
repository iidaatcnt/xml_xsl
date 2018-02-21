<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<HTML lang="ja">
<HEAD>
<TITLE><xsl:value-of select="全体/題名" /></TITLE>
</HEAD>
<BODY><xsl:apply-templates select="全体/図" /></BODY>
</HTML>
</xsl:template>
<xsl:template match="全体/図">
	<xsl:for-each select="リンク">
	<xsl:element name="a"><xsl:attribute name="href">
		<xsl:value-of select="リンク先/@url" />
	</xsl:attribute>
		<xsl:element name="img">
			<xsl:attribute name="src">
				<xsl:value-of select="リンク先" />
			</xsl:attribute>
		</xsl:element></xsl:element>
	<HR />
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
