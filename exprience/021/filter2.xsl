<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   version="1.0">
<xsl:template match="/" >
<HTML>  <BODY>
Second Employee<BR/>
=================<BR/>
   <xsl:apply-templates
    select="/EMPLOYEES/EMPLOYEE[2]"/>

  </BODY></HTML>
</xsl:template>

<xsl:template match="EMPLOYEE" >
      <xsl:value-of select="Name"/>
      <xsl:value-of select="Salary"/> <BR/>
</xsl:template>

</xsl:stylesheet>