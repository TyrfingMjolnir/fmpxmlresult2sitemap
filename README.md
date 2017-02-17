# fmpxmlresult2sitemap
Stylesheet converts FMPXMLRESULT to sitemap

# sitemap2fmpxmlresult
Stylesheet converts sitemap to FMPXMLRESULT

This is an XSLT stylesheet to convert from FileMaker's fmpxmlresult to sitemap and vice-versa.



## Below is from one of my other FMPXMLRESULT XSLT tools; I may or may not update eventually to make a reasonable example.

Note adding a layout name in the FMPXMLRESULT export; before translating using this XSLT, will make the output more complete.

<img alt="[x] Format Using Layout will provoke the export to populate the LAYOUT-attribute" src="FormatUsingLayout.png" width="100%" max-width=1008>

How to use this file in terminal
---
```bash
$ xsltproc fmpxmlresult2sitemap.xslt www.domain.tld.fmpxmlresult.xml > /www/tld.domain.www/sitemap.xml
$ xsltproc sitemap2fmpxmlresult.xslt http://www.domain.tld/sitemap.xml > www.domain.tld.fmpxmlresult.xml
```
Note the latter will not work in FileMaker if the source is async.

For using this in FileMaker use File -> Export Records use filetype XML and point to the raw file on github for the [XSLT](https://raw.githubusercontent.com/TyrfingMjolnir/fmpxmlresult2nodeexpress/master/fmpxmlresult2nodeexpress.xslt)

If you do not like the verbs used for the calls you can have a look [here](http://stackoverflow.com/questions/630453/put-vs-post-in-rest) to do some qualified changes. Perhaps using patch instead of put for your UPDATE will be for the better?

Sample files
---
www.domain.tld.fmpxmlresult.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
  <ERRORCODE>0</ERRORCODE>
  <PRODUCT BUILD="" NAME="" VERSION=""/>
  <DATABASE DATEFORMAT="M/d/yyyy" LAYOUT="" NAME="" RECORDS="1" TIMEFORMAT="h:mm:ss a"/>
  <METADATA>
    <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="loc" TYPE="TEXT"/>
    <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="lastmod" TYPE="TIMESTAMP"/>
    <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="changefreq" TYPE="TEXT"/>
    <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="priority" TYPE="NUMBER"/>
  </METADATA>
  <RESULTSET FOUND="20467">
    <ROW MODID="0" RECORDID="1">
      <COL>
        <DATA>http://www.domain.tld</DATA>
      </COL>
      <COL>
        <DATA>2017-02-17</DATA>
      </COL>
      <COL>
        <DATA>always</DATA>
      </COL>
      <COL>
        <DATA>1.0</DATA>
      </COL>
    </ROW>
    <ROW MODID="0" RECORDID="2">
      <COL>
        <DATA>http://www.domain.tld/shop/location2</DATA>
      </COL>
      <COL>
        <DATA>2017-02-17</DATA>
      </COL>
      <COL>
        <DATA>monthly</DATA>
      </COL>
      <COL>
        <DATA>0.5</DATA>
      </COL>
    </ROW>
    <ROW MODID="0" RECORDID="3">
      <COL>
        <DATA>http://www.domain.tld/shop/location3</DATA>
      </COL>
      <COL>
        <DATA>2017-02-17</DATA>
      </COL>
      <COL>
        <DATA>monthly</DATA>
      </COL>
      <COL>
        <DATA>0.5</DATA>
      </COL>
    </ROW>
  </RESULTSET>
</FMPXMLRESULT>
```

/www/tld.domain.www/sitemap.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<urlset xmlns="http://www.google.com/schemas/sitemap/0.9">
  <url>
    <loc>http://www.domain.tld</loc>
    <lastmod>2017-02-17</lastmod>
    <changefreq>always</changefreq>
    <priority>1.0</priority>
  </url>
  <url>
    <loc>http://www.domain.tld/shop/location2</loc>
    <lastmod>2017-02-17</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.5</priority>
  </url>
  <url>
    <loc>http://www.domain.tld/shop/location3</loc>
    <lastmod>2017-02-17</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.5</priority>
  </url>
</urlset>
```

License
=======

Copyright (c) 2015 Gjermund Gusland Thorsen, released under the MIT License.

All rights deserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

This piece of software comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law.
