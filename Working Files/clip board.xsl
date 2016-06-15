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