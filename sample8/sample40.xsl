<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="SΜ/θΌ" /></title>
<style type="text/css">
table{border:solid 1pt black;}
th{border:solid 1pt gray;padding:2;}
td{border:solid 1pt gray;padding:2;}
.style1{font-family:"lr oSVbN",sans-serif;
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
	set sumNode=source.getElementsByTagName("¨’γ°ΰz")
	if sumNode.length>0 then
		for i=0 to sumNode.length-1
			'u¨’γ°ΰzvπΑZ·ιB
			goukeiKinngaku=goukeiKinngaku+eval(sumNode(i).text)
		next
	else
		exit sub
	end if
			'vΰzπformatNumberΦΕOζΨθΙ\¦·ιB
			goukei.innerHTML="v=" & formatNumber(goukeiKinngaku,0)
end sub

]]>
</xsl:comment>
</script>

</head>
<body>
<table>
<tr>
	<td>
	<div><xsl:apply-templates select="SΜ" /></div>
	</td>
</tr>
</table>
<div class="style1" id="goukei"></div>
</body>
</html>
</xsl:template>

<xsl:template match="SΜ">
<table>
	<tr>
	<th>Τ</th><th>Ό</th><th>sΉ{§</th>
	<th>Z</th><th>db</th><th>¨γ°ΰz</th>
	</tr>
<xsl:for-each select="Ϊqξρ" order-by="dont-match-anything">
	<tr>
	<td style="text-align:right">
		<xsl:value-of select="¨qlΤ" /></td>
	<td><xsl:value-of select="Ό" /></td>
	<td><xsl:value-of select="Z/@sΉ{§" /></td>
	<td><xsl:value-of select="Z" /></td>
	<td><xsl:value-of select="db" /></td>
	<td style="text-align:right">
		<xsl:apply-templates select="¨’γ°ΰz" /></td>
	</tr>
</xsl:for-each>
</table>
</xsl:template>
<xsl:template match="¨’γ°ΰz">
	<xsl:eval>formatNumber(this.nodeTypedValue,"#,###")</xsl:eval>
</xsl:template>
</xsl:stylesheet>
