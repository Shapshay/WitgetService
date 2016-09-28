<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="{BASE_URL}">
<link rel="icon" href="../favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel=stylesheet href="stylles.css" type="text/css">
<title>{META_TITLE}</title>
<meta name="keywords" content="{META_KEY}">
<meta name="description" content="{META_DESC}">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<meta name=viewport content="width=1000">
<!-- Google Fonts embed code -->
<script type="text/javascript">
	(function() {
		var link_element = document.createElement("link"),
			s = document.getElementsByTagName("script")[0];
		if (window.location.protocol !== "http:" && window.location.protocol !== "https:") {
			link_element.href = "http:";
		}
		link_element.href += "//fonts.googleapis.com/css?family=Cuprum:400italic,400,700italic,700";
		link_element.rel = "stylesheet";
		link_element.type = "text/css";
		s.parentNode.insertBefore(link_element, s);
	})();
</script>
<link rel=stylesheet href="reset.css" type="text/css">
<link rel=stylesheet href="styles.css" type="text/css">
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="inc/func.js"></script>
<script type="text/javascript">
<!--
jQuery(document).ready(function(){
	// preload images
    preload([
		'images/mi8_a.jpg',
		'images/mi2_a.jpg',
		'images/mi3_a.jpg',
		'images/mi4_a.jpg',
		'images/mi5_a.jpg',
		'images/mi6_a.jpg',
		'images/mi7_a.jpg',
		'images/close.png'
		]);

	function preload(images) {
		if (typeof document.body == "undefined") return;
		try {
	
			var div = document.createElement("div");
			var s = div.style;
				s.position = "absolute";
			s.top = s.left = 0;
			s.visibility = "hidden";
			document.body.appendChild(div);
			div.innerHTML = "<img src=\"" + images.join("\" /><img src=\"") + "\" />";
			var lastImg = div.lastChild;
			lastImg.onload = function() { document.body.removeChild(document.body.lastChild); };
		 }
		 catch(e) {
			// Error. Do nothing.
		}
	}
});
-->
</script>
<!-- ALERT -->
<link rel="stylesheet" href="inc/swetalert/sweetalert.css" />
<script src="inc/swetalert/sweetalert.min.js"></script>  
<!-- /ALERT -->
<script>
function OtzyvAddQuery(){
	var OtzyvPage = $('#OtzyvPage').val();
	$.post("modules/strah_otzyv/add_row.php", {OtzyvPage: OtzyvPage}, 
		function(data){
			//alert(data);
			var obj = jQuery.parseJSON(data);
			if(obj.result=='OK'){
				
				$('#OtzyvDiv').append(obj.otzyvy);
				$('#OtzyvPage').val(obj.page);
				
				var oldH = $('.div_otzyv_left').height();
				var newH = oldH + 400;
				$('.div_otzyv_left').height(newH);
				
				var oldH = $('.div_otzyv').height();
				var newH = oldH + 400;
				$('.div_otzyv').height(newH);
				if(obj.end=='Y'){
					$('#div_otzyv_kn').hide();
				}
				
			}
			else{
				swal("Ошибка!", "Соединение с базой потеряно  !", "error"); 
			}
			
			
		});
	
}

</script>

