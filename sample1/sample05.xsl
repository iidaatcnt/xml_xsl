<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" xml:lang="ja">
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
.midashi{width:200;background-color:silver;}
</style>
</head>
<body><xsl:apply-templates select="�S��" /></body>
</html>
</xsl:template>
<xsl:template match="�S��">
	<xsl:for-each select="�{��">
		<xsl:if test="���o��[.='']">
			<h2 class="midashi">���o�����ݒ�</h2>
		</xsl:if>
		<xsl:if test="���o��[not(.='')]">
			<h2><xsl:value-of select="���o��" /></h2>
		</xsl:if>
		<p><xsl:value-of select="�i��" /></p>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
