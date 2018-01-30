<?xml version="1.0" encoding="shift_jis" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
  <xsl:template match="/">
     <html>
       <body>
       <title>sort</title>
         <xsl:apply-templates/>
       </body>
     </html>
   </xsl:template>
   <xsl:template match="books">
     <h3>価格順の書籍名一覧</h3>
     <ul>
       <xsl:for-each select="title">
         <xsl:sort select="./@price" data-type="number" order="ascending"/>
         <li><xsl:value-of select="."/>（税別<xsl:value-of select="./@price"/>円）</li>
       </xsl:for-each>
     </ul>
   </xsl:template>
 </xsl:stylesheet>