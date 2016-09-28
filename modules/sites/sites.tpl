<script>
$(document).ready(function(){
/*
    $("#copy-callbacks").zclip({
        path:'inc/zclip/ZeroClipboard.swf',
        copy:$('#wdt_code_script').text(),
        beforeCopy:function(){
            //$('#callback-paragraph').css('background','yellow');
            //$(this).css('color','orange');
        },
        afterCopy:function(){
            //$('#callback-paragraph').css('background','green');
            //$(this).css('color','purple');
            //$(this).next('.check').show();
			swal("Код скопирован !", "Код виджета скопирован в буфер обмена", "success"); 
        }
    });
*/
	var cutTextareaBtn = document.querySelector('.copy-callbacks');

	cutTextareaBtn.addEventListener('click', function(event) {  
	  var cutTextarea = document.querySelector('.wdt_code_script');  
	  cutTextarea.select();
	
	  try {  
		var successful = document.execCommand('cut');  
		var msg = successful ? 'successful' : 'unsuccessful';  
		swal("Код скопирован !", "Код виджета скопирован в буфер обмена", "success"); 
		//console.log('Cutting text command was ' + msg);  
	  } catch(err) {  
		console.log('Oops, unable to cut');  
	  }  
	  clearSelection();
	});
	
	function clearSelection() {
		if (window.getSelection) {
		  window.getSelection().removeAllRanges();
		} else { // старый IE
		  document.selection.empty(); 
		}
	 }
});
function ShowAdd(){
	//alert ('YES');
	$('#AddSiteDiv').toggle('slow');
    $('#btn_add_site').hide();
}
function AddSite(){
	var s_domen = $('#s_domen').val();
	if(/^((https?|ftp)\:\/\/)?([a-z0-9]{1})((\.[a-z0-9-])|([a-z0-9-]))*\.([a-z]{2,4})$/.test(s_domen)){
		$('#AddSiteFrm').submit();
	}
	else{
		swal("Некорректный домен !", "Укажите домен согласно шаблону: http://example.com", "error"); 
	}
}
function DelSiteF(id){
	swal({   
		 title: "Вы уверенны, что хотите удалить сайт?",   
		 text: "Все настройки так же будут удалены!",   
		 type: "warning",   
		 showCancelButton: true,   
		 confirmButtonColor: "#DD6B55",   
		 confirmButtonText: "Да, удалить!",   
		 closeOnConfirm: false 
		 }, 
		 function(){   
		 	$('#DelSiteFrm'+id).submit();
	});
}
function VerSiteF(id){
	$('#VerSiteFrm'+id).submit();
}
</script>
<div style="min-height:700px;">
<table class="tab_polos">
<thead>
<th>Домен</th>
<th>Статус</th>
<th>Проверка</th>
<th>Удалить</th>
</thead>
{SITE_ROWS}
</table>
<div id="AddSiteDiv">
<form method="post" enctype="multipart/form-data" id="AddSiteFrm">
<div style="padding-left:10px;"><strong>Адрес сайта</strong></div>
<div><input type="text" name="s_domen" id="s_domen" placeholder="http://example.com" class="settings_inp"></div>
<div><button type="button" name="btn_wdt_save" class="btn_reg" onclick="AddSite();">Сохранить</button></div>
</form>
</div>
<p><button type="button" id="btn_add_site" class="btn_reg" onclick="ShowAdd();">Добавить сайт</button></p>

<div class="wdt_code"{WDT_CODE_SHOW}>
<div class="wdt_code_title">Добавте этот код на все страницы вашего сайта</div>
<textarea class="wdt_code_script" id="wdt_code_script" readonly="readonly">
{WDT_CODE}
</textarea>
<div class="wdt_code_btn"><button type="button" id="copy-callbacks" class="btn_reg copy-callbacks">Скопировать в буфер</button></div>
</div>
{SITE_VER}
</div>