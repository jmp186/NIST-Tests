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
        <h1>Calnet Glossary Search</h1>
        <form id="GlossaryOutput">
            Search Term: <input type="text" name="term" value="<input/>"/>
        </form>
        <button onclick="myFunction()">Submit</button>
            <xsl:for-each select="glossary/term[name='National Institute of Standards and Technology']">
                <tr>
                    <td><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="acronym"</td>
                    <td><xsl:value-of select="definition"</td>
                    <td><xsl:value-of select="link"</td>
                </tr>

    </body>
    </html>
 </xsl:template>
</xsl:stylesheet>