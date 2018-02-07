<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
	<HTML lang="ja">
		<HEAD><TITLE><xsl:value-of select="全体/題名"/></TITLE></HEAD>
		<BODY><xsl:apply-templates select="全体/本文"/></BODY>
	</HTML>
</xsl:template>

<xsl:template match="全体/本文">
	<xsl:for-each select="リスト">
		<xsl:if test="@chk='true'">
			<ol>
				<xsl:for-each select="項目">
					<li><xsl:value-of select="."/></li>
				</xsl:for-each>
			</ol>
			<!-- <xsl:value-of select="."/> -->
		</xsl:if>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>