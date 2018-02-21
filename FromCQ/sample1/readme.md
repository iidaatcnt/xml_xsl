元ネタは書籍「XML+XSLサンプル集」です。


01 一つの段落
sample01.xml sample01.xsl
```
<xsl:template match="/">
<xsl:variable name="$1">$2</xsl:variable>
<xsl:apply-templates select="全体/本文" />
```

02 ループ処理による複数の段落
sample02.xml sample02.xsl
```
<xsl:for-each select="全体/本文">
```

03 テーブル表示＋ソート
sample03.xml sample03.xsl
```
<xsl:sort select="pos" order="descending"/>
```

04 部分文字の修飾
sample04.xml sample04.xsl
```
	<xsl:template match="強調">
		<STRONG><xsl:apply-templates /></STRONG>
	</xsl:template>
	<xsl:template match="text()">
		<xsl:value-of select="."/>
	</xsl:template>
```

05 条件分岐１
sample05.xml sample05.xsl
```
		<xsl:if test="見出し[.='']">
			<h2 class="midashi">見出し未設定</h2>
		</xsl:if>
		<xsl:if test="見出し[not(.='')]">
			<h2><xsl:value-of select="見出し" /></h2>
		</xsl:if>
```

06 条件分岐２
sample06.xml sample06.xsl
```
<xsl:choose>
<xsl:when test="見出し[@色='silver']"></xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
```
