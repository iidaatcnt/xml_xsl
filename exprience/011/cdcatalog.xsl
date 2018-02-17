<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <head>
    <style>
      div {
      border: 2px solid #ccc;
      padding: 25px 0;
      margin: 0 auto;
      }
    </style>
    </head>
    <body>
    <xsl:apply-templates select="cars/car" />
    </body>
    </html>
  </xsl:template>

  <xsl:template match="cars/car">
      <h1>
        <xsl:value-of select="name"/>
      </h1>
      <xsl:choose>
        <xsl:when test="option">
          <div>
            <xsl:for-each select="option">
              <xsl:value-of select="."/><BR/>
            </xsl:for-each>
          </div>
        </xsl:when>
      </xsl:choose>
  </xsl:template>

</xsl:stylesheet>