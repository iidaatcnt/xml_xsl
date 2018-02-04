<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="全体/題名" /></title>
<style type="text/css">
.color1{color:gray;}
.color2{color:black;}
</style>
</head>
<body><xsl:apply-templates select="全体/本文" /></body>
</html>
</xsl:template>
<xsl:template match="全体/本文">
	<xsl:for-each select="リスト">
		<xsl:choose>
			<xsl:when test="@表示[.='true']">
			<ol class="color1">
				<xsl:for-each select="項目">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
			</xsl:when>
			<xsl:otherwise>
				<ol class="color2">
					<xsl:for-each select="項目">
						<li><xsl:value-of select="."/></li>
					</xsl:for-each>
				</ol>
		</xsl:otherwise>
		</xsl:choose>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
