<!-- ���������� HTML-�������� -->
<link rel="stylesheet" href="inc/jquery.dataTables.min.css" />
<script src="inc/jquery.dataTables.min.js"></script>
<script>
$(document).ready(function() {
    $('#stat_table').DataTable( {
        "lengthMenu": [[50, 100, 500, -1], [50, 100, 500, "All"]]
    } );
} );
function SaveExcel(){
	var U_ID = '{U_ID}';
	var W_ID = '{W_ID}';
	window.open("modules/w_contact6_stat/excel.php?U_ID="+U_ID+"&W_ID="+W_ID,'_blank')
}
</script>

<!-- GRAF -->
<link rel="stylesheet" href="inc/chartist/chartist.min.css" />
<script src="inc/chartist/chartist.min.js"></script>
<script src="inc/chartist/chartist-plugin-pointlabels.min.js"></script>
<!-- ���������� HTML-�������� -->