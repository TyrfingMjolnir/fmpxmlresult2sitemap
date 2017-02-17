<?xml version="1.0" encoding="UTF-8"?>
<!--
Written by Gjermund G Thorsen 2017, all rights deserved
for the purpose of generating sitemap.xml from FMPXMLRESULT
fieldnames are not important, the sequence of the exported field are.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fmp="http://www.filemaker.com/fmpxmlresult" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="fmp:FMPXMLRESULT">
    <urlset xmlns="http://www.google.com/schemas/sitemap/0.9">
		<xsl:for-each select="fmp:RESULTSET/fmp:ROW">
        <url>
          <loc><xsl:value-of select="fmp:COL/fmp:DATA"/></loc>
          <lastmod><xsl:value-of select="fmp:COL[2]/fmp:DATA"/></lastmod>
          <changefreq><xsl:value-of select="fmp:COL[3]/fmp:DATA"/></changefreq>
          <priority><xsl:value-of select="fmp:COL[4]/fmp:DATA"/></priority>
        </url>
			</xsl:for-each>
    </urlset>
	</xsl:template>
</xsl:stylesheet>
<!--
========================================================================================
Copyright (c) 2008 - Gjermund Gusland Thorsen, released under the MIT License.
All rights deserved.
This piece comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law.
========================================================================================
-->
