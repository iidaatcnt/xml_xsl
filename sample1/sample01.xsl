<?xml version="1.0" encoding="Shift_JIS"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
	<html lang="ja">
		<head>
		<title><xsl:value-of select="�S��/�薼" /></title>
		</head>
		<body><xsl:apply-templates select="�S��/�{��" /></body>
	</html>
</xsl:template>

		<xsl:template match="�S��/�{��">
			<h1><xsl:value-of select="���o��" /></h1>
			<p><xsl:value-of select="�i��" /></p>
		</xsl:template>
</xsl:stylesheet>
