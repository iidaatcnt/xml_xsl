<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title>Sample46</title>
<style type="text/css">
.frame1{position:absolute;font-size:11pt;border-width:thick;border-color:gray;border-style:double;height:100;width:360;overflow:auto;padding:3;margin-top:20;}
.frame2{position:absolute;font-size:11pt;border-width:thick;border-color:gray;border-style:double;height:100;width:360;overflow:auto;padding:3;margin-top:120;}
.frame3{position:absolute;font-size:13pt;border-width:thick;border-color:gray;border-style:double;height:100;width:470;overflow:auto;padding:3;margin-left:390;margin-top:20;}
</style>

<script type="text/vbscript">
<xsl:comment>
<![CDATA[
option explicit
dim xmldoc,i,allNo
dim headerNode,midashi
dim headerName
sub window_onload()
	'XML DOM�I�u�W�F�N�g���g����悤�ɂ���D(����) 
	set xmldoc=createObject("Microsoft.XMLDom")
	xmldoc.async=false
	xmldoc.load("sample46.xml")
	
	'�u�匩�o���v�̓��e�ɃA�N�Z�X����D
	set headerNode=xmldoc.getElementsByTagName("�匩�o��")

	'�u�匩�o���v������΁C���̓��e��ϐ�midashi�Ɋi�[����D
	if headerNode.length>0 then
		for i=0 to headerNode.length-1
			midashi=midashi & "<div style='cursor:hand' id='headerID" & i & "'" & " onclick='headerGo(" & i & ")'>" & headerNode(i).text & "</div>"
		next
	else
		exit sub
	end if
			'�匩�o����\������D
			headerMenu.innerHTML=midashi
end sub

sub headerGo(allNo)
	'�匩�o�����N���b�N�����Ƃ��̔w�i�F�̐ݒ�D
	for i=0 to headerNode.length-1
		document.all("headerID" & i).style.backgroundColor="white"
	next
		document.all("headerID" & allNo).style.backgroundColor="silver"

		'�N���b�N�����匩�o����ϐ�headerName�Ɋi�[����D
		headerName=document.all("headerID" & allNo).innerText
		call headerSearch(headerName)
end sub

sub headerSearch(headerName)
	dim patternstring,honnbunnString
	dim selNode,komidashi,honnbunnNode,honnbunnNaiyou
	header2Menu.innerHTML=""
	honnbunn.innerHTML=""

	'�匩�o�����i�[�����ϐ�headerName�������L�[�Ƃ��āC���ꂼ��̗v�f�̓��e�����o���D
	honnbunnString="�}�j���A��/���e/��[�匩�o��='" & headerName & "'" & "]/�{��"
	set honnbunnNode=xmldoc.selectNodes(honnbunnString)

	patternstring="�}�j���A��/���e/��[�匩�o��='" & headerName & "'" & "]/�����o��"
	set selNode=xmldoc.selectNodes(patternstring)

	if honnbunnNode.length>0 then 
		honnbunnNaiyou=honnbunnNode(0).text
	else
		exit sub
	end if

	'�����o�����Ȃ��ꍇ�̓��b�Z�[�W��\��������D
	if selNode.length>0 then 
			komidashi=selNode(0).text
	else
			komidashi="<b style='color:red'>" & "���̏͂ɂ͏����o������܂���D" & "</b>"
	end if
	
		honnbunn.innerHTML=honnbunnNaiyou
		header2Menu.innerHTML=komidashi
end sub

]]>
</xsl:comment>
</script>
</head>
<body>
<b style="position:absolute">���匩�o�����\������Ă��܂��D�N���b�N���ĉ������D</b>
<div class="frame1" id="headerMenu"></div>
<div class="frame2" id="header2Menu">�����o���\������܂��D</div>
<div class="frame3" id="honnbunn">�{���̓��e���\������܂��D</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
