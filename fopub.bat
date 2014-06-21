@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  fopub script for Windows
@rem
@rem  WARNING: This script has not yet been tested!
@rem
@rem ##########################################################################

if "%OS%"=="Windows_NT" setlocal

@rem Store full-qualified drive + path of this script
set PRG_DIR=%~dps0
if "%PRG_DIR%" == "" set PRG_DIR=.

set GRADLEW_CMD=%PRG_DIR%gradlew
set FOPUB_DIR=%PRG_DIR%\build\fopub
set FOPUB_CMD=%FOPUB_DIR%\bin\fopub.bat

set DOCBOOK_DIR=%FOPUB_DIR%\docbook
set DOCBOOK_XSL_DIR=%FOPUB_DIR%\docbook-xsl
set XSLTHL_CONFIG_URI=file:///%DOCBOOK_XSL_DIR%\xslthl-config.xml

:init
set SOURCE_FILE=
set TYPE=pdf
@rem Process first argument
if %1a==a goto endInit
@rem Store fully-qualified drive+path+name+extension of first argument
set SOURCE_FILE=%~f1
@rem Store fully-qualified drive+path+name of first argument
set SOURCE_ROOTNAME=%~dpn1
shift
@rem Process second argument
if %1a==a goto endInit
set TYPE=%1
shift
:endInit

if "%SOURCE_FILE%" == "" (
  echo .
  echo You must specify a DocBook XML source file as the first command argument
  echo .
  goto fail
)

:install
if exist "%FOPUB_CMD%" goto endInstall
echo .
echo Initializing application...
"%GRADLEW_CMD%" -q -u installApp
if not "%ERRORLEVEL%"=="0" goto fail
echo Application initialized!
echo .
:endInstall

SETLOCAL ENABLEDELAYEDEXPANSION

@rem Add file protocol
set DOCBOOK_DIR_PARAM=file:///%DOCBOOK_DIR%
@rem replacing \ with / 
set DOCBOOK_DIR_PARAM=!DOCBOOK_DIR_PARAM:\=/!
set XSLTHL_CONFIG_URI=!XSLTHL_CONFIG_URI:\=/!

if "%TYPE%" == "pdf" (
  set OUTPUT_PDF_FILE="%SOURCE_ROOTNAME%.pdf"
  %FOPUB_CMD% -q -catalog -c "%DOCBOOK_XSL_DIR%\fop-config.xml" -xml "%SOURCE_FILE%" -xsl "%DOCBOOK_XSL_DIR%\fo-pdf.xsl" -pdf !OUTPUT_PDF_FILE! -param highlight.xslthl.config "%XSLTHL_CONFIG_URI%" -param admon.graphics.path "%DOCBOOK_DIR_PARAM%/images/" -param callout.graphics.path "%DOCBOOK_DIR_PARAM%/images/callouts/"
  if not "%ERRORLEVEL%"=="0" goto fail else goto mainEnd
)

if "%TYPE%" == "fo" (
  set OUTPUT_FO_FILE="%SOURCE_ROOTNAME%.fo"
  %FOPUB_CMD% -q -catalog -c "%DOCBOOK_XSL_DIR%\fop-config.xml" -xml "%SOURCE_FILE%" -xsl "%DOCBOOK_XSL_DIR%\fo-pdf.xsl" -foout !OUTPUT_FO_FILE! -param highlight.xslthl.config "%XSLTHL_CONFIG_URI%" -param admon.graphics.path "%DOCBOOK_DIR_PARAM%/images/" -param callout.graphics.path "%DOCBOOK_DIR_PARAM%/images/callouts/"
  if not "%ERRORLEVEL%"=="0" goto fail else goto mainEnd
)

:fail
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal
