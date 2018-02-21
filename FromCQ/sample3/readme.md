元ネタは書籍「XML+XSLサンプル集」です。

01 画像を表示
sample13.xml sample13.xsl
```
	<img>
		<xsl:attribute name="src">
			<xsl:value-of select="図/イラスト" />
		</xsl:attribute>
		<xsl:attribute name="alt">
			サンプル画像
		</xsl:attribute>
	</img>
```

02 複数の画像を表示
sample14.xml sample14.xsl
```
sample13を繰り返すだけ
```

03 文章中に画像を表示
sample15.xml sample15.xsl
```
＜DIV></DIV>で制御
```

04 注釈付きで画像を表示
sample16.xml sample16.xsl
```
＜DIV></DIV>で制御
```

05 条件分岐１
sample17.xml sample17.xsl
```
＜DIV></DIV>で制御
```

06 条件分岐２
sample18.xml sample18.xsl
```
＜HR/>で制御
```
