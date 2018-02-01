サンプルで覚えるXSLTプログラミング 
11. 数値計算系関数 

http://www.atmarkit.co.jp/fxml/tanpatsu/xslt/xslt11.html

例：
（元になるXML文書）
<books>
<book>The Innovator's Dilemma</book>
<book>Adaptive Enterprise</book>
<book>Race for the World</book>
</books> 

（XSLTプログラム）
<xsl:template match="books">
<xsl:value-of select="count('book')">
</xsl:template>