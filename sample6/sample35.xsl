<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
strong{color:red}
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
	<xsl:value-of select="�^�C�g��/@�T�u�^�C�g��" />
	<h1><xsl:value-of select="�^�C�g��" /></h1>
	<img>
		<xsl:attribute name="src">
		<xsl:value-of select="�}" />
		</xsl:attribute>
	</img>
	<xsl:apply-templates />
</xsl:template>
<xsl:template match="�R�s�[">
	<h2><xsl:apply-templates /></h2>
</xsl:template>
<xsl:template match="����">
	<strong><xsl:value-of /></strong>
</xsl:template>
<xsl:template match="���[�h">
	<p><xsl:apply-templates /></p>
</xsl:template>

<xsl:template match="�S��/�ڍ�">
	<xsl:element name="div">
		<xsl:apply-templates />
	</xsl:element>
</xsl:template>
<xsl:template match="�S��/�ڍ�/�d�l">
<table>
	<tr>
		<th>���i</th>
		<td><xsl:value-of select="���i" />�~
		(��<xsl:value-of select="���i/@��" />)</td>
	</tr>
	<tr>
		<th>������</th>
		<td><xsl:value-of select="������" /></td>
	</tr>
	<tr>
		<th>�T�C�Y</th>
		<td><xsl:value-of select="�T�C�Y" /></td>
	</tr>
	<tr>
		<th>�y�[�W��</th>
		<td><xsl:value-of select="�y�[�W��" /></td>
	</tr>
	<tr>
		<th>����</th>
		<td><xsl:value-of select="����" /></td>
	</tr>
	<tr>
		<th>NO</th>
		<td><xsl:value-of select="NO" /></td>
	</tr>
	<tr>
		<th>���Ŕ��s</th>
		<td><xsl:value-of select="���Ŕ��s" /></td>
	</tr>
</table>
</xsl:template>
<xsl:template match="�S��/�ڍ�/�ڎ�">
	<h3>�ڎ�</h3>	
	<ol>
	<xsl:for-each select="����">
		<li><xsl:value-of /></li>
	</xsl:for-each>
	</ol>
</xsl:template>
<xsl:template match="�S��/�ڍ�/�����N">
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
<xsl:template match="text()">
	<xsl:value-of />
</xsl:template>	
</xsl:stylesheet>
