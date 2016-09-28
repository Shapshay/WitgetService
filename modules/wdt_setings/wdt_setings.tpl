<script>
function OnWdt(wdt){
	var U_ID = '{U_ID}';
	$.post("modules/wdt_setings/on_wdt.php", {U_ID: U_ID, wdt: wdt}, 
		function(data){
			//alert(data);
			var obj = jQuery.parseJSON(data);
			if(obj.result=='OK'){
				//$(location).attr('href','/nastrojka_widgetov/'+obj.folder);
			}
			else{
				swal("Ошибка добавления!", "Некорректные параметры !", "error"); 
			}
		});
}
</script>
{CH_ROWS}