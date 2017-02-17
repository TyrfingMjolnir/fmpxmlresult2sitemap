# fmpxmlresult2sitemap
Stylesheet converts FMPXMLRESULT to sitemap

# sitemap2fmpxmlresult
Stylesheet converts sitemap to FMPXMLRESULT

This is an XSLT stylesheet to convert from FileMaker's fmpxmlresult to sitemap and vice-versa.



## Below is from one of my other FMPXMLRESULT XSLT tools; may or may not update eventually.

Note adding a layout name in the FMPXMLRESULT export; before translating using this XSLT, will make the output more complete.

<img alt="[x] Format Using Layout will provoke the export to populate the LAYOUT-attribute" src="FormatUsingLayout.png" width="100%" max-width=1008>

How to use this file in terminal
---
```bash
$ xsltproc fmpxmlresult2nodeexpress.xslt test.xml > ~/projectname/route/view.js
```

For using this in FileMaker use File -> Export Records use filetype XML and point to the raw file on github for the [XSLT](https://raw.githubusercontent.com/TyrfingMjolnir/fmpxmlresult2nodeexpress/master/fmpxmlresult2nodeexpress.xslt)

If you do not like the verbs used for the calls you can have a look [here](http://stackoverflow.com/questions/630453/put-vs-post-in-rest) to do some qualified changes. Perhaps using patch instead of put for your UPDATE will be for the better?

Sample files
---
test.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
<ERRORCODE>0</ERRORCODE>
<PRODUCT BUILD="07-18-2011" NAME="FileMaker" VERSION="ProAdvanced 11.0v4"/>
<DATABASE DATEFORMAT="D/m/yyyy" LAYOUT="view" NAME="schema.table" RECORDS="0" TIMEFORMAT="k:mm:ss"/>
<METADATA>
  <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="vintage" TYPE="NUMBER"/>
  <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="wine" TYPE="TEXT"/>
  <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="wine2" TYPE="TEXT"/>
</METADATA>
<RESULTSET FOUND="0">
  <ROW MODID="0" RECORDID="0">
    <COL>
      <DATA>2008</DATA>
    </COL>
    <COL>
      <DATA>Sjattonoeff</DATA>
    </COL>
    <COL>
      <DATA>Sjattonoeff</DATA>
    </COL>
  </ROW>
</RESULTSET>
</FMPXMLRESULT>
```

~/projectname/route/view.js

```js
const
  express = require( 'express' ),
  router  = express.Router();

// CRUD for the node named: view

// C reate
router.post( '/view/:vintage/:wine/:wine2', function( req, res ) {
  res.send( req.params.vintage );
  res.send( req.params.wine );
  res.send( req.params.wine2 );
});

// R ead
router.get( '/view/:vintage/:wine/:wine2', function( req, res ) {
  res.send( req.params.vintage );
  res.send( req.params.wine );
  res.send( req.params.wine2 );
});

// U pdate
//router.patch( '/view/:vintage/:wine/:wine2', function( req, res ) {
router.put( '/view/:vintage/:wine/:wine2', function( req, res ) {
  res.send( req.params.vintage );
  res.send( req.params.wine );
  res.send( req.params.wine2 );
});

// D elete
router.delete( '/view/:vintage/:wine/:wine2', function( req, res ) {
  res.send( req.params.vintage );
  res.send( req.params.wine );
  res.send( req.params.wine2 );
});
```

License
=======

Copyright (c) 2015 Gjermund Gusland Thorsen, released under the MIT License.

All rights deserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

This piece of software comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law.
