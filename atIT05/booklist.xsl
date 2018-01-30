<?xml version="1.0" encoding="shift_jis" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="book">
       <ul>
         <xsl:apply-templates/>
       </ul>
     </xsl:template>
     <xsl:template match="title">
       <li>
         <xsl:value-of select="."/>
       </li>
     </xsl:template>
     <xsl:template match="price">
       <li>
         <xsl:value-of select="."/>
       </li>
     </xsl:template>
     <xsl:template match="review">
       <li><xsl:value-of select="."/>
     </li>
   </xsl:template>
 </xsl:stylesheet>