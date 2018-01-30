<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
th{padding:5;}
td{padding:5;}
</style>
</head>
<body><xsl:apply-templates select="�S��/�{��" /></body>
</html>
</xsl:template>
<xsl:template match="�S��/�{��">
<xsl:element name="table">
	<xsl:attribute name="border">
		1
	</xsl:attribute>
	<xsl:element name="tr">
		<xsl:element name="th">
			�����N
		</xsl:element>
		<xsl:element name="th">
			URL
		</xsl:element>
	</xsl:element>

	<xsl:for-each select="�����N">
	<xsl:element name="tr">
		<xsl:element name="td">
			<xsl:value-of select="�����N��" />
		</xsl:element>
		<xsl:element name="td">
			<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="�����N��/@url" />
			</xsl:attribute>
				<xsl:value-of select="�����N��/@url" />
			</xsl:element>
		</xsl:element>
	</xsl:element>
	</xsl:for-each>
</xsl:element>
</xsl:template>
</xsl:stylesheet>
