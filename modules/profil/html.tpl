<!-- ���������� HTML-�������� -->
<script>
$(document).ready(function() {
   $("#btn_u_save").click(function(){
		name = $("#u_fio").val();
		email = $("#u_email").val();
		//alert('***');
		if(!isValidEmailAddress(email)){
			$("#u_email").attr("placeholder", "Введите E-mail !!!");
			//$('#f_email').focus();
			return false;
		}
		
		if(name==''||name=='Введите имя !!!'||!name||name.length == 0){
			swal("Ошибка", 'Введите ФИО !!!', "error");
			return false;
		}
		
		$('#UserSetFrm').submit();
	});
	
	$('#amount_table').DataTable( {
        "lengthMenu": [[50, 100, 500, -1], [50, 100, 500, "All"]]
    } );
	
} );
function isValidEmailAddress(emailAddress) {
	var pattern = /^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/;
    var result = pattern.test(emailAddress);
	if(!result){
		//alert('Некорректный E-mail !');
		swal("Ошибка", 'Некорректный E-mail !', "error");
		return false;
	}
	else{
		return true;
	}
}
function PswControl(){
psw1 = $('#reg_password1').val();
psw2 = $('#reg_password2').val();
if(psw1!=psw2){
	$('#psw_img').attr("src",'images/krest_reg.png');
	//swal("Ошибка", 'Некорректный пароль !', "error");
}
else{
	$('#psw_img').attr("src",'images/gal_reg.png');
}
}
function PswControl2(){
psw1 = $('#reg_password1').val();
psw2 = $('#reg_password2').val();
if(psw1!=psw2||psw1==''||psw1==' '){
	swal("Ошибка", 'Некорректный пароль !', "error");
	return false;
}
else{
	$('#UserPswFrm').submit();
	return true;
}
}
</script>
<link rel="stylesheet" href="inc/jquery.dataTables.min.css" />
<script src="inc/jquery.dataTables.min.js"></script>

<!-- ���������� HTML-�������� -->