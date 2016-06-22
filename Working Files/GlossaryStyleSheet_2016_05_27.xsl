<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">

            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
                <link rel="stylesheet" type="text/css" href="./GlossaryCSS.css"/>
                <!--<link rel="stylesheet" href="jquery-ui.min.css"></link>-->
                <!--<script src="external/jquery/jquery.js"></script>-->
                <!--<script src="jquery-ui.min.js"></script>-->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
                <!--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
            </head>

            <body>
                  <nav class="navbar navbar-inverse navbar-fixed-top" id="navbar">
                    <div class="container-fluid">
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

                <div class="container" id="undertopnav">
                      <div class="row">
                          <h1 class="col-md-12"></h1>
                      </div>
                      <div>
                                  <ul id="sidebarnav">
                                      <li><button id="sb"><a href="./Glossary2.xml">Glossary Search</a></button></li>
                                      <li><button id="sb"><a id="outputHTML">HTML</a></button></li>
                                      <li><button id="sb"><a href="#">List of Terms</a></button></li>
                                      <!--todo: more side nav items-->
                                  </ul>
                      </div>
                      <div class="row">
                          <div id="title" class="col-md-2">Glossary Search</div>
                          <div class="col-md-9">
                              <input type="text" class="form-control" id="input" placeholder="Search by Term or Acronym"/>
                          </div>
                          <div class="col-md-1">
                              <button class="btn btn-primary" id="buttn">
                                  <span id="glyph" class="glyphicon glyphicon-search"></span>
                              </button>
                          </div>
                      </div>
                      <div class="container">
                          <div id="padding" class="row">
                              <div id="blankspace" class="col-md-2"/>
                              <div id="output" class="col-md-9"/>
                          </div>
                      </div>
                  </div>




                <div id="content">
                    <xsl:for-each select="//term">
                        <ul>
                            <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
                            <li>
                                <a class="simple">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="links/link/@href"/>
                                    </xsl:attribute>
                                  <span id="name"><xsl:value-of select="name"/></span>
                                </a>
                            </li>
                            <li id="acronym"><q lang="no"><xsl:value-of select="acronym"/></q></li>
                            <li id="definition"><xsl:value-of select="definition"/></li>
                            <li id="embedimage">
                                    <xsl:copy-of select="embedimage/*"/>
                            </li>
                            <li id="image">
                                <xsl:element name="image" >
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="image/pic/@src"/>
                                    </xsl:attribute>
                                </xsl:element>
                            </li>
                            <!--todo: this is here for a space holder for related topics/links <li>Related Links:<xsl:value-of select="link"/></li>-->
                        </ul>
                    </xsl:for-each>
                </div>

                <script>
                    var nameResult = null;
                    var acronymResult = null;
                    var input = null;
                    <!--search function-->

                    $('#input').keypress(function(e) {
                        if(e.keyCode==13){
                        console.log("pressed");
                        $('#buttn').trigger('click');
                        }
                    });

                    $("#buttn").click(function(){
                    input=document.getElementById("input").value;
                    if (input==null | input=="")
                    console.log("typeof " (input))
                     $("div[id='output']").empty();
                    console.log("variable input is " + String(input))


                    <!--// 1) search by acronym-->
                    acronymResult = $("li[id='acronym']:contains("+input+")").parent();
                    console.log(acronymResult);

                    <!--// 2) search by term name-->
                    nameResult = $("span[id='name']:contains("+input+")").parent().parent().parent();
                    console.log(nameResult);

                    <!--clear function-->
                    if (acronymResult!=null) {
                        $("div[id='output']").empty();
                    }
                    if (nameResult!=null) {
                        $("div[id='output']").empty();
                    }
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




            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>