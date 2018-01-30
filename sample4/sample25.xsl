<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
table{border:solid 1pt black;}
th{background-color:silver;padding:5;}
td{border:solid 1pt black;padding:10;}
</style>
</head>
<body>
<div>���i��15�������ɂ��Ă͎Α̂ŕ\��</div>
<div><xsl:apply-templates select="�S��" /></div>
</body>
</html>
</xsl:template>
<xsl:template match="�S��">
<table>
	<tr><th>�ԍ�</th><th>�i��</th><th>���i</th></tr>
<xsl:for-each select="���i">
	<xsl:if test="���i[.$gt$ 150000]">
		<tr>
		<td><xsl:value-of select="�ԍ�" /></td>
		<td><xsl:value-of select="�i��" /></td>
		<td style="text-align:right"><xsl:value-of select="���i" /></td>
		</tr>
	</xsl:if>
	<xsl:if test="���i[.$lt$ 150000]">
		<tr>
		<td><xsl:value-of select="�ԍ�" /></td>
		<td><xsl:value-of select="�i��" /></td>
		<td style="text-align:right;font-style:italic"><xsl:value-of select="���i" /></td>
		</tr>
	</xsl:if>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
