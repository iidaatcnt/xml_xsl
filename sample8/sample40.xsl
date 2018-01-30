<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
table{border:solid 1pt black;}
th{border:solid 1pt gray;padding:2;}
td{border:solid 1pt gray;padding:2;}
.style1{font-family:"�l�r �o�S�V�b�N",sans-serif;
font-size:24pt;border-width:thick;border-style:double;
width:300;margin-left:285;text-align:right;padding:5;}
</style>
<script type="text/vbscript">
<xsl:comment>
<![CDATA[
	option explicit
	dim source
	dim stylesheet
	dim sumNode
	dim goukeiKinngaku,i
sub window_onload()
	set source=document.XMLDocument
	set stylesheet=document.XSLDocument
	goukeiKinngaku=0
	set sumNode=source.getElementsByTagName("�������グ���z")
	if sumNode.length>0 then
		for i=0 to sumNode.length-1
			'�u�������グ���z�v�����Z����B
			goukeiKinngaku=goukeiKinngaku+eval(sumNode(i).text)
		next
	else
		exit sub
	end if
			'���v���z��formatNumber�֐��ŎO����؂�ɕ\������B
			goukei.innerHTML="���v=" & formatNumber(goukeiKinngaku,0)
end sub

]]>
</xsl:comment>
</script>

</head>
<body>
<table>
<tr>
	<td>
	<div><xsl:apply-templates select="�S��" /></div>
	</td>
</tr>
</table>
<div class="style1" id="goukei"></div>
</body>
</html>
</xsl:template>

<xsl:template match="�S��">
<table>
	<tr>
	<th>�ԍ�</th><th>����</th><th>�s���{��</th>
	<th>�Z��</th><th>�d�b</th><th>�����グ���z</th>
	</tr>
<xsl:for-each select="�ڋq���" order-by="dont-match-anything">
	<tr>
	<td style="text-align:right">
		<xsl:value-of select="���q�l�ԍ�" /></td>
	<td><xsl:value-of select="����" /></td>
	<td><xsl:value-of select="�Z��/@�s���{��" /></td>
	<td><xsl:value-of select="�Z��" /></td>
	<td><xsl:value-of select="�d�b" /></td>
	<td style="text-align:right">
		<xsl:apply-templates select="�������グ���z" /></td>
	</tr>
</xsl:for-each>
</table>
</xsl:template>
<xsl:template match="�������グ���z">
	<xsl:eval>formatNumber(this.nodeTypedValue,"#,###")</xsl:eval>
</xsl:template>
</xsl:stylesheet>
