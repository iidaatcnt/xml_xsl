<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
</head>
<body><xsl:apply-templates select="�S��" /></body>
</html>
</xsl:template>
<xsl:template match="�S��">
	<xsl:for-each select="�}">	
	<xsl:choose>
	<xsl:when test="�}��[.=1]">
		<h3>No.<xsl:value-of select="�}��" />�̃C���X�g</h3>
		<img>
		<xsl:attribute name="src">
			<xsl:value-of select="�C���X�g" />
		</xsl:attribute>
		</img>
		<hr />
	</xsl:when>	
	<xsl:otherwise>
		<h3>No.<xsl:value-of select="�}��" />�̃C���X�g�͏������ł��D</h3>
		<hr />
	</xsl:otherwise>
	</xsl:choose>	
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
