<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
.color1{color:gray;}
.color2{color:black;}
</style>
</head>
<body><xsl:apply-templates select="�S��/�{��" /></body>
</html>
</xsl:template>
<xsl:template match="�S��/�{��">
	<xsl:for-each select="���X�g">
		<xsl:choose>
			<xsl:when test="@�\��[.='true']">
			<ol class="color1">
				<xsl:for-each select="����">
					<li><xsl:value-of /></li>
				</xsl:for-each>
			</ol>
			</xsl:when>
			<xsl:otherwise>
				<ol class="color2">
					<xsl:for-each select="����">
						<li><xsl:value-of /></li>
					</xsl:for-each>
				</ol>
		</xsl:otherwise>
		</xsl:choose>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
