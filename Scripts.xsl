<script>
            $(document).ready(function(){
                $("button").onclick(function(){
                    $("#content").hide();
                });
            });
</script>

 <button>click me to hide term</button>
            <div id="output">Output</div>
            <script>
            $(document).ready(function(){
                $("button").click(function(){
                    $("#content").toggle();
                });
            });
            </script>