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
    </head>

    <body>

        <h1>Glossary</h1>

            <p>Search:</p>

                <input id="srch">

                    <button type="button" onclick="myFunction()">Submit</button>

                        <p id="demo"></p>

                        <script>
                                function myFunction() {
                                var x, text;

                                // Get the value of the input field with id="srch"
                                    x = document.getElementById("srch").value;

                if (x = XML {
                text = "<ul style="list-style-type:none">
                            <xsl:for-each select="glossary/term[acronym='XML']">
                            <li><xsl:value-of select="name"></xsl:value-of></li>
                            <li><xsl:value-of select="acronym"></xsl:value-of></li>
                            <li><xsl:value-of select="definition"></xsl:value-of></li>
                            <li><xsl:value-of select="link"></xsl:value-of></li>
                        </xsl:for-each>;
                        </ul>
    } else {
        text = " Not Valid ";
    }
    document.getElementById("demo").innerHTML = text;
}
                            </script>

</body>
</html>
</xsl:template>
</xsl:stylesheet>