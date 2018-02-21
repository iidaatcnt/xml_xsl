<?xml version="1.0" encoding="UTF-8" ?>
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
     <h3>コンピューター関連書籍</h3>
     <ul>
       <xsl:apply-templates/>
     </ul>
   </xsl:template>
   <xsl:template match="title">
     <xsl:if test="@genre='computer'">
       <li><xsl:value-of select="."/></li>
     </xsl:if>
   </xsl:template>
 </xsl:stylesheet>