<?xml version="1.0" encoding="shift_jis" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
  <xsl:template match="/">
     <html>
       <body>
         <xsl:apply-templates/>
       </body>
     </html>
   </xsl:template>
   <xsl:template match="books">
     <h3>繰り返し処理による一覧</h3>
     <ul>
       <xsl:for-each select="title">
         <li><xsl:value-of select="."/></li>
       </xsl:for-each>
     </ul>
   </xsl:template>
 </xsl:stylesheet>