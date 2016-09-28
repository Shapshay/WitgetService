function PswControl(){
	psw1 = $('#reg_password1').val();
	psw2 = $('#reg_password2').val();
	if(psw1!=psw2){
			$('#psw_img').attr("src",'images/krest_reg.png');
	}
	else{
		if(psw1==''){
			$('#psw_img').attr("src",'images/krest_reg.png');
		}
		else{
			$('#psw_img').attr("src",'images/gal_reg.png');
		}
	}
}
function PswControl2(){
	psw1 = $('#reg_password1').val();
	psw2 = $('#reg_password2').val();
	if(psw1!=psw2){
		swal("Ошибка заполнения формы", $('#msg2').val(), "error"); 
		return false;
	}
	else{
		return true;
	}
}

function isValidEmailAddress(emailAddress) {
	var pattern = /^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/;
    var result = pattern.test(emailAddress);
	if(!result){
		swal("Ошибка заполнения формы", $('#msg3').val(), "error"); 
		return false;
	}
	else{
		return true;
	}
}

// Check required fileds
function checkFieldsSample(user_form, msg, psw, color) {
	//alert('Sample');
	if (!color || color == '') color = '#FFF9DF';
	var err = -1;
	for (var i = 0; i < user_form.length; i++) {
		if (user_form[i].type == "text") user_form[i].style.background = '#FFFFFF';
	}
	
	for (var i = 0; i < user_form.length; i++) {
		if (user_form[i].type == "text" || user_form[i].type == "textarea" || user_form[i].type == "password") {
			if ((user_form[i].required == 1 || user_form[i].required == "yes") && user_form[i].value == '') {
				user_form[i].style.background = color;
				if(err==-1){
					err = i;
				}
			}
		}
	}
	if(err>=0){
		if (msg != '') alert(msg);
		user_form[err].focus();
		return false;	
	}
	if (psw){
		if(!UPswControl2()){
			return false;
		}	
	}
	$(user_form).submit();
	return true;
}

// Check required fileds
function checkFields(user_form, msg, color) {
	if (!color || color == '') color = '#FFF9DF';
	var err = -1;
	var send = true;
	var r_email = $('#r_email').val();
	for (var i = 0; i < user_form.length; i++) {
		if (user_form[i].type == "text") user_form[i].style.background = '#FFFFFF';
	}
	
	for (var i = 0; i < user_form.length; i++) {
		if (user_form[i].type == "text" || user_form[i].type == "textarea" || user_form[i].type == "password") {
			if ((user_form[i].required == 1 || user_form[i].required == "yes") && user_form[i].value == '') {
				user_form[i].style.background = color;
				if(err==-1){
					err = i;
				}
			}
		}
	}
	if(err>=0){
		if (msg != '') swal("Ошибка заполнения формы", msg, "error");
		user_form[err].focus();
		send = false;	
		return false;
	}
	if(!PswControl2()){
		send = false;	
		return false;
	}
	
	if(!isValidEmailAddress(r_email)){
		$('#r_email').focus();
		send = false;	
		return false;
	}
	if(send){
		$('#RegForm').submit();
	}
}

// Check required fileds
function checkFieldsRem(user_form, msg, color) {
	if (!color || color == '') color = '#FFF9DF';
	var rem_email = $('#rem_email').val();
	for (var i = 0; i < user_form.length; i++) {
		if (user_form[i].type == "text") user_form[i].style.background = '#FFFFFF';
	}
	
	for (var i = 0; i < user_form.length; i++) {
		if (user_form[i].type == "text" || user_form[i].type == "textarea" || user_form[i].type == "password") {
			if ((user_form[i].required == 1 || user_form[i].required == "yes") && user_form[i].value == '') {
				user_form[i].style.background = color;
				if (msg != '') swal("Ошибка заполнения формы", msg, "error");
				user_form[i].focus();
				return false;
			}
		}
	}
	
	if(!isValidEmailAddress(rem_email)){
		$('#rem_email').focus();
		return false;
	}
	$('#RemForm').submit();
	return true;
}

