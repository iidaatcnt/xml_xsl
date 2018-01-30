<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" xml:lang="ja">
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
<p>���i��1000�~����10���~�������ΆC10���~���傫��20���~��菬�������i�܂ł��ʏ�̏��́C
����ȊO�͑����ŕ\������Ă��܂��D</p>
<xsl:apply-templates select="�S��" />
</body>
</html>
</xsl:template>
<xsl:template match="�S��">
<table>
	<tr><th>�ԍ�</th><th>�i��</th><th>���i</th></tr>
<xsl:for-each select="���i">
	<xsl:choose>
	<xsl:when test="���i[.$gt$ 1000 and .$lt$ 99999]">
		<tr>
		<td><xsl:value-of select="�ԍ�" /></td>
		<td><xsl:value-of select="�i��" /></td>
		<td style="text-align:right;font-style:italic"><xsl:value-of select="���i" /></td>
		</tr>
	</xsl:when>
	<xsl:when test="���i[.$gt$ 100000 and .$lt$ 200000]">
		<tr>
		<td><xsl:value-of select="�ԍ�" /></td>
		<td><xsl:value-of select="�i��" /></td>
		<td style="text-align:right"><xsl:value-of select="���i" /></td>
		</tr>
	</xsl:when>
	<xsl:otherwise>
		<tr>
		<td><xsl:value-of select="�ԍ�" /></td>
		<td><xsl:value-of select="�i��" /></td>
		<td style="text-align:right;font-weight:bold"><xsl:value-of select="���i" /></td>
		</tr>
	</xsl:otherwise>
	</xsl:choose>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
