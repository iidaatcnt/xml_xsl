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
	<xsl:for-each select="���X�g">
		<ol>
			<xsl:for-each select="����">
				<li><xsl:value-of /></li>
			</xsl:for-each>
		</ol>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
