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
        <script>
            $(document).ready(function(){
                $("button").click(function(){
                    $("#XML").hide();
                });
            });
        </script>
        </head>

        <body>
            <dl style="list-style-type:disc">
                <dt><xsl:for-each select="//term">
                    <dd><xsl:value-of select="name"/></dd>
                    <dd><xsl:value-of select="acronym"/></dd>
                    <dd><xsl:value-of select="definition"/></dd>
                    <dd><xsl:value-of select="link"/></dd>
                </xsl:for-each></dt>
            </dl>
            <button>click me to hide term</button>

        </body>

    </html>
    </xsl:template>
</xsl:stylesheet>