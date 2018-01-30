<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
span{color:dimgray}
table{border:solid 1pt black;}
th{border:solid 1pt gray;padding:2;}
td{border:solid 1pt gray;padding:2;}
</style>
</head>
<body>
<xsl:apply-templates select="�S��/�T�v" />
<xsl:apply-templates select="�S��/�ڍ�" />
</body>
</html>
</xsl:template>
<xsl:template match="�S��/�T�v">
	<div>
		<h1>
		<span><xsl:value-of select="�^�C�g��/@�N�x" /></span>
		<xsl:value-of select="�^�C�g��" />
		</h1>
	</div>
	<div>
		<h2><xsl:value-of select="�R�s�[" /></h2>
		<p><xsl:value-of select="���[�h" /></p>
	</div>
	<div>
		<xsl:element name="img">
			<xsl:attribute name="src">
				<xsl:value-of select="�}" />
			</xsl:attribute>
		</xsl:element>
	</div>
</xsl:template>
<xsl:template match="�S��/�ڍ�">
	<div><xsl:apply-templates select="�V��" /></div>
	<div><xsl:apply-templates select="�o����" /></div>
	<div><xsl:apply-templates select="�����N" /></div>
</xsl:template>
<xsl:template match="�V��">
	<h3><xsl:value-of select="�����o��" /></h3>
	<table>
		<xsl:for-each select="�̗p����">
		<tr>
		<th><xsl:value-of select="����" /></th>
		<td><xsl:value-of select="�E�v" /></td>
		</tr>
		</xsl:for-each>
	</table>
</xsl:template>
<xsl:template match="�o����">
	<h3><xsl:value-of select="�����o��" /></h3>
	<ul>
		<xsl:for-each select="����">
		<li><xsl:value-of /></li>
		</xsl:for-each>
	</ul>
</xsl:template>
<xsl:template match="�����N">
	<h3><xsl:value-of select="�����o��" /></h3>
	<xsl:for-each select="�����N��">
		<div>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="@url" />
			</xsl:attribute>
				<xsl:value-of />
		</xsl:element>
		</div>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
