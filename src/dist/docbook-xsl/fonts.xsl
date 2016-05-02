<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <!--
    Font selectors
  -->

  <xsl:variable name="lang">
    <xsl:call-template name="l10n.language"/>
  </xsl:variable>

  <xsl:template name="pickfont-sans">
    <xsl:choose>
      <xsl:when test="$lang = 'zh_cn'">
        <xsl:text>KaiGenGothicCN, sans-serif</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'zh_tw'">
        <xsl:text>KaiGenGothicTW, sans-serif</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'ja'">
        <xsl:text>KaiGenGothicJP, sans-serif</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'ko'">
        <xsl:text>KaiGenGothicKR, sans-serif</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>Arial, sans-serif</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="pickfont-serif">
    <xsl:choose>
      <xsl:when test="$lang = 'zh_cn'">
        <xsl:text>KaiGenGothicCN, serif</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'zh_tw'">
        <xsl:text>KaiGenGothicTW, serif</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'ja'">
        <xsl:text>KaiGenGothicJP, serif</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'ko'">
        <xsl:text>KaiGenGothicKR, serif</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>Georgia, sans-serif</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="pickfont-mono">
    <xsl:choose>
      <xsl:when test="$lang = 'zh_cn'">
        <xsl:text>RobotoMono, KaiGenGothicCN, monospace</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'zh_tw'">
        <xsl:text>RobotoMono, KaiGenGothicTW, monospace</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'ja'">
        <xsl:text>RobotoMono, KaiGenGothicJP, monospace</xsl:text>
      </xsl:when>
      <xsl:when test="$lang = 'ko'">
        <xsl:text>RobotoMono, KaiGenGothicKR, monospace</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>Liberation Mono, Courier New, Courier, monospace</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="pickfont-dingbat">
    <xsl:call-template name="pickfont-sans"/>
  </xsl:template>

  <xsl:template name="pickfont-symbol">
    <xsl:text>Symbol,ZapfDingbats</xsl:text>
  </xsl:template>

  <xsl:template name="pickfont-math">
    <xsl:text>Liberation Serif,Times-Roman</xsl:text>
  </xsl:template>

</xsl:stylesheet>
