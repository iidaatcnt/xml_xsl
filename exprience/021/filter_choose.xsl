<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   version="1.0">
  <xsl:template match="/" >
    <HTML><BODY>
      choose employee[2]
    <HR/>
     <xsl:apply-templates select="/employees/employee[2]"/>
    </BODY></HTML>
  </xsl:template>

  <xsl:template match="employee" >
    <xsl:value-of select="@empid"/><BR/>
    <xsl:value-of select="Name"/><BR/>
    <xsl:value-of select="Dept"/><BR/>
    <xsl:value-of select="Salary"/><BR/>
  </xsl:template>

</xsl:stylesheet>