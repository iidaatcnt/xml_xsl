�T���v���Ŋo����XSLT�v���O���~���O 
11. ���l�v�Z�n�֐� 

http://www.atmarkit.co.jp/fxml/tanpatsu/xslt/xslt11.html

��F
�i���ɂȂ�XML�����j
<books>
<book>The Innovator's Dilemma</book>
<book>Adaptive Enterprise</book>
<book>Race for the World</book>
</books> 

�iXSLT�v���O�����j
<xsl:template match="books">
<xsl:value-of select="count('book')">
</xsl:template>