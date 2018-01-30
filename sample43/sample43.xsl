<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title>Sample43</title>
<style type="text/css">
table{border:solid 1pt black;}
th{border:solid 1pt gray;}
td{border:solid 1pt gray;font-family:"�l�r �o����",serif;
font-size:18pt;font-weight:bold;}
</style>
</head>

<script type="text/vbscript">
<xsl:comment>
<![CDATA[
option explicit
	dim xmldoc,selnode,i
	dim namae,no,patternstring
	dim nagasa,searchname

sub window_onload()
	'DOM �I�u�W�F�N�g���g����悤�ɂ���(���񑩁j�D
	set xmldoc=createObject("Microsoft.XMLDom")
	'�����������邩�ǂ�����ݒ肷��D�f�t�H���g��true
	xmldoc.async=false
	'XML�t�@�C����ǂݍ��ށD
	xmldoc.load("sample43.xml")
	'�ǂݍ���XML�����́u�����v�v�f�ɃA�N�Z�X����D
	set selnode=xmldoc.getElementsByTagName("����")
	nagasa=selnode.length-1
	'�v�f�u�����v�̓��e���A���̌������o���C�ϐ�namae�Ƀ^�O�t���̂܂܊i�[����D
	if selnode.length>0 then
		for i=0 to nagasa
			namae=namae & "<div id='xmlname" & i & "'" & "style='padding:10;border-width:4;border-color:blue;border-style:inset;width:300;cursor:hand' onclick='search(" & i & ")'>" & selnode(i).text & "</div>"
		next
	else
		exit sub
	end if
			'������\������D
			personal_namae.innerHTML=namae
end sub

'�I�����ꂽ�����ɏ]���āC�֘A������e�𒊏o�\������T�u���[�`���D
sub search(no)
'�I�����ꂽ�����̔w�i�F��ς��鏈���D
	for i=0 to nagasa
		document.all("xmlname" & i).style.backgroundcolor="white"
	next
	document.all("xmlname" & no).style.backgroundcolor="aquamarine"

	hyou.style.visibility="visible"

	searchname=document.all("xmlname" & no).innerText

	'�I�����ꂽ������ϐ�searchname�Ɋi�[���Csearchname�Ɉ�v���邻�ꂼ��̓��e��\������D

	patternstring="�c�ɑ���ی���/��ی��ҏ؏��/���ю�[����='" & searchname & "'" & "]/�ӂ肪��"
	set selnode=xmldoc.selectNodes(patternstring)
	yomi.innerHTML=selnode(0).text

	patternstring="�c�ɑ���ی���/��ی��ҏ؏��/���ю�[����='" & searchname & "'" & "]/����"
	set selnode=xmldoc.selectNodes(patternstring)
	sex.innerHTML=selnode(0).text

	patternstring="�c�ɑ���ی���/��ی��ҏ؏��/���ю�[����='" & searchname & "'" & "]/�Z��"
	set selnode=xmldoc.selectNodes(patternstring)
	address.innerHTML=selnode(0).text

	patternstring="�c�ɑ���ی���/��ی��ҏ؏��/���ю�[����='" & searchname & "'" & "]/�摜"
	set selnode=xmldoc.selectNodes(patternstring)
	image1.src=selnode(0).text

	patternstring="�c�ɑ���ی���/��ی��ҏ؏��[���ю�/����='" & searchname & "'" & "]/�؏�/�L������"
	set selnode=xmldoc.selectNodes(patternstring)
	kigenn.innerHTML=selnode(0).text

	patternstring="�c�ɑ���ی���/��ی��ҏ؏��[���ю�/����='" & searchname & "'" & "]/�؏�/�L���ԍ�"
	set selnode=xmldoc.selectNodes(patternstring)
	banngou.innerHTML=selnode(0).text
end sub
]]>
</xsl:comment>
</script>
<body>
<div style="margin-left:10;margin-top:100;font-family:�l�r �o�S�V�b�N;font-size:32pt;margin-top:30" id="personal_namae"></div>

<div id="hyou" style="position:absolute;visibility:hidden;margin-left:330;margin-top:-350">
<table>
<tr>
	<td>
	<xsl:apply-templates select="�c�ɑ���ی���" />
	</td>
</tr>
</table>
<img style="margin-left:100;margin-top:20" id="image1"></img>
</div>

</body>
</html>
</xsl:template>

<xsl:template match="�c�ɑ���ی���">
<table>
	<tr>
	<td style="background-color:silver" rowspan="3">���ю�</td>
	<td style="background-color:snow"><span id="change">�ӂ肪��</span></td>
	<td><span id="yomi"></span></td>
	</tr>
	<tr>
	<td style="background-color:snow">����</td>
	<td><span id="sex"></span></td>
	</tr>		
	<tr>
	<td style="background-color:snow">�Z��</td>
	<td><span id="address"></span></td>
	</tr>
	<tr>
	<td style="background-color:silver" rowspan="2">�؏�</td>
	<td style="background-color:snow">�L������</td>
	<td><span id="kigenn"></span></td>
	</tr>
	<tr><td style="background-color:snow">�L���ԍ�</td>
	<td><span id="banngou"></span></td>
	</tr>
</table>
</xsl:template>
</xsl:stylesheet>
