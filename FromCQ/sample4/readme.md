元ネタは書籍「XML+XSLサンプル集」です。

01 
sample21.xml sample21.xsl

02 
sample22.xml sample22.xsl

03 
sample23.xml sample23.xsl
```
		<!-- <xsl:for-each select="商品" order-by="-number(価格)"> -->
上のorder-by="-number(価格)"＜－は動かない
```

04 
sample24.xml sample24.xsl

05 
sample25.xml sample25.xsl
```
	<xsl:if test="価格[.&gt; 150000]">
	<xsl:if test="価格[.&lt; 150000]">
```

06 
sample26.xml sample26.xsl
```
	<xsl:when test="価格[.&gt; 1000 and .&lt; 99999]">
	<xsl:when test="価格[.&gt; 100000 and .&lt; 200000]">
```
