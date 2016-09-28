<script>
function checkFAQfrm(){
	name = $("#faq_name").val();
	question = $("#question").val();
	
	if(name==''||name=='Введите имя !!!'||!name||name.length == 0){
		swal("Ошибка", 'Введите Ваше имя !!!', "error");
		return false;
	}
	
	if(question==''||question=='Введите имя !!!'||!question||question.length == 0){
		swal("Ошибка", 'Введите Ваш Вопрос !!!', "error");
		return false;
	}
	
	$('#frmFAQ').submit();
};
</script>
<script src="inc/func.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery-1.7.1.js" type="text/javascript" charset="utf-8"></script>
<div style="padding:30px 10px 20px 10px; font: 14px 'Cuprum';">
<font color="#FF0000"><strong>{FAQ_RESULT}</strong></font>
<button class="set_btn_def" onclick="hideShowDiv('AddFAQ');">Добавить вопрос</button>
<div id="AddFAQ"  class="b-opinion" style="display:none; margin-top:20px;">
<form name="frmFAQ" method="post" id="frmFAQ">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td>
<div><label class="required">Ваше имя</label><br>
<input type="text" name="faq_name" id="faq_name" class="settings_inp"></div>
<div><label class="required">Вопрос</label><br>
<textarea name="question" class="settings_textarea" id="question" style="width:600px;"></textarea></div>
<div><button type="button" class="btn_reg" onclick="checkFAQfrm();">Отправить вопрос</button></div>
</td>
</tr>
</table>
</form>
</div>

<div style="font-size:22px; margin-top:30px;"><strong>Часто задаваемые вопросы</strong></div>
<div class="inner-margin">
            {FAQ_ROWS}
</div>


</div>	