<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<html lang="ja">
<head>
<title>Sample49</title>
<style>
th{padding:3;background-color:silver}
td{padding:3;font-size:11pt;}
</style>
</head>
<body>
	<xsl:apply-templates select="田舎村" />
</body>
</html>
</xsl:template>

<xsl:template match="田舎村">
<table border="1">
	<tr><th>読み</th><th>名前</th></tr>
	<xsl:for-each select="被保険者">
	<tr>
		<td><xsl:value-of select="世帯主/ふりがな" /></td>
		<td><xsl:value-of select="世帯主/氏名" /></td>
	</tr>
	</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
