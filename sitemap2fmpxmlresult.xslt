<?xml version="1.0" encoding="UTF-8"?>
<!--
Written by Gjermund G Thorsen 2017, all rights deserved
for the purpose of generating FMPXMLRESULT from sitemap
fieldnames are not important, the sequence of the exported field are.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:eurofxref="http://www.ecb.int/vocabulary/2002-08-01/eurofxref" version="1.0" exclude-result-prefixes="eurofxref">
  <xsl:output method="xml" version="1.0" encoding="utf-8" indent="yes"/>
  <xsl:template match="/*">
    <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
      <ERRORCODE>0</ERRORCODE>
      <PRODUCT BUILD="" NAME="" VERSION=""/>
      <DATABASE DATEFORMAT="M/d/yyyy" LAYOUT="" NAME="" RECORDS="1" TIMEFORMAT="h:mm:ss a"/>
      <METADATA>
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="loc" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="lastmod" TYPE="TIMESTAMP" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="changefreq" TYPE="TEXT" />
        <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="priority" TYPE="NUMBER" />
      </METADATA>
      <RESULTSET FOUND="{count(*)}">
        <xsl:apply-templates select="*"/>
      </RESULTSET>
    </FMPXMLRESULT>
  </xsl:template>
  <xsl:template match="*[name() = 'url']">
    <ROW xmlns="http://www.filemaker.com/fmpxmlresult" MODID="0" RECORDID="{position()}">
      <COL>
        <DATA>
          <xsl:value-of select="*[name() = 'loc']" />
        </DATA>
      </COL>
      <COL>
        <DATA>
          <xsl:value-of select="*[name() = 'lastmod']" />
        </DATA>
      </COL>
      <COL>
        <DATA>
          <xsl:value-of select="*[name() = 'changefreq']" />
        </DATA>
      </COL>
      <COL>
        <DATA>
          <xsl:value-of select="*[name() = 'priority']"/>
        </DATA>
      </COL>
    </ROW>
  </xsl:template>
</xsl:stylesheet>
<!--
========================================================================================
Copyright (c) 2008 - Gjermund Gusland Thorsen, released under the MIT License.
All rights deserved.
This piece comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law.
========================================================================================
-->
