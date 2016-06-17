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
                                  <span id="name"><xsl:value-of select="name"/></span>
                                </a>
                            </li>
                            <li id="acronym"><xsl:value-of select="acronym"/></li>
                            <li id="definition"><xsl:value-of select="definition"/></li>
                            <li>
                                    <xsl:copy-of select="visual/*"/>
                            </li>
                            <!--todo: this is here for a space holder for related topics/links <li>Related Links:<xsl:value-of select="link"/></li>-->
                        </ul>
                    </xsl:for-each>
                </div>

                <div class="container">
                    <h1>Glossary Search</h1>

                    <input type="button" class="form-control" id="input" placeholder="Enter Term"/>
                    <button class="btn-primary">
                        Search
                    </button>
                </div>
                <div id="output" class="container"></div>
                <script>
                    var nameResult = null;
                    var acronymResult = null;
                    <!--search function-->
                    var input = null;
                    $(document).ready(function()
                    {
                    $(document).bind('keypress', function(e) {
                        if(e.keyCode==13){
                        $('#input').trigger('click');
                    }
                    });
                    $("button").click(function(){
                    input=document.getElementById("input").value;

                    <!--// 1) search by acronym-->
                    acronymResult = $("li[id='acronym']:contains("+input+")").parent();
                    console.log(acronymResult);

                    <!--// 2) search by term name-->
                    nameResult = $("span[id='name']:contains("+input+")").parent().parent().parent();
                    console.log(nameResult);

                    <!--clear function-->

                    <!--display results if statements-->
                    if (acronymResult){
                      $("div[id='output']").append(acronymResult.html());
                    }

                    if (nameResult) {
                       console.log("appending nameResult")
                      $("div[id='output']").append(nameResult.html());
                    }
                    });
                </script>


                <script>
                    var results = ("div[id='output']")
                    $("button").click(function() {
                    $("results").replaceWith(
                </script>


            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>