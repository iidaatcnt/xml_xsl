<?xml version="1.0" encoding="Shift_JIS"?>
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
	<xsl:apply-templates select="�c�ɑ�" />
</body>
</html>
</xsl:template>

<xsl:template match="�c�ɑ�">
<table border="1">
	<tr><th>�ǂ�</th><th>���O</th></tr>
	<xsl:for-each select="��ی���">
	<tr>
		<td><xsl:value-of select="���ю�/�ӂ肪��" /></td>
		<td><xsl:value-of select="���ю�/����" /></td>
	</tr>
	</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
