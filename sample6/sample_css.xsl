<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="�S��/�薼" /></title>
<style type="text/css">
body{background:url(xml_icon.gif) fixed no-repeat bottom right white;
margin-top:25;margin-left:15%;margin-right:25%;
font-family:"�l�r �o����",serif;
font-size:11pt;line-height:16pt;color:dimgray;}

h1{font-family:"�l�r �o�S�V�b�N",sans-serif;color:black;
width:100%;filter:shadow(color=gainsboro,direction=135);
line-height:30pt;}

span{color:crimson;}

h2{font-family:"�l�r �o�S�V�b�N",sans-serif;font-weight:bold;
margin-top:30;padding:0.2em;
color:white;background:royalblue;width:540;}

h3{font-family:"�l�r �o�S�V�b�N",sans-serif;
margin-top:20;border-bottom:solid 1pt cornflowerblue;
width:540;color:mediumblue;}

p{text-indent:1em;}

table{border:solid 1pt navy;width:540;margin-top:20;}

th{background-color:#dff2ff;padding:3;}

td{background-color:gainsboro;padding:3;}

ul{list-style-image:url(ul_mark.gif);}

a:link{color:cornflowerblue;}

a:hover{color:tomato;}

a:visited{color:mediumblue;}


</style>
</head>
<body>
<xsl:apply-templates select="�S��/�T�v" />
<xsl:apply-templates select="�S��/��Ə��" />
</body>
</html>
</xsl:template>
<xsl:template match="�S��/�T�v">
	<div>
		<xsl:element name="img">
			<xsl:attribute name="src">
				<xsl:value-of select="���S" />
			</xsl:attribute>
		</xsl:element>
	</div>
	<div>
		<h1>
		<xsl:value-of select="�^�C�g��" />
		<xsl:value-of select="�^�C�g��/@����" />
		</h1>
	</div>
	<div>
		<h2><xsl:value-of select="�R�s�[" /></h2>
		<p><xsl:value-of select="���[�h" /></p>
	</div>
</xsl:template>
<xsl:template match="�S��/��Ə��">
	<div><xsl:apply-templates select="��ЊT�v" /></div>
	<div><xsl:apply-templates select="���Ɠ��e" /></div>
	<div><xsl:apply-templates select="�����N" /></div>
</xsl:template>
<xsl:template match="��ЊT�v">
	<h3><xsl:value-of select="�����o��" /></h3>
	<table>
		<xsl:for-each select="�f�[�^">
		<tr>
		<th><xsl:value-of select="����" /></th>
		<td><xsl:value-of select="�E�v" /></td>
		</tr>
		</xsl:for-each>
	</table>
</xsl:template>
<xsl:template match="���Ɠ��e">
	<h3><xsl:value-of select="�����o��" /></h3>
	<ul>
		<xsl:for-each select="����">
		<li><xsl:value-of /></li>
		</xsl:for-each>
	</ul>
</xsl:template>
<xsl:template match="�����N">
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
