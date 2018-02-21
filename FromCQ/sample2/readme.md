元ネタは書籍「XML+XSLサンプル集」です。

01 番号付きリスト
sample07.xml sample07.xsl
```
		<ol>
			<xsl:for-each select="リスト/項目">
				<li><xsl:value-of select="."/></li>
			</xsl:for-each>
		</ol>
```

02  マーク付きリスト
sample08.xml sample08.xsl
```
	<ul>
		<xsl:for-each select="リスト/項目">
			<li><xsl:value-of select="."/></li>
		</xsl:for-each>
	</ul>
```

03  複数リストの繰り返し
sample09.xml sample09.xsl
```
	<xsl:for-each select="リスト">
		<ol>
			<xsl:for-each select="項目">
				<li><xsl:value-of select="."/></li>
			</xsl:for-each>
		</ol>
	</xsl:for-each>
```

04 文章中にリストを表示する
sample10.xml sample10.xsl

05 条件分岐１
sample11.xml sample11.xsl
```
	<xsl:if test="@chk='true'">
	:
	</xsl:if>
```

06 条件分岐２
sample12.xml sample12.xsl
```
	<xsl:choose>
		<xsl:when test="@chk='true'">
				<xsl:value-of select="."/>
		</xsl:when>
		<xsl:otherwise>
				<xsl:value-of select="."/>
		</xsl:otherwise>
	</xsl:choose>
```