<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title>Sample44</title>
<style type="text/css">
td{font-family:"�l�r �o����",serif;font-size:12pt;}
button{font-family:"�l�r �o�S�V�b�N",sans-serif;font-size:10pt;}
</style>
</head>

<script type="text/vbscript">
<xsl:comment>
<![CDATA[
option explicit

	dim xmldoc,selnode
	dim i,kyssx,kyssy
	dim no2,no,search_no
	dim patternstring,iro,timer1
	dim markichi,selnode2,age
	dim kyssno,kyssyomi,kyssnamae
	dim kysstanntou,kysssyashinn
	dim kyssnenntukihi,kyssdennwa
	dim no3,ichi,ichix,ichiy

sub window_onload()
	kyssx=0
	kyssy=0
	iro=0
	syainn_no.value=""
	no=0
'DOM�I�u�W�F�N�g���g����悤�ɂ���D
	set xmldoc=CreateObject("Microsoft.XMLDom")
	xmldoc.async=false
	xmldoc.load("sample44.xml")

	set ichi=xmldoc.getElementsByTagName("�Ј����")
	redim ichix(ichi.length)
	redim ichiy(ichi.length)
	
	'XML�������́u�Ј����v�v�f���������u�ʒux�v�Ɓu�ʒuy�v
	'�̒l��getAttribute�Ŏ擾����D
	for i=0 to ichi.length-1
		ichix(i)=ichi(i).getAttribute("�ʒux")
		ichiy(i)=ichi(i).getAttribute("�ʒuy")
	next 
	call search()
end sub

'�o�^����Ă���Ј����̌��𒲂ׂ�D
sub search()
    set selnode=xmldoc.getElementsByTagName("�Ј��ԍ�")
	message.innerHTML=selnode.length & "���̃f�[�^������܂��D1�`" & selnode.length & "�̔ԍ�����͂��ĉ�����."
	no2=selnode.length
end sub

sub go()
	mark.style.visibility="visible"
	block.style.visibility="visible"
	no3=0
	nextdata.style.visibility="visible"
	search_no=0
	search_no=eval(syainn_no.value)
	no3=search_no

	'�o�^����Ă���Ј��ԍ��Ɠ��͂��ꂽ���l����v���Ă��邩�ǂ����̔��ʁD
	if search_no>no2 or search_no<=0 then
		msgbox "�Ј��ԍ����s���ł��D"
		syainn_no.value=""
		exit sub
	end if

	'���͂��ꂽ�Ј��ԍ��̒l�isearch_no�j�Ɉ�v����C���ꂼ��̗v�f�̓��e���擾���ĕ\���D

	patternstring="�֐��c�Ə�/�Ј����[�Ј��ԍ�='" & search_no & "']/�Ј��ԍ�"
	set selnode=xmldoc.selectNodes(patternstring)
	banngou.innerHTML=selnode(0).text

	patternstring="�֐��c�Ə�/�Ј����[�Ј��ԍ�='" & search_no & "']/�ӂ肪��"
	set selnode=xmldoc.selectNodes(patternstring)
	yomi.innerHTML=selnode(0).text

	patternstring="�֐��c�Ə�/�Ј����[�Ј��ԍ�='" & search_no & "']/����"
	set selnode=xmldoc.selectNodes(patternstring)
	namae.innerHTML=selnode(0).text

	patternstring="�֐��c�Ə�/�Ј����[�Ј��ԍ�='" & search_no & "']/�S��"
	set selnode=xmldoc.selectNodes(patternstring)
	tanntou.innerHTML=selnode(0).text

	patternstring="�֐��c�Ə�/�Ј����[�Ј��ԍ�='" & search_no & "']/�ʐ^"
	set selnode=xmldoc.selectNodes(patternstring)
	image1.src=selnode(0).text

	patternstring="�֐��c�Ə�/�Ј����[�Ј��ԍ�='" & search_no & "']/���N����"
	set selnode=xmldoc.selectNodes(patternstring)
	birth.innerHTML=selnode(0).text

	patternstring="�֐��c�Ə�/�Ј����[�Ј��ԍ�='" & search_no & "']/�d�b"
	set selnode=xmldoc.selectNodes(patternstring)
	dennwa.innerHTML=selnode(0).text


	set selnode2=xmldoc.getElementsByTagName("�Ј��ԍ�")
	redim kyssno(selnode2.length)
	for i=0 to selnode2.length-1
		kyssno(i)=selnode2(i).text
	next

	set selnode2=xmldoc.getElementsByTagName("�ӂ肪��")
	redim kyssyomi(selnode2.length)
	for i=0 to selnode2.length-1
		kyssyomi(i)=selnode2(i).text
	next

	set selnode2=xmldoc.getElementsByTagName("����")
	redim kyssnamae(selnode2.length)
	for i=0 to selnode2.length-1
		kyssnamae(i)=selnode2(i).text
	next

	set selnode2=xmldoc.getElementsByTagName("�S��")
	redim kysstanntou(selnode2.length)
	for i=0 to selnode2.length-1
		kysstanntou(i)=selnode2(i).text
	next

	set selnode2=xmldoc.getElementsByTagName("�ʐ^")
	redim kysssyashinn(selnode2.length)
	for i=0 to selnode2.length-1
		kysssyashinn(i)=selnode2(i).text
	next

	set selnode2=xmldoc.getElementsByTagName("���N����")
	redim kyssnenntukihi(selnode2.length)
	for i=0 to selnode2.length-1
		kyssnenntukihi(i)=selnode2(i).text
	next

	set selnode2=xmldoc.getElementsByTagName("�d�b")
	redim kyssdennwa(selnode2.length)
	for i=0 to selnode2.length-1
		kyssdennwa(i)=selnode2(i).text
	next

	call markmove()
end sub

'��ʔz�u�}��Ł��}�[�N���ړ����鏈��
sub markmove()
	markichi=banngou.innerText
	mark.style.marginleft=ichix(markichi-1)
	mark.style.margintop=ichiy(markichi-1)
	window.clearinterval(timer1)
	timer1=window.setinterval("blink()",30)
end sub

'�Ј��z�u�}��Ł����_�ł��鏈���D
sub blink()
	select case iro
		case 1
			mark.style.color="blue"
			mark.innerHTML="��"
		case 2
			mark.style.color="red"
			'datediff()�֐����g���ĔN��������I�Ɍv�Z�����Ă���D
			age=datediff("yyyy",birth.innerText,now)
			mark.innerHTML="<span style='font-size:12pt'>" & age & "��" & "</span>"
		case else
			iro=0
	end select
			iro=iro+1
end sub

'�u���Ј��v�u�O�Ј��v�{�^���ƘA�����ĕ\��������Ј��f�[�^�̏����D
sub naiyouhyouji()
	banngou.innerHTML=kyssno(no3)
	yomi.innerHTML=kyssyomi(no3)
	namae.innerHTML=kyssnamae(no3)
	tanntou.innerHTML=kysstanntou(no3)
	image1.src=kysssyashinn(no3)
	birth.innerHTML=kyssnenntukihi(no3)
	dennwa.innerHTML=kyssdennwa(no3)
	syainn_no.value=banngou.innerText
	call markmove()
end sub

'�u���Ј��v�{�^�����N���b�N�����Ƃ��̏����D
sub tugi()
	if no3>=no2 then
		msgbox "�Ō�̃f�[�^�ł��I"
		exit sub
	else
		call naiyouhyouji()
		no3=no3+1
	end if
end sub	

'�u�O�Ј��v�{�^�����N���b�N�����Ƃ��̏����D
sub mae()
	if no3<=0 then
		msgbox "�ŏ�ʂ̃f�[�^�ł��D"
		exit sub
	else
		no3	=no3-1
		call naiyouhyouji()
		
	end if
end sub	

]]>
</xsl:comment>
</script>
<body>

