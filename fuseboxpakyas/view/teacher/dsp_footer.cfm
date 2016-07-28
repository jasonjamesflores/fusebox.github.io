<div id= "footer_content">
    <script type="text/javascript" src="<cfoutput>#request.jsPath#</cfoutput>jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="<cfoutput>#request.jsPath#</cfoutput>dataTables.bootstrap.min.js"></script>

   <!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function() {
        $('#example').DataTable({
                responsive: true
        });
    });
</script>

<script>
$(document).ready(function(){
    $('.nav').affix({offset: {top: 65} });
});
</script>
</div>