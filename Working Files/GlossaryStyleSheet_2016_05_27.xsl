<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
                <!--<link rel="stylesheet" href="jquery-ui.min.css"></link>-->
                <!--<script src="external/jquery/jquery.js"></script>-->
                <!--<script src="jquery-ui.min.js"></script>-->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
                <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                <style>
                    #content {display:none}
                </style>

            </head>

            <body>
                <div id="content">
                    <xsl:for-each select="//term">
                        <ul>
                            <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
                            <li>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="links/link/@href"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="name"/>
                                </a>
                            </li>
                            <li>Acronym:<xsl:value-of select="acronym"/></li>
                            <li>Name:<xsl:value-of select="name"/></li>
                            <li>Definition:<xsl:value-of select="definition"/></li>
                            <li>
                                    <xsl:copy-of select="img"/>
                            </li>
                            <li>Related Links:<xsl:value-of select="link"/></li>
                        </ul>
                    </xsl:for-each>
                </div>

                <div class="container">
                    <h1>Glossary Search</h1>

                    <input type="text" class="form-control" id="input" placeholder="Enter Term"/>
                    <button class="btn-primary">
                        Search
                    </button>
                </div>
                <div id="output"></div>
                <script>
                    var nameResult = null;
                    var acronymResult = null;
                    var input = $("button").click(function() {
                    input=document.getElementById("input").value;

                    <!--// 1) search by acronym-->
                    acronymResult = $("li:contains(Acronym:"+input+")").parent();
                    console.log(acronymResult);

                    <!--// 2) search by term name-->
                    nameResult = $("li:contains(Name:"+input+")").parent();
                    console.log(nameResult);

                    if (acronymResult){
                      $("div[id='output']").append(acronymResult.html());
                    }
                    if (nameResult) {
                       console.log("appending nameResult")
                      $("div[id='output']").append(nameResult.html());
                    }
                    });
                </script>
                <!--<script>-->
                    <!--function myFunction() {-->
                    <!--var str = input-->
                    <!--var res = str.toLowerCase();-->
                    <!--document.getElementById("input").innerHTML = res;-->
                    <!--}-->
                <!--</script>-->
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>