<!-- Yandex.Metrika counter --><script type="text/javascript">(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter30613447 = new Ya.Metrika({id:30613447, webvisor:true, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");</script><noscript><div><img src="//mc.yandex.ru/watch/30613447" style="position:absolute; left:-9999px;" alt="" /></div></noscript><!-- /Yandex.Metrika counter -->

</head>
<body>
<div  style="display:none;" id="tmp_name"><template style="display:none;">Страховка</template></div>
<script type="text/javascript">
	$("#tmp_name").hide();
</script>
<!-- MODAL -->
<div class="FullHide"></div>
<div class="ModalCall" id="ModalCall">
<button class="close" onClick="hideShowDiv('ModalCall');"></button>
{ORDER_CALL}
</div>
<!-- /MODAL -->
<div class="columns">
<!-- left_colum -->
<div class="colum left_colum">
<div class="l_top"></div>
<div class="sled"></div>
<div class="div_blu_left">
</div>
<div class="vaghno_left">
</div>
<div class="bonus_left">
</div>
<div class="dannye_left">
</div>
<!--trishaga-->
<div class="trishaga_left">
</div>
<!--/trishaga-->
<div class="div_otzyv_left">
</div>
<div class="video_right">
</div>
<div class="dannye3_left">
</div>
<div class="spez_left">
</div>
</div>

<!-- /left_colum -->
<!-- site -->
<div class="site">
<!-- header -->
<div class="header">
</div>
<!-- /header -->
<!-- navigation -->
<div class="navigation" style="padding-left:150px;">
<a href="/" title="Штрафы"><div class="menu_item mi8"></div></a>
<a href="/avtonovosti/" title="Новости"><div class="menu_item mi2"></div></a>
<a href="/sovety_avtomobilistam/" title="Советы автомобилистам"><div class="menu_item mi3"></div></a>
<a href="/strahovanie/" title="Страхование"><div class="menu_item mi4"></div></a>
<a href="/test_draivy/" title="Тест-драйвы"><div class="menu_item mi5"></div></a>
<!-- <a href="/otzyvy" title="Отзывы"><div class="menu_item mi6" style="display:none;"></div></a>
<a href="/forum" title="Форум"><div class="menu_item mi7" style="display:none;"></div></a> -->
<div class="menu_end"></div>
</div>
<!-- /navigation -->
<div class="clear"></div>
<!-- content -->
<div class="content">
<div class="menu_bot">
</div>




<!--titul-->
<div class="in_top">
<!-- page title -->
<div class="title">
<h1><span class="cvet">Автострахование</span></h1>
</div>
<div align="center" class="div_text">
Бесплатная доставка по Алматы и Алматинской области
</div>
<div align="center" class="div_text_tel">
+7 (727) 350 60 20
</div>
<div align="center">
<input type="button" value="Заказать звонок" class="kn_zvon" onClick="hideShowDiv('ModalCall');">

</div>
<!-- page title -->
</div>
<!--/titul-->

<!--regis-->

<div class="div_blu" align="center">
<form method="post" id="CallForm1">
<div style="padding-top:45px;">
<font class="reg_text">Введите данные </font>
<P style="padding-top:15px;"><font class="reg_text2">и получите выгодное предложение по автострахованию</font>
</div>
<div style="padding:55px 0px 0px 100px;">
<input type="text" placeholder="Ваше имя" class="reg" hspace="10" name="name" id="name1"><input type="text" placeholder="Ваш телефон" class="reg" name="phone" id="phone1">
</div>
<div>
<input type="button" value="Получить выгодное предложение" class="kn_black" onclick="checkFieldsSend('CallForm1','1');" />
</div>
</form>
</div>

<!--/regis-->

<!--devica-->
<div class="dama">
  <img src="images/devica.png" width="418" height="715" />
  </div>
<!--/devica-->
<!--vaghno-->
<div class="vaghno">
<div class="vaghno_txt"  align="center" >
<p><font class="vaghno_titul">Обязательно прочтите!</font></p>
<p><font>Сейчас в Казахстане участилось мошеничество в автостраховании, псевдостраховщики предлагают сделать полис по нереально низкой цене. В следствии этого, при проверке страховки инспекторами ДПС, обнаруживается факт <br />подделки и автомобилист получает штраф в 40000тг. Или рассмотрим другой вариант, псевдостраховщик оформит Ваш автомобиль как областной, но при ДТП страховая компания откажет Вам в страховой выплате. Мы заявляем, что если страховой полис, оформленный в Авто Клубе Казахстанана, не будет официально зарегистрирован в базе ЕСБД, компания Автоклуб Казахстана обязуется выплатить клиенту сумму в 3-кратном размере от стоимости страхового полиса!</font></p></div>
</div>
<!--/vaghno-->
<!--bonus-->
<div class="bonus">
<div class="bonus1">
<div class="bonus_text" align="center">
<p><font class="vaghno_titul">Бонусы и подарки</font></p>
</div>
<div class="bonus_oblako" align="center">
  <img src="images/oblako.jpg" width="155" height="130" vspace="10">
  <p style="padding-top:20px">Смс-уведомление о полученных 
  <br />штрафах через камеры видеофиксации
  </div>
  <div class="bonus_kupon" align="center">
    <img src="images/5000.jpg" width="174" height="90" />
    <p style="padding-top:60px">Купон на эвакуатор номиналом <br />5000 тг. в подарок!
    </div>
    <div class="bonus_molot" align="center">
      <img src="images/molot.jpg" width="160" height="136" />
      <p style="padding-top:10px">Бесплатный консультации или  <br />выезд на место ДТП нашего  <br />автоюриста
      </div>
      <div class="bonus_polis" align="center">
        <img src="images/polis.jpg" width="99" height="133" />
        <p style="padding-top:30px">Полис Каско 
<br />(двухсторонняя страховка) <br />на сумму 60000тг в подарок!
        </div>
        <div class="bonus_karta" align="center">
          <img src="images/karta.jpg" width="164" height="106" />
          <p style="padding-top:60px">Получите клубную карту "Авто <br />Клуба Казахстана". Она позволит <br />Вам получать скидки у наших <br />партнеров!
          </div>

</div>
</div>
<!--/bonus-->



<div class="dannye" align="center">
<form method="post" id="CallForm2">
<div style=" padding-top:60px;">
<font class="reg_text_2">Введите данные </font>
<P style="padding-top:30px;"><font class="reg_text2_2">и получите выгодное предложение по автострахованию</font>
</div>
<div style="padding-top:30px;">
<input type="text" placeholder="Ваше имя" class="reg" hspace="10" name="name" id="name2"><input type="text" placeholder="Ваш телефон" class="reg" name="phone" id="phone2">
</div>
<div>
<input type="button" value="Получить выгодное предложение" class="kn_black" onclick="checkFieldsSend('CallForm2','2');" />
</div>
</form>
</div>



<!--trishaga-->
<div class="trishaga">
<div align="center" class="trishaga_text">
3 шага для получения выгодной автостраховки
</div>

<div>
<div class="trishaga_tel" align="center" style="padding-left:110px;">
  <img src="images/tel_krug.png" width="135" height="142" />
  <p>ВЫ НАМ ЗВОНИТЕ
<br />ИЛИ ОСТАВЛЯЕТЕ ЗАЯВКУ
  </div>

<div class="trishaga_stelka">
  <img src="images/strelka_krug.png" width="30" height="32" />
  </div>

<div class="trishaga_tel" align="center">
  <img src="images/oblako_krug.png" width="135" height="142" />
  <p>ПОЛУЧИТЕ ПОДРОБНУЮ <br />ИНФОРМАЦИЮ
  <p style="padding-top:20px;"><font class="trishaga_text2">от специалиста по выбору выгодного полиса</font>
  </div>

<div class="trishaga_stelka">
  <img src="images/strelka_krug.png" width="30" height="32" />
  </div>

<div class="trishaga_tel" align="center">
  <img src="images/polis_krug.png" width="135" height="142" />
  <p>ПОЛУЧИТЕ ВЫГОДНЫЙ <br />ПОЛИС 
  <p style="padding-top:20px;"><font class="trishaga_text2">C бесплатной доставкой 
на дом</font>
  </div>
</div>


<div align="center" style="padding-top:40px;">
<input type="button" class="trishaga_kn" onClick="hideShowDiv('ModalCall');">
</div>



</div>
<!--/trishaga-->



<div class="div_otzyv">

<div class="trishaga_text" align="center">
Отзывы наших клиентов
</div>

{STRAH_OTZYV}




</div>
<div class="video" align="center">
<p style="padding-top:80px;"><font class="video_text">Видео об Авто Клубе</font>
<p style="padding-top:40px;">
<iframe id="ytplayer" frameborder="0" allowfullscreen="1" title="YouTube video player" width="815" height="421" src="https://www.youtube.com/embed/mUlvUhMhiFk?controls=0&amp;rel=0&amp;showinfo=0&amp;enablejsapi=1&amp;origin=http%3A%2F%2Fstrahovka-avto.kz"></iframe>
</div>

<div class="dannye3" align="center">
<form method="post" id="CallForm3">
<div style=" padding-top:60px;">
<font class="reg_text_2">Введите данные </font>
<P style="padding-top:30px;"><font class="reg_text2_2">и получите выгодное предложение по автострахованию</font>
</div>
<div style="padding-top:30px;">
<input type="text" placeholder="Ваше имя" class="reg" hspace="10" name="name" id="name3"><input type="text" placeholder="Ваш телефон" class="reg" name="phone" id="phone3">
</div>
<div>
<input type="button" value="Получить выгодное предложение" class="kn_black" onclick="checkFieldsSend('CallForm3','3');" />
</div>
</form>
</div>



<div class="spez" style="padding-top:70px;">
<font style="padding:0px 180px 40px 0px;">Остались вопросы?</font><input type="button" class="kn_spez" align="absmiddle" onClick="hideShowDiv('ModalCall');">
</div>
</div>
<!-- /content -->
<!-- footer -->
<div class="footer">
<div class="copy">2015 ©  ТОО «Авто Клуб Казахстана»</div>
<div class="footer_soc"><a href="#"><img src="images/f_vkontakte.png" hspace="5" border="0" /></a><a href="#"><img src="images/f_facebook.png" hspace="5" border="0" /></a><a href="#"><img src="images/f_twiter.png" hspace="5" border="0" /></a><a href="#"><img src="images/f_ok.png" hspace="5" border="0" /></a></div>
</div>
<!-- /footer -->
</div>
<!-- /site -->
<!-- right_colum -->
<div class="colum right_colum">

<div class="r_top">
<div class="r_car"></div>
<div class="sled2">
</div>
<div class="div_blu_right">
</div>
<div class="vaghno_right">
</div>
<div class="bonus_right">
</div>
<div class="dannye_right">
</div>
<!--trishaga-->
<div class="trishaga_right">

</div>
<!--/trishaga-->
<div class="div_otzyv_left">
</div>
<div class="video_right">
</div>
<div class="dannye3_right">
</div>
<div class="spez_left">
</div>
</div>

</div>
<!-- /right_colum -->
</div>
</body>
</html>
