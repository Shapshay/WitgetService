<script>
function AddWdt(wdt){
	var U_ID = '{U_ID}';
	$.post("modules/widgets/add_wdt.php", {U_ID: U_ID, wdt: wdt}, 
		function(data){
			//alert(data);
			var obj = jQuery.parseJSON(data);
			if(obj.result=='OK'){
				//$(location).attr('href','/nastrojka_widgetov/'+obj.folder);
				$(location).attr('href','/nastrojka_widgetov');
			}
			else{
				switch(obj.result){
					case 'LimitErr':
						swal("Ошибка добавления!", "Количество виджетов по Вашему тарифу \""+obj.tarif+"\" не может превышать: "+obj.w_limit+" !", "error"); 
					break;
					case 'Err':
						swal("Ошибка добавления!", "Некорректные параметры !", "error"); 
					break;
					case 'TarifErr':
						swal("Ошибка добавления!", "Выберите и оплатите один из тарифов !", "error"); 
					break;
					case 'DoubleErr':
						swal("Ошибка добавления!", "Данный виджет уже есть в Вашей коллекции !", "error"); 
					break;
				}
				
			}
		});
}
</script>
{CH_ROWS}