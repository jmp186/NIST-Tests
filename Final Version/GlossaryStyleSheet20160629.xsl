<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">

            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="./CDN/bootstrapcss.css"/>
                <link rel="stylesheet" type="text/css" href="./GlossaryCSS20160629.css"/>

                <script src="./CDN/jquery2.js"></script>
                <script src="./CDN/bootstrapjs.js"></script>
            </head>

            <body>
                <div class="row">
                        <nav class="navbar navbar-inverse navbar-static-top" id="navbar">
                            <div class="container">
                                <div class="navbar-header">
                                    <a class="navbar-brand" href="/"><span class="badge">Calnet</span></a>
                                </div>
                                <ul class="nav navbar-nav">
                                    <li><a href="/Test_App">Home</a> </li>
                                    <li><a href="/Test_App/Files">Repository</a> </li>
                                    <li><a href="/Test_App/Canvas">Canvas</a> </li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="/accounts/user_info/"><span class="glyphicon glyphicon-user"></span> Logged in: Test_Site</a></li>
                                    <li><a href="/accounts/logout/"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                                </ul>

                                <form class="navbar-form navbar-right" role="search">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Search"/>
                                    </div>
                                    <button type="submit" class="btn btn-default">
                                        <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </form>
                            </div>
                        </nav>
                    </div>

                    <div class="container">
                        <div class="row" id="undertopnav">
                            <div class="container-fluid">
                                <div id="title" class="col-xs-12 col-sm-12 col-md-3 col-lg-3">Glossary Search</div>
                                <div class="col-xs-11 col-sm-11 col-md-7 col-lg-7">
                                    <input type="text" class="form-control" id="input" placeholder="Search by Term or Acronym"/>
                                </div>
                                <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                                    <button class="btn btn-primary" id="buttn">
                                        <span id="glyph" class="glyphicon glyphicon-search"></span>
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div id="resize" class="row">
                            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
                                <ul id="sidebarnav">
                                    <li class="side">
                                        <button class="sidebutton">
                                            <a href="./Glossary20160629.xml">
                                                <span class="sidebutton">Glossary Search</span>
                                            </a>
                                        </button>
                                    </li>
                                    <li class="side">
                                        <button class="sidebutton">
                                            <a href="./XML_Example_20160620_001.html">
                                                <span class="sidebutton">HTML</span>
                                            </a>
                                        </button>
                                    </li>
                                    <li class="side">
                                        <button class="sidebutton" id="showAll">
                                            <a href="#content">
                                                <span class="sidebutton">List of all Terms</span>
                                            </a>
                                        </button>
                                    </li>
                                    <!--todo: more side nav items-->
                                </ul>
                            </div>
                            <div id="blankspace" class="col-xs-12 col-sm-12 col-md-1 col-lg-1"/>
                            <div id="output" class="col-xs-12 col-sm-12 col-md-7 col-lg-7"/>
                        </div>
                    </div>


                <div id="content">
                    <xsl:for-each select="//term">
                        <ul>
                            <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>

                                <li class="list">
                                    <a id="simple">
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="links/link/@href"/>
                                        </xsl:attribute>
                                    <span id="name">
                                        <xsl:value-of select="name"/>
                                    </span>
                                    </a>
                                </li>
                                <li id="shortname" class="list">
                                    <xsl:value-of select="shortname"/>
                                </li>
                                <li id="acronym" class="list">
                                    <xsl:value-of select="acronym"/>
                                </li>
                                <li id="definition" class="list"><xsl:value-of select="definition"/></li>

                                <li id="embedimage" class="pagedown">
                                    <xsl:copy-of select="embedimage/*"/>
                                        <span id="imagetext">
                                            <xsl:value-of select="embedimage"/>
                                        </span>
                                </li>
                                <li class="pagedown">
                                    <xsl:element name="image">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="image/img/@src"/>
                                            </xsl:attribute>
                                        <span id="imagetext">
                                            <xsl:value-of select="image"/>
                                        </span>
                                    </xsl:element>
                                </li>
                                <!--todo: this is here for a space holder for related topics/links <li>Related Links:<xsl:value-of select="link"/></li>-->
                        </ul>
                    </xsl:for-each>
                </div>

                    <script>

                    $('#input').keypress(function(e) {
                        if(e.keyCode==13){
                        console.log("pressed");
                        $('#buttn').trigger('click');
                        }
                    });

                    $("#buttn").click(function(myFunctionResults){
                    });


                   function myFunctionResults () {
                        var input=document.getElementById("input").value;
                        var nameResult = $("span[id='name']:contains("+input+")").parent().parent().parent();
                        var shortnameResult = $("li[id='shortname']:contains("+input+")").parent();
                        var acronymResult = $("li[id='acronym']:contains("+input+")").parent();

                        $("div[id='output']").empty();

                        if (nameResult != null) {
                        console.log(nameResult);
                        $("div[id='output']").append(nameResult.html());
                        };

                        if (acronymResult != null) {
                        console.log(acronymResult);
                        $("div[id='output']").append(acronymResult.html());
                        };

                        if (shortnameResult != null) {
                        console.log(shortnameResult);
                        $("div[id='output']").append(shortnameResult.html());
                        };

                        if (acronymResult == null &amp;&amp; nameResult == null &amp;&amp; shortnameResult == null) {
                        document.write("Term or acronym not found.");
                        };
                    };

                </script>


                <script>
                    // Show All Button
                    $('#showAll').click(function(){
                    $('#content').toggle();
                    });
                </script>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>