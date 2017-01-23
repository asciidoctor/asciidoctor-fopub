<?xml version="1.0" encoding="UTF-8"?>
<!--
  This file was extracted from the XSL DocBook Stylesheet distribution.
  It has been customized for the Asciidoctor project (http://asciidoctor.org).
-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:xslthl="http://xslthl.sf.net"
  exclude-result-prefixes="xslthl">

  <xsl:import href="http://docbook.sourceforge.net/release/xsl/current/highlighting/common.xsl"/>

  <xsl:param name="highlight.source" select="1"/>

  <!-- ########### Start ADOC  ############ -->

  <xsl:template match="xslthl:adoc-table" mode="xslthl">
    <fo:inline font-weight="bold" color="#800000"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:macro" mode="xslthl">
    <fo:inline font-weight="bold" color="#EE7600"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:reference" mode="xslthl">
    <fo:inline font-weight="bold" color="#6599FF"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:adoc-attr" mode="xslthl">
    <fo:inline font-weight="bold" color="#cebb9e"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:cwiki-target" mode="xslthl">
    <fo:inline font-weight="bold" color="#e6be8a"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <!-- ########### Start EBNF  ############ -->

  <xsl:template match="xslthl:ebnf-keyword" mode="xslthl">
    <fo:inline font-weight="bold" color="#800000"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>
  
  <xsl:template match="xslthl:rule-heading" mode="xslthl">
    <fo:inline font-weight="bold" color="#000000"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>
  <xsl:template match="xslthl:literal" mode="xslthl">
    <fo:inline color="#0080ff"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:actions" mode="xslthl">
    <fo:inline color="#EE7600"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:rule-terminals" mode="xslthl">
    <fo:inline font-weight="bold" color="#000000"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:semi" mode="xslthl">
    <fo:inline  font-weight="bold" color="#696969"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>
 
  <xsl:template match="xslthl:typereference" mode="xslthl">
    <fo:inline  font-style="italic" color="#696969"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:rulestructure" mode="xslthl">
    <fo:inline  color="#9932CC"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

<!-- ########### End EBNF  ############ -->

<!-- ########### Start N4JS  ############ -->

  <xsl:template match="xslthl:n4js-annotation" mode="xslthl">
    <fo:inline font-weight="bold" color="#FF00FF"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

<!-- ########### End N4JS  ############ -->


<!-- ########### Start JSX  ############ -->
  <xsl:template match="xslthl:jsx-brackets" mode="xslthl">
    <fo:inline font-weight="bold" color="#7F7FFF"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:jsx-attr" mode="xslthl">
    <fo:inline font-weight="bold" color="#800000"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:jsx-str" mode="xslthl">
    <fo:inline font-weight="bold" color="#7f0055"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>
<!-- ########### End JSX  ############ -->


  <xsl:template match="xslthl:keyword" mode="xslthl">
    <fo:inline font-weight="bold" color="#7f0055"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:string" mode="xslthl">
    <fo:inline color="#2a00ff"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:comment" mode="xslthl">
    <fo:inline font-weight="bold" color="#3f7f5f"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:tag" mode="xslthl">
    <fo:inline color="navy"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:htmltag" mode="xslthl">
    <fo:inline color="navy"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:attribute" mode="xslthl">
    <fo:inline color="teal"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <!-- value is mapped to an attribute value in XML -->
  <xsl:template match="xslthl:value" mode="xslthl">
    <fo:inline color="#DD1144"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:number" mode="xslthl">
    <fo:inline color="#2a00ff"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>
  
  <xsl:template match="xslthl:annotation" mode="xslthl">
    <fo:inline color="#000077"><xsl:apply-templates mode="xslthl"/></fo:inline>
    <!--
    <fo:inline color="#888888"><xsl:apply-templates mode="xslthl"/></fo:inline>
    -->
  </xsl:template>
  
  <!-- directive is mapped to a processing instruction in XML -->
  <xsl:template match="xslthl:directive" mode="xslthl">
    <fo:inline font-weight="bold" color="#999999"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:doctype" mode="xslthl">
    <fo:inline font-weight="bold" color="#999999"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>
  
  <xsl:template match="xslthl:doccomment" mode="xslthl">
    <fo:inline font-style="italic" color="#999999"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:heading" mode="xslthl">
    <fo:inline font-style="bold" color="#880000"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:title" mode="xslthl">
    <fo:inline font-weight="bold" color="#900"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match="xslthl:bullet" mode="xslthl">
    <fo:inline color="#008800"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

</xsl:stylesheet>
