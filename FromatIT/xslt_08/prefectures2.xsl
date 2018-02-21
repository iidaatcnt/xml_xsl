<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/prefectures">
    <xsl:comment>
      <xsl:text>コメントです</xsl:text>
    </xsl:comment>
    <xsl:element name="HTML">
      <xsl:element name="BODY">
        <xsl:element name="FORM">
          <xsl:element name="SELECT">
            <xsl:apply-templates select="prefecture"/>
          </xsl:element>
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:template> 

  <xsl:template match="prefecture">
    <xsl:element name="OPTION">
      <xsl:attribute name="VALUE">
        <xsl:value-of select="name"/>
      </xsl:attribute>
      <xsl:value-of select="capital"/>
    </xsl:element>
  </xsl:template> 

</xsl:stylesheet>