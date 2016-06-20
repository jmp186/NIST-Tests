<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
            <style>
                span {color:red; font-weight:bold; text-transform:uppercase;}
                #content {display:none}
            </style>

        </head>

        <body>
            <div class="container" id="content">
                    <xsl:for-each select="//term">
                        <h1>
                            <xsl:attribute name="id">
                                <xsl:value-of select="@id"/>
                            </xsl:attribute>
                            <p>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="link/@href"/>
                                    </xsl:attribute>
                                    <span></span>
                                </a>
                                <xsl:value-of select="name"/>
                            </p>
                            <p>
                                <xsl:value-of select="definition"/>
                            </p>
                        </h1>
                    </xsl:for-each>
            </div>

<div class="container">
            <h1>Glossary Search</h1>

    <input type="text" class="form-control" id="searchterm" placeholder="Enter Term"/>
            <button class="btn-primary">
                Search
            </button>
</div>
 <div class="container" id="output"></div>
        <script>
            var selectterm;
            var data = $("button").click(function() {
            data=document.getElementById("searchterm").value;
            selectterm=document.getElementById(data).innerHTML
            document.getElementById("output").innerHTML=selectterm;
            console.log(data);
            });
        </script>
        </body>

    </html>
    </xsl:template>
</xsl:stylesheet>