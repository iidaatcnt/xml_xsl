<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<HTML lang="ja">
<HEAD>
<TITLE><xsl:value-of select="全体/題名" /></TITLE>
<style type="text/css">
th{padding:5;}
td{padding:5;}
</style>
</HEAD>
<BODY><xsl:apply-templates select="全体/本文" /></BODY>
</HTML>
</xsl:template>
<xsl:template match="全体/本文">
<xsl:element name="TABLE">
	<xsl:attribute name="BORDER">
		1
	</xsl:attribute>
	<xsl:element name="TR">
		<xsl:element name="TH">
			リンク
		</xsl:element>
		<xsl:element name="TH">
			URL
		</xsl:element>
	</xsl:element>

	<xsl:for-each select="リンク">
	<xsl:element name="TR">
		<xsl:element name="TD">
			<xsl:value-of select="リンク先" />
		</xsl:element>
		<xsl:element name="TD">
			<xsl:element name="A">
			<xsl:attribute name="HREF">
				<xsl:value-of select="リンク先/@url" />
			</xsl:attribute>
				<xsl:value-of select="リンク先/@url" />
			</xsl:element>
		</xsl:element>
	</xsl:element>
	</xsl:for-each>
</xsl:element>
</xsl:template>
</xsl:stylesheet>
