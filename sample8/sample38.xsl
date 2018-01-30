<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
table{border:solid 1pt black;position:absolute;margin-left:180}
th{border:solid 1pt gray;padding:2;}
td{border:solid 1pt gray;padding:2;}
.ichi{font-family:"�l�r �o����",serif;font-size:14pt;position:absolute;}
.ichi2
{font-family:"�l�r �o����",serif;font-size:14pt;position:absolute;
margin-left:90}
</style>

<script type="text/vbscript">
<xsl:comment>
<![CDATA[
option explicit
dim myRow,myAddress,myAddress2(),i
dim myCell1,myCell2,myCell3,myCell4,myCell5,myCell6,myCell7
dim myNo(),myNo1,myName,myJyuusyo,myKen,myTel
dim myNumber,dennwa(),telNode,tel
dim noNode,shimeiNode,shimei,myShimeni()
dim addressNode,patternstring,selectAddress,address1()
dim myCell01,myCell02,myCell03,myCell04,myCell05,myCell06,myCell07
dim tableAddress,myAddress3,selectNennrei
dim allNO,age(),myage,ageNode,birth,dummyNennrei()
dim nennrei(),myNennrei,nennreiText
dim ageNo
sub window_onload()
	allNO=0
	ageNo=0
end sub

sub go()
	
	'�\���`������Ă��邩�ǂ�����allNO�̒l�Ŕ��ʂ��Ă���B
	'�\���`������Ă������x�S�Ă̍s���폜����B
	if allNO=2525 then
		for i=0 to addressNode.length
			myTable.deleteRow(0)
		next
	end if

	'table�ɐV�����s�itr�j���쐬���Arows�R���N�V�����ɒǉ�����B
	'-1 ��insertRow�̃f�t�H���g�l�ŁAtr��cells�R���N�V�����̍Ō�ɒǉ�����B
	set myRow=myTable.insertRow(-1)
	selectAddress=mySelect.options.value
	if selectAge.options.value="�S��" then
		selectNennrei=10
		ageNo=100
	else
		selectNennrei=eval(selectAge.options.value)
		ageNo=9
	end if

	patternstring="�S��/�ڋq���[�Z��/@�s���{��=" & "'" & selectAddress & "'" & "]/���N����"
	set ageNode=document.XMLDocument.selectNodes(patternstring)
	redim age(ageNode.length)
	redim nennrei(ageNode.length)
	redim dummynennrei(ageNode.length)
	for i=0 to ageNode.length-1
		'datediff()�֐����g���ĔN��������v�Z�����Ă���B
		nennrei(i)=datediff("yyyy",ageNode(i).text,now)
		'�����v�Z�����N��Aselect�{�b�N�X��option�̒l�Ɋ܂܂��N��ł���Ȃ�
		'���̔N��𓮓I�ϐ�dummynennrei()�Ɋi�[���Ă���B
		if nennrei(i)>=selectNennrei and nennrei(i)<=selectNennrei+ageNo then
			age(i)=ageNode(i).text
			dummynennrei(i)=nennrei(i)
		end if
	next

	'�e�v�f�̓��e��\�ߑS�ē��I�Ȕz��ϐ��Ɋi�[���Ă����B
	'select�{�b�N�X�őI�����ꂽoption�v�f�̓��e��ϐ�selectAddress�Ɋi�[��
	'selectNodes���\�b�h���g����selectAddress�ɍ��v����v�f�̓��e���������Ă���B
	'���̓��e�𓮓I�z��ϐ��Ɋi�[���Ă���B

	patternstring="�S��/�ڋq���[�Z��/@�s���{��=" & "'" & selectAddress & "'" & "]/�Z��"
	set addressNode=document.XMLDocument.selectNodes(patternstring)
	redim address1(addressNode.length)
	redim myAddress2(addressNode.length)
	
	for i=0 to addressNode.length-1
		nennrei(i)=datediff("yyyy",ageNode(i).text,now)
		if nennrei(i)>=selectNennrei and nennrei(i)<=selectNennrei+ageNo then
			address1(i)=addressNode(i).text
			myAddress2(i)=addressNode(i).getAttribute("�s���{��")
			dummynennrei(i)=nennrei(i)
		end if
	next

	patternstring="�S��/�ڋq���[�Z��/@�s���{��=" & "'" & selectAddress & "'" & "]/���q�l�ԍ�"
	set noNode=document.XMLDocument.selectNodes(patternstring)
	redim myNo(noNode.length)
	for i=0 to noNode.length-1
		nennrei(i)=datediff("yyyy",ageNode(i).text,now)
		if nennrei(i)>=selectNennrei and nennrei(i)<=selectNennrei+ageNo then
			myNo(i)=noNode(i).text
			dummynennrei(i)=nennrei(i)
		end if
	next

	patternstring="�S��/�ڋq���[�Z��/@�s���{��=" & "'" & selectAddress & "'" & "]/����"
	set shimeiNode=document.XMLDocument.selectNodes(patternstring)
	redim myShimei(shimeiNode.length)
	for i=0 to shimeiNode.length-1
		nennrei(i)=datediff("yyyy",ageNode(i).text,now)
		if nennrei(i)>=selectNennrei and nennrei(i)<=selectNennrei+ageNo then
			myShimei(i)=shimeiNode(i).text
			dummynennrei(i)=nennrei(i)
		end if
	next
	
	patternstring="�S��/�ڋq���[�Z��/@�s���{��=" & "'" & selectAddress & "'" & "]/�d�b"
	set telNode=document.XMLDocument.selectNodes(patternstring)
	redim dennwa(telNode.length)
	for i=0 to telNode.length-1
		nennrei(i)=datediff("yyyy",ageNode(i).text,now)
		if nennrei(i)>=selectNennrei and nennrei(i)<=selectNennrei+ageNo then
			dennwa(i)=telNode(i).text
			dummynennrei(i)=nennrei(i)
		end if
	next

	'���ꂼ���table�Ɋւ���v�f�𐶐����A�܂����̃e�L�X�g�m�[�h�𐶐�����B

	set myCell1=document.createElement("th")
	set myNumber=document.createTextNode("�ԍ�")

	set myCell2=document.createElement("th")
	set myName=document.createTextNode("����")

	set myCell6=document.createElement("th")
	set myage=document.createTextNode("�a����")

	set myCell7=document.createElement("th")
	set myNennrei=document.createTextNode("�N��")

	set myCell3=document.createElement("th")
	set myKen=document.createTextNode("�s���{��")

	set myCell4=document.createElement("th")
	set myJyuusyo=document.createTextNode("�Z��")

	set myCell5=document.createElement("th")
	set myTel=document.createTextNode("�d�b")

	'���������v�f�ɁA���e��ǉ�����B

	myCell1.appendChild(myNumber)
	myCell2.appendChild(myName)
	myCell6.appendChild(myage)
	myCell7.appendChild(mynennrei)
	myCell3.appendChild(myken)
	myCell4.appendChild(myJyuusyo)
	myCell5.appendChild(myTel)

	'���ꂼ��̗v�f���A����ɍs�ɒǉ�����B
	myRow.appendChild(myCell1)
	myRow.appendChild(myCell2)
	myRow.appendChild(myCell6)
	myRow.appendChild(myCell7)
	myRow.appendChild(myCell3)
	myRow.appendChild(myCell4)
	myRow.appendChild(myCell5)
'----------------------�����܂ł͕\�g��Table Header�𐶐����Ă���B

	
	'�m�[�h�̌����Atd�v�f�₻�̓��e�𐶐����s�ɒǉ����Ă����B	
	for i=0 to addressNode.length-1
		set myRow=myTable.insertRow(-1)
		set myCell01=document.createElement("td")
		set myNo1=document.createTextNode(myNo(i))
		myCell01.appendChild(myNo1)
		myRow.appendChild(myCell01)

		set myCell02=document.createElement("td")
		set shimei=document.createTextNode(myShimei(i))
		myCell02.appendChild(shimei)
		myRow.appendChild(myCell02)

		set myCell06=document.createElement("td")
		set birth=document.createTextNode(age(i))
		myCell06.appendChild(birth)
		myRow.appendChild(myCell06)

		set myCell07=document.createElement("td")
		set nennreiText=document.createTextNode(dummynennrei(i))
		myCell07.appendChild(nennreiText)
		myRow.appendChild(myCell07)

		set myCell03=document.createElement("td")
		set tableAddress=document.createTextNode(myAddress2(i))
		myCell03.appendChild(tableAddress)
		myRow.appendChild(myCell03)

		set myCell04=document.createElement("td")
		set myAddress3=document.createtextNode(address1(i))
		myCell04.appendChild(myAddress3)
		myRow.appendChild(myCell04)

		set myCell05=document.createElement("td")
		set tel=document.createTextNode(dennwa(i))
		myCell05.appendChild(tel)
		myRow.appendChild(myCell05)
		
	next
				'���̔ԍ��ŉ�ʏ�ɕ\����������Ă��邩�ǂ����𔻕ʂ���B
				allNO=2525
end sub
]]>
</xsl:comment>
</script>
</head>
<body>
<table id="myTable">
</table>
<select id="mySelect" class="ichi">
	<option value="���Q��">���Q��</option>
	<option value="���{">���{</option>
	<option value="���Ɍ�">���Ɍ�</option>
	<option value="�����s">�����s</option>
	<option value="�啪��">�啪��</option>
</select>

<select id="selectAge" class="ichi2" onchange="go()">
	<option value="10">10��</option>
	<option value="20">20��</option>
	<option value="30">30��</option>
	<option value="40">40��</option>
	<option value="50">50��</option>
	<option value="60">60��</option>
	<option value="70">70��</option>
	<option value="80">80��</option>
	<option value="90">90��</option>
	<option value="100">100��</option>
	<option value="�S��">�S��</option>
</select>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
