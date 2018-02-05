<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:template match="/">
<html lang="ja">
<head>
<title><xsl:value-of select="全体/題名" /></title>
<style type="text/css">
table{border:solid 1pt black;}
th{border:solid 1pt gray;padding:2;}
td{border:solid 1pt gray;padding:2;}
.style1{font-family:"ＭＳ Ｐゴシック",sans-serif;
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
	set sumNode=source.getElementsByTagName("お買い上げ金額")
	if sumNode.length>0 then
		for i=0 to sumNode.length-1
			'「お買い上げ金額」を加算する。
			goukeiKinngaku=goukeiKinngaku+eval(sumNode(i).text)
		next
	else
		exit sub
	end if
			'合計金額をformatNumber関数で三桁区切りに表示する。
			goukei.innerHTML="合計=" & formatNumber(goukeiKinngaku,0)
end sub

]]>
</xsl:comment>
</script>

</head>
<body>
<table>
<tr>
	<td>
	<div><xsl:apply-templates select="全体" /></div>
	</td>
</tr>
</table>
<div class="style1" id="goukei"></div>
</body>
</html>
</xsl:template>

<xsl:template match="全体">
<table>
	<tr>
	<th>番号</th><th>氏名</th><th>都道府県</th>
	<th>住所</th><th>電話</th><th>お買上げ金額</th>
	</tr>
<xsl:for-each select="顧客情報" order-by="dont-match-anything">
	<tr>
	<td style="text-align:right">
		<xsl:value-of select="お客様番号" /></td>
	<td><xsl:value-of select="氏名" /></td>
	<td><xsl:value-of select="住所/@都道府県" /></td>
	<td><xsl:value-of select="住所" /></td>
	<td><xsl:value-of select="電話" /></td>
	<td style="text-align:right">
		<xsl:apply-templates select="お買い上げ金額" /></td>
	</tr>
</xsl:for-each>
</table>
</xsl:template>
<xsl:template match="お買い上げ金額">
	<xsl:eval>formatNumber(this.nodeTypedValue,"#,###")</xsl:eval>
</xsl:template>
</xsl:stylesheet>
