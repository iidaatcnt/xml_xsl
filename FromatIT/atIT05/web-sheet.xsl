<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
  <xsl:include href="booklist.xsl"/>
   <xsl:template match="/">
     <html>
       <body>
         <xsl:apply-templates/>
       </body>
     </html>
   </xsl:template>
   <xsl:template match="reviews">
     <h2>書評一覧</h2>
     <xsl:apply-templates/>
   </xsl:template>
 </xsl:stylesheet>