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
                <script>
                    var nameResult = null;
                    var acronymResult = null;

                    var input = null;
                    $("button").click(function searchGlossary() {
                    input=document.getElementById("input").value;

                     <!--// 1) search by acronym-->
                    acronymResult = $("li[id='acronym']:contains("+input+")").parent();
                    console.log(acronymResult);

                    <!--// 2) search by term name-->
                    nameResult = $("span[id='name']:contains("+input+")").parent().parent().parent();
                    console.log(nameResult);
                    });
                </script>
                <script>
                    $("button").click(function clearResults() {
                    if acronymResult = null {
                    $("div[id='output']".empty();
                    }
                </script>
             </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>