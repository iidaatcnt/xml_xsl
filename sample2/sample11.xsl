<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" xml:lang="ja">
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
		<xsl:if test="@�\��[.='true']">
			<ol>
				<xsl:for-each select="����">
					<li><xsl:value-of /></li>
				</xsl:for-each>
			</ol>
		</xsl:if>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