function ShowSub(DivID){
	var DivClose = document.getElementById(DivID);
	if (DivClose.style.display == 'none') {
		DivClose.style.display = '';
	} else {
		DivClose.style.display = 'none';
	}
	return false;
}

function setChecked(obj, obj2){
    var check = document.getElementsByName(obj2);
    for (var i=0; i<check.length; i++){
       check[i].checked = obj.checked;
    }
}


function ChangeBG(TD_ID, TDclass, Op){
    if(Op == 0){
		$('#'+TD_ID).removeClass(TDclass);
	}
	else{
		$('#'+TD_ID).addClass(TDclass);
	}
}
function hideShowDiv(DivID){
	$('.FullHide').toggle('fast');
	$('#'+DivID).toggle('slow');
}
function hideShowDivMAG(DivID){
	$('#fon').toggle('fast');
	$('#'+DivID).toggle('slow');
}
function hideShowDiv3(DivID){
	//alert ('YES');
      $('#'+DivID).toggle('slow');
}
function hideShowDiv2(DivID, Op){
      if(Op==1){
		   $('#'+DivID).show();
	  }
	  else{
		   $('#'+DivID).hide();
	  }
}
function hideShow2Div(DivID1,DivID2){
      $('#'+DivID1).toggle('slow');
	  $('#'+DivID2).toggle('slow');
}


function SendFrm(frm){
	$('#'+frm).submit();
}
function onlyNum(e){
	if ((e.keyCode < 48) || (e.keyCode > 57)){ 
		e.returnValue = false;
	}
}

// Check required fileds
function checkFieldsSend(FormID,ProdID) {
	var send = true;
	var name = $('#name'+ProdID).val();
	var phone = $('#phone'+ProdID).val();
	
	if(name==''){
		$('#name'+ProdID).focus();
		swal("Ошибка заполнения формы", "Введите имя !", "error"); 
		send = false;
		return false;
	}
	
	if(phone==''){
		$('#phone'+ProdID).focus();
		swal("Ошибка заполнения формы", "Введите телефон !", "error"); 
		send = false;
		return false;
	}
	
	if(send){
		$('#'+FormID).submit();
	}
}

function nice_scroll(a){ 
	a.wrap('<div class="scroll_cont"></div>');
	a.wrapInner('<div class="text_inner"></div>');
	a.parent('.scroll_cont').prepend('<div class="scrollbar_cont"><div class="scroll_pane"><div class="scroll_line"></div></div></div>');
	a.parent('.scroll_cont').append('<div class="scrollbar_cont_bg"></div>');
	a.parent('.scroll_cont').css('position','relative');
	a.parent('.scroll_cont').width(a.width()).height(a.height());
	a.parent('.scroll_cont').css('overflow','hidden');
	a.css('overflow-x','hidden').css('overflow-y','scroll');
	a.css('padding-right','20px');
	a.parent('.scroll_cont').children().children('.scroll_pane').height(a.parent('.scroll_cont').height());
	var b = a.children('.text_inner').height();
	a.parent('.scroll_cont').children().children('.scroll_pane').children('.scroll_line').height(a.height()/b*100+'%');
	a.scroll(function(){
		var p = $(this).scrollTop()/b*100;
			a.parent('.scroll_cont').children().children('.scroll_pane').children('.scroll_line').animate({top: p+'%'},100);
		});
	
}

// Check required fileds
function CheckComment(FormID) {
	var send = true;
	var name = $('#name').val();
	var comment = $('#comment').val();
	
	if(name==''){
		$('#name').focus();
		swal("Ошибка заполнения формы", "Введите имя !", "error"); 
		send = false;
		return false;
	}
	
	if(comment==''){
		$('#comment').focus();
		swal("Ошибка заполнения формы", "Введите комментарий !", "error"); 
		send = false;
		return false;
	}
	
	if(send){
		swal("Комментарий принят!", "Как только администратор утвердит комментарий он появится на сайте.", "success"); 
		setTimeout(function(){     $('#'+FormID).submit();   }, 3000);
	}
}