<div id="mark" style="visibility:hidden;position:absolute;margin-top:0;margin-left:0;color:red;font-size:14pt;font-weight:bold">��</div>

<img src="floor.gif" width="295" height="410" alt="�t���A�}"/>

<span style="position:absolute;font-family:�l�r �o�S�V�b�N;font-size:30pt;margin-left:10;width:300;filter:shadow(color=black,direction=135);color:aquamarine;letter-spacing:0.2em">�Ј��z�u�}</span>

<div id="message" style="margin-top:60;color:red;position:absolute;margin-left:10;font-family:�l�r �o�S�V�b�N;font-size:12pt"></div>
<div style="position:absolute;margin-left:10;margin-top:80;font-family:�l�r �o�S�V�b�N;font-size:11pt">
�Ј��ԍ��F<input style="text-align:center" type="text" name="syainn_no" size="5" />
<button onclick="go()">���s</button>
</div>

<div id="block" style="visibility:hidden;position:absolute;margin-left:5;margin-top:105">
<table>
<tr>
	<td>
	<div>
	<xsl:apply-templates select="�֐��c�Ə�" />
	</div>
	</td>
	</tr>
</table>
</div>

<div style="visibility:hidden;position:absolute;margin-top:320;margin-left:10" id="nextdata">
<button onclick="tugi()">���Ј�</button>
<button onclick="mae()">�O�Ј�</button>
</div>
</body>
</html>
</xsl:template>

<xsl:template match="�֐��c�Ə�">
<table border="1" style="border-width:2;border-color:black">
	<tr>
	<td style="background-color:snow">�Ј��ԍ�</td>
	<td><span id="banngou"></span></td>
	<td rowspan="4"><img id="image1"></img></td>
	</tr>
	<tr>
	<td style="background-color:snow">�ӂ肪��</td>
	<td><span id="yomi"></span></td>
	</tr>
	<tr>
	<td style="background-color:snow">����</td>
	<td><span id="namae"></span></td>
	</tr>
	<tr>
	<td style="background-color:snow">�S��</td>
	<td><span id="tanntou"></span></td>
	</tr>
	<tr>
	<td  style="background-color:snow">���N����</td>
	<td colspan="2"><span id="birth"></span></td>
	</tr>
	<tr>
	<td style="background-color:snow">�d�b</td>
	<td colspan="2"><span id="dennwa"></span></td>
	</tr>
	</table>
</xsl:template>
</xsl:stylesheet>
