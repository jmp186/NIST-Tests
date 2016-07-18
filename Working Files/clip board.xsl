                <script>
                    <!--http://jqueryui.com/autocomplete/#categories-->
                    $.widget( "custom.catcomplete", $.ui.autocomplete, {
                    _create: function() {
                    this._super();
                    this.widget().menu( "option", "items", "> :not(.ui-autocomplete-category)" );
                    },
                    _renderMenu: function( ul, items ) {
                    var that = this,
                    currentCategory = "";
                    $.each( items, function( index, item ) {
                    var li;
                    if ( item.category != currentCategory ) {
                    ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
                    currentCategory = item.category;
                    }
                    li = that._renderItemData( ul, item );
                    if ( item.category ) {
                    li.attr( "aria-label", item.category + " : " + item.label );
                    }
                    });
                    }
                    });
                </script>
                <script>
                    $(function() {
                    var nameResult = null;
                    var acronymResult = null;
                    var input = $("button").click(function()
                    input=document.getElementById("input").value;

                    <!--// 1) search by acronym-->
                    acronymResult = $("li:contains(Acronym:"+input+")").parent();
                    console.log(acronymResult);

                    nameResult = $("li:contains(Name:"+input+")").parent();
                    console.log(nameResult);{ label: "anders", category: "" },

                    $( "#search" ).catcomplete({
                    delay: 0,
                    source: input
                    });
                    });

                $("ul.outputList > li").remove();

          <!--http://tutorialzine.com/2010/09/google-powered-site-search-ajax-jquery/-->
                    <!--if not (acronymResult) or (nameResult) {
                    console.log("appending googleSearch")
                    $(div[id='output']).googleSearch(-->

                  <!--todo: clear function<script>-->
                    <!--function myFunction() {-->
                    <!--var str = input-->
                    <!--var res = str.toLowerCase();-->
                    <!--document.getElementById("input").innerHTML = res;-->
                    <!--}-->
                <!--</script>-->

                 <!--http://www.mkyong.com/jquery/jquery-empty-and-remove-example/-->
                    <!--$("button").click(function() {-->
                    <!--$("div[id='output']".empty();-->
                    <!--});-->

                <script>
                    var results = ("div[id='output']")
                    $("button").click(function() {
                    $("results").replaceWith(
                </script>

                <script>
                    function loadXMLDoc(filename)
                    {
                    if (window.ActiveXObject("Msxml2.XMLHTTP");
                    }
                    else
                    {
                    xhttp = new XMLHttpRequest();
                    }
                    xhttp.open("GET", filename, false);
                    try {xhttp.responseType = "msxml-document"} catch(err) {}
                    <!--helping IE11-->
                    xhttp.send("");
                    return xhttp.responseXML;
                    }

                    function displayResult()
                    {
                    <!--this is where you load the files-->
                    console.log(document.getElementById('xml').files[0].name);
                    var xmlFilePath=document.getElementById('xml').files[0].name;
                    var xslFilePath=document.getElementById('xsl').files[0].name;

                    xml = loadXMLDoc(./Glossary2.xml);
                    xsl = loadXMLDoc(./GlossaryStyleSheet_2016_05_27.xsl);
                    var output = null;
                    <!--code for IE-->
                    if (window.ActiveXObject || xhttp.responseType == "msxml-document")
                        {
                        ex = xml.transformNode(xsl);
                        document.getElementById("example").innerHTML = ex;
                        console.log(ex);
                        output = document.getElementById("example").innerHTML;
                        }
                    <!--code for Chrome, FF, Opera, Etc-->
                    else if (document.implementation && document.implementation.createDocument)
                        {
                        xsltProcessor = new XSLTProcessor();
                        xsltProcessor.importStylesheet(xsl);
                        resultDocument = xsltProcessor.transformToFragment(xml, document);
                        document.getElementById("example").appendChild(resultDocument);
                        output=document.getElementById("example").innerHTML;
                        console.log(output);
                        }

                    function downloadOutput(textOutput,downloadAnchorId,outputName)
                        {
                        var outputBlob=new Blob([textOutput], {type: 'text/plain'});
                        var downloadTag=document.getElementById(downloadAnchorId);
                        console.log(textOutput);
                        downloadTag.setAttribute('href',window.URL.creatObjectURL(outputBlob));
                        downloadTag.setAttribute(downloadAnchorId, outputName);
                        downloadTag.dataset.downloadurl = ['text/plain', downloadTag.download, downloadTag.href].join(':');
                        }
                </script>

                //input=document.getElementById("input").value;
                    //if (input==null | input=="")
                    //console.log("typeof " (input))
                    //$("div[id='output']").empty();
                    //console.log("variable input is " + String(input))