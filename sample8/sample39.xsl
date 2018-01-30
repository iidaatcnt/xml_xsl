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
</style>
<script type="text/vbscript">
<xsl:comment>
<![CDATA[
	option explicit
	dim source
	dim sortfield
	dim stylesheet
sub window_onload()
	set source=document.XMLDocument
	set stylesheet=document.XSLDocument
	
	'order-by�������܂ރe���v���[�g�ɃA�N�Z�X����B

	set sortfield=stylesheet.selectSingleNode("//@order-by")
end sub

'value�v���p�e�B���g���ă\�[�g�Ώۗv�f���w�肷��B
'�����Ȃ�v�f���̑O��+�i�v���X�j�A�~���Ȃ�-�i�}�C�i�X�j��t������B
'�v�f�̓��e�����l�̏ꍇ��number���g�p����B

sub kinngakuSort()
	select case button1.value
		case "���z�\�[�g"
			sortfield.value="-number(�������グ���z)"
			myTable.innerHTML=source.documentElement.transformNode(stylesheet)
			button1.value="���ɖ߂�"
		case "���ɖ߂�"
			sortfield.value="+number(���q�l�ԍ�)"
			myTable.innerHTML=source.documentElement.transformNode(stylesheet)
			button1.value="���z�\�[�g"
		case else
			exit sub
	end select
end sub

sub namaeSort()
	select case button2.value
		case "���O�\�[�g"
			sortfield.value="+����"
			myTable.innerHTML=source.documentElement.transformNode(stylesheet)
			button2.value="���ɖ߂�"
		case "���ɖ߂�"
			sortfield.value="+number(���q�l�ԍ�)"
			myTable.innerHTML=source.documentElement.transformNode(stylesheet)
			button2.value="���O�\�[�g"
		case else
			exit sub
	end select
end sub

]]>
</xsl:comment>
</script>

</head>
<body>
<button id="button1" onclick="kinngakuSort()">���z�\�[�g</button>
<button id="button2" onclick="namaeSort()">���O�\�[�g</button>
<table>
<tr>
	<td>
	<div id="myTable"><xsl:apply-templates select="�S��" /></div>
	</td>
</tr>
</table>
</body>
</html>
</xsl:template>

<xsl:template match="�S��">
<table>
<tr>
	<th>�ԍ�</th><th>����</th><th>�s���{��</th><th>�Z��</th>
	<th>�d�b</th><th>�����グ���z</th>
</tr>
	<xsl:for-each select="�ڋq���" order-by="dont-match-anything">
<tr>
	<td style="text-align:right"><xsl:value-of select="���q�l�ԍ�" /></td>
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
	<!--formatNumber�֐��ŁA���z���O����؂�̕\���ɂ���-->
	<xsl:eval>formatNumber(this.nodeTypedValue,"#,###")</xsl:eval>
</xsl:template>
</xsl:stylesheet>
