<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
	<head>
	<title>Sample48</title>
	<style>
	table{border:solid 1pt black;}
	th{border:solid 1pt gray;background-color:silver;padding:3;font-size:11pt;}
	td{border:solid 1pt gray;padding:3;font-size:11pt;}
	.hinichi{background-color:#333333;color:white;}
	</style>
	</head>
	<body>
		<xsl:apply-templates select="�c�Ɠ���" />
	</body>
</html>
</xsl:template>

<xsl:template match="�c�Ɠ���">
	<table>
	<xsl:for-each select="����">
	<tr>
		<th>�N����</th><td colspan="3" class="hinichi"><xsl:value-of select="�Ǘ����/�N����" /></td>
	</tr>
	<tr>
		<th>�S����</th><td colspan="3"><xsl:value-of select="�Ǘ����/�S����" /></td>
	</tr>
	<tr>
		<th>�{��</th><td style="width:150"><xsl:value-of select="���e/�{��" /></td>
	</tr>

	</xsl:for-each>
	</table>
</xsl:template>
</xsl:stylesheet>