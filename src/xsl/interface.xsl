<?xml version="1.0"?>

<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl:processing-instruction  
        name="xml-stylesheet">
      <xsl:text>href="/css/main.css" type="text/css"</xsl:text>
    </xsl:processing-instruction>
    <xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="cgs_menu">
    
    <menu>
      <xsl:value-of select="//cgs_menu"/>
    </menu>
    
  </xsl:template>
  
</xsl:stylesheet>

