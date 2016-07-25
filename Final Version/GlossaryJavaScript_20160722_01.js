                    function findResult(){

                    var lengthNameList = $("span[id='name']").length;
                    var input=document.getElementById("input").value;

                    for (i=0; i < lengthNameList; i++) {
                    if (input==null | input=="") {
                    break;
                    };

                    if($("span[id='name']")[i].innerHTML){
                    var nameIncludes = $("span[id='name']")[i].innerHTML.includes(input);
                    } else {
                    nameIncludes = false
                    }

                    if($("li[id='acronym']")[i].innerHTML){
                    var acronymIncludes = $("li[id='acronym']")[i].innerHTML.includes(input);
                    } else {
                    acronymIncludes = false
                    }

                    if ($("li[id='shortname']")[i].innerHTML) {
                    var shortnameIncludes = $("li[id='shortname']")[i].innerHTML.includes(input)
                    } else {
                    shortnameIncludes = false
                    }

                    var outputResults = $("span[id='name']")[i].parentNode.parentNode.parentNode;

                    if (nameIncludes) {

                    console.log(outputResults);
                    $("div[id='output']").append(outputResults);
                    continue;
                    };

                    if (acronymIncludes) {

                    console.log(outputResults);
                    $("div[id='output']").append(outputResults);
                    continue;
                    };

                    if (shortnameIncludes) {

                    console.log(outputResults);
                    $("div[id='output']").append(outputResults);
                    continue;
                    };

                    };};




                    $('#input').keypress(function(e) {
                        if(e.keyCode==13){
                        console.log("pressed");
                        $('#buttn').trigger('click');
                        }
                    });

                    $("#buttn").click(function(){
                    $("div[id='output']").empty()
                    findResult()
                    });



                    // Show All Button
                    $('#showAll').click(function(){
                    $('#content').toggle();
                    });