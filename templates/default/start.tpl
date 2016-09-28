<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="{BASE_URL}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>{META_TITLE}</title>
<meta name="keywords" content="{META_KEY}">
<meta name="description" content="{META_DESC}">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="inc/jquery-1.7.1.js"></script>
<script src="inc/func.js" type="text/javascript"></script>
<!-- ALERT -->
<link rel="stylesheet" href="inc/swetalert/sweetalert.css" />
<script src="inc/swetalert/sweetalert.min.js"></script> 
<script>
$(document).ready(function(){
	$("a[href*=#]").bind("click", function(e){
		var anchor = $(this);
		var name = anchor.attr("href").replace(new RegExp("#", "gi"), "");
		$('html, body').stop().animate({
			scrollTop: $("a[name=" + name + "]").offset().top
		}, 500);
		e.preventDefault();
		return false;
	});
});
</script> 
<!-- /ALERT -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66106929-2', 'auto');
  ga('send', 'pageview');
</script>

<!-- Rating@Mail.ru counter -->
<script type="text/javascript">
var _tmr = window._tmr || (window._tmr = []);
_tmr.push({id: "2739251", type: "pageView", start: (new Date()).getTime()});
(function (d, w, id) {
  if (d.getElementById(id)) return;
  var ts = d.createElement("script"); ts.type = "text/javascript"; ts.async = true; ts.id = id;
  ts.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//top-fwz1.mail.ru/js/code.js";
  var f = function () {var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ts, s);};
  if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); }
})(document, window, "topmailru-code");
</script><noscript><div style="position:absolute;left:-10000px;">
<img src="//top-fwz1.mail.ru/counter?id=2739251;js=na" style="border:0;" height="1" width="1" alt="Рейтинг@Mail.ru" />
</div></noscript>
<!-- //Rating@Mail.ru counter -->

<script type="text/javascript">(window.Image ? (new Image()) : document.createElement('img')).src = location.protocol + '//vk.com/rtrg?r=ldx2zW2mMgzEn6epwOJCLwyW2UO1kkxnm1WcvmTAZ5bhalR3xdqkl3VEgMzycNqQORWNxCbj9drfrItRDfm7cqbEyInQtsNuLa7oSFJvTPNehao2iInc*EXUm2Mt/mgotjmB0xOtUCZC6fwpK7C3GXaTysDaMO6v/cglx2/o*yk-';</script>
</head>
<body>
<div  style="display:none;" id="tmp_name"><template style="display:none;">Главная</template></div>
<script type="text/javascript">
	$("#tmp_name").hide();
</script>
	
	<!-- top-header -->
	<header class="top-header">
		<div class="container">
			<!-- logo -->
			<div class="logo">
				<a href="/">
					<h1 class="top-header__title">Witget Service</h1>
				</a>
				<p class="logo__description">Виджеты <br> на любой случай</p>
			</div>
			<!-- end logo -->
			<!-- user-buttons -->
			<div class="user-buttons">
				{REG_ENTER}
			</div>
			<!-- end-buttons -->
			<!-- top-menu -->
			<nav class="top-menu">
				<ul class="top-menu__list">
					<li><a href="#scroll-about-us">Что это?</a></li>
					<li><a href="#scroll-features">Преимущества</a></li>
					<li><a href="#scroll-faq">Faq</a></li>
				</ul>
			</nav>
			<!-- end top-menu -->
		</div>
	</header>
	<!-- end top-header -->

	<!-- main -->
	<section class="main">
		<div class="container">
			<h2 class="main__title">Не теряйте клиентов</h2>
			<!-- social -->
			<!--<ul class="social">
				<li class="social__vk"><a href="#"></a></li>
				<li class="social__fb"><a href="#"></a></li>
				<li class="social__tw"><a href="#"></a></li>
				<li class="social__odn"><a href="#"></a></li>
				<li class="social__skp"><a href="#"></a></li>
			</ul>-->
			<!-- end social -->
			<p class="main__text">Потенциальные клиенты уходят с сайта? Не теряйте их!</p>
			<p class="main__text">Witget service отслеживает уходящих клиентов и делает максимально подходящее предложение</p>
			<div class="main__btn">Попробовать сейчас</div>
		</div>
	</section>
	<!-- end-main -->
	
	<!-- main-bottom -->
	<div class="main-bottom">
		<div class="container">
			<p class="main-bottom__text">Здесь должна находится кнопка “Попробовать сейчас”, но ее здесь нет потому что мы предлагаем вам сделать осознанный выбор!Зато есть кнопка “Узнать подробнее” </p>
			<!-- button -->
			<div class="main-bottom__wrapper">
				<a href="#scroll-about-us" class="button button--yellow">Узнать подробнее</a>
			</div>
			<!-- end button -->
		</div>
	</div>
	<!-- end main-bottom -->

	<!-- about-us -->
	<section id="scroll-about-us" class="about-us">
		<div class="container">
			<div class="about-us__text">
				<h2 class="about-us__title"><a name="scroll-about-us"></a>Что такое Witget Service?</h2>
				<p class="about-us__description">Если коротко, то Witget Service - это виджеты, которые дают возможность показывать пользователю специальное предложение в самый подходящий для него момент, увеличивая вероятность превращения посетителя в покупателя</p>
				<a href="#scroll-features" class="button button--yellow">Преимущества</a>
			</div>
			<div class="about-us__img">
				<img src="img/about-us__monitor.png" alt="ЧТО ТАКОЕ WITGET SERVICE">
			</div>
		</div>
	</section>
	<!-- end about-us -->
	
	<!-- features -->
	<a name="scroll-features"></a>
	<section id="scroll-features" class="features">
		<div class="container">
			<h2 class="features__title"><span>Приемущества </span>Witget Service</h2>

			<div class="features__items">
				<div class="features__item">
					<div class="features__img"><i class="i-tools"></i></div>
					<p class="features__text">Любой витжет обладает гибкими настройками, поэтому будет гармонично смотреться на вашем сайте</p>
				</div>
				<div class="features__item">
					<div class="features__img"><i class="i-notes"></i></div>
					<p class="features__text">Множество витжетов: Формы подписки, формы с акциями, социальные витжеты, обратный звонок</p>
				</div>
				<div class="features__item">
					<div class="features__img"><i class="i-graph"></i></div>
					<p class="features__text">Подробная статистика покажет данные на всех этапах воронки продаж</p>
				</div>
				<div class="features__item">
					<div class="features__img"><i class="i-loop"></i></div>
					<p class="features__text">Наши витжеты абсолютно не мешают поисковому продвижению ( SEO )</p>
				</div>

			</div>
		</div>
	</section>
	<!-- end features -->
	
	<!-- try-use -->
	<section class="try-use">
		<div class="container">
			<h2 class="try-use__title">Начните пользоваться Witget Service</h2>
			<a href="javascript:ShowRegModal();" class="button button--yellow">Попробовать бесплатно 15 дней</a>
		</div>
	</section>
	<!-- end try-use -->

	<!-- faq -->
	<section id="scroll-faq" class="faq">
		<div class="container">
			<h2 class="faq__title">Часто задаваемые вопросы</h2>

			<div class="faq__questions">
				<p class="faq__question">
					<i class="i-tringle"></i>
					Какие гарантии я получу используя ваши витжеты ?
				</p>
				<p class="faq__answer">Если за первый месяц вы не увидите результат, мы вернем вам деньги</p>
			</div>

			<div class="faq__questions">
				<p class="faq__question">
					<i class="i-tringle"></i>
					Будут ли витжеты раздражать пользователя и наращивать негатив ?
				</p>
				<p class="faq__answer">Наши витжеты имеют очень гибкую настройку, которая позволяет вам настраить витжет так, чтобы не раздражать пользователя</p>
			</div>

			<div class="faq__questions">
				<p class="faq__question">
					<i class="i-tringle"></i>
					КАК мне установить код у себя на сайте ?
				</p>
				<p class="faq__answer">Все очень просто, нужно вставить код на нужные страницы вашего сайта и запустить витжет. Также наша техническая поддержка может помочь вам в установке кода.</p>
			</div>

			<!--<div class="faq__questions">
				<p class="faq__question">
					<i class="i-tringle"></i>
					Какие гарантии я получу используя ваши витжеты ?
				</p>
				<p class="faq__answer">Если за первый месяц вы не увидите результат, мы вернем вам деньги</p>
			</div>-->
		</div>
	</section>
	<!-- end faq -->
	
	<!-- price -->
	<section class="price">
		<div class="container">
			<h2 class="price__title">Тарифы</h2>
			<div class="price__items">
				<div class="price__item price__item--basic">
					<h3 class="price__item-title">Basic</h3>

					<div class="price__item-text">
						<p class="price__item-left">Количество виджетов</p>
						<p class="price__item-right">1</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Количество сайтов</p>
						<p class="price__item-right">1</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Тех. поддержка</p>
						<p class="price__item-right">есть</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Убрать копирайт</p>
						<p class="price__item-right">нет</p>
					</div>
					
					<div class="price__item-text">
						<p class="price__item-left">Цена</p>
						<p class="price__item-right">660 р/мес</p>
					</div>
					
					<a href="javascript:ShowRegModal();" class="button button--yellow">Попробовать бесплатно</a>
				</div>

				<div class="price__item price__item--middle">
					<h3 class="price__item-title">Middle</h3>

					<div class="price__item-text">
						<p class="price__item-left">Количество виджетов</p>
						<p class="price__item-right">10</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Количество сайтов</p>
						<p class="price__item-right">5</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Тех. поддержка</p>
						<p class="price__item-right">есть</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Убрать копирайт</p>
						<p class="price__item-right">нет</p>
					</div>
					
					<div class="price__item-text">
						<p class="price__item-left">Цена</p>
						<p class="price__item-right">1320 р/мес</p>
					</div>
					
					<a href="javascript:ShowRegModal();" class="button button--yellow">Попробовать бесплатно</a>
				</div>

				<div class="price__item price__item--premium">
					<h3 class="price__item-title">Premium</h3>

					<div class="price__item-text">
						<p class="price__item-left">Количество виджетов</p>
						<p class="price__item-right">20</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Количество сайтов</p>
						<p class="price__item-right">10</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Тех. поддержка</p>
						<p class="price__item-right">есть</p>
					</div>

					<div class="price__item-text">
						<p class="price__item-left">Убрать копирайт</p>
						<p class="price__item-right">есть</p>
					</div>
					
					<div class="price__item-text">
						<p class="price__item-left">Цена</p>
						<p class="price__item-right">4193 р/мес</p>
					</div>
					
					<a href="javascript:ShowRegModal();" class="button button--yellow">Попробовать бесплатно</a>
				</div>
			</div>
		</div>
	</section>
	<!-- end price -->

	<!-- reviews -->
	<section class="reviews">
		<div class="container">
			<h2 class="reviews__title">Отзывы</h2>
			
			<div class="reviews__slider">

				{STRAH_OTZYV}

			</div>
			
		</div>
	</section>

	<!-- footer -->
	<footer class="main-footer">
		<div class="container">
			<!-- contacts -->
			<ul class="main-footer__contacts">
				<!--<li>
					<i class="i-telephone"></i>
					<p class="main-footer__telephone">+7 (778) 193 46 28</p>
				</li>-->
				<li>
					<i class="i-email"></i>
					<a href="mailto:info@witgetservice.com" class="main-footer__email">info@witgetservice.com</a>
				</li>
			</ul>
			<!-- end contacts -->
			<!-- social -->
			<!--<ul class="social">
				<li class="social__vk"><a href="#"></a></li>
				<li class="social__fb"><a href="#"></a></li>
				<li class="social__tw"><a href="#"></a></li>
				<li class="social__odn"><a href="#"></a></li>
				<li class="social__skp"><a href="#"></a></li>
			</ul>-->
			<!-- end social -->
		</div>
	</footer>
	<!-- end footer -->
	
	<!-- ========== START MODAL ========== -->
	<div id="popup-1" class="slickModal">
		<div class="window">
			{REG}
		</div>
	</div>
	
	<div id="popup-2" class="slickModal">
		<div class="window" id="FormEnterDiv">
			<div id="reg_modal_title">Вход на сайт</div>
			<div class="content" style="height: 306px;">
				<div class="message"{ENT_RESULT_STYLE}>{REG_ENT_ERR}</div>
				<div style="{SHOW_E_FORM}">
					<!--<center>
					<div class="text4" style="margin-top:25px;">
						Авторизуйтесь<br />
						через социальную сеть
					</div>
					</center>
					<div>
					<script src="//ulogin.ru/js/ulogin.js"></script>
					<div id="uLogin" data-ulogin="display=panel;fields=first_name,last_name,email,network,phone;providers=vkontakte,facebook;hidden=;redirect_uri=http%3A%2F%2Fwitgetservice.com"></div> -->
		
					<form action="/" method="post" style="left: 130px; margin-top:20px;" name="frmAuth">
						<input type="hidden" name="type_reg" value="1" />
						<input type="hidden" name="chk_save" value="1" />
						<div><input type="text" name="e_email" placeholder="Введите e-mail" class="RegFormInp"></div>
						<div><input type="password" name="e_password" placeholder="Введите пароль" class="RegFormInp"></div>
						<div><button type="submit" class="btn_reg">Вход на сайт</button></div>
						<div class="text9" style="left: 120px; margin-top:10px;"><a href="javascript:ShowRemModal();" window="login_rem_window" id="rem_link">Забыли пароль?</a></div>
					</form>
					</div>
				</div>
			</div>
			{ENT_DIV_HIDE}
		</div>
	</div> 
	
	<div id="popup-3" class="slickModal">
		<div class="window" id="FormRemDiv">
			<div id="reg_modal_title">Востановление пароля</div>
			<div class="content" style="height: 260px;">
				<div class="message"{REM_RESULT_STYLE}>{REM_ERR}</div>
				<div style="{SHOW_REM_FORM}">
					<form action="/" method="post" style="left: 130px; margin-top:20px;" name="RemForm" id="RemForm">
						<div><input type="text" name="rem_email"  id="rem_email" placeholder="Введите e-mail" class="RegFormInp"></div>
						
						<div><button type="button" name="submit_rem" onclick="checkFieldsRem(document.RemForm, $('#msg').val());" class="btn_reg">Востановить пароль</button></div>
					</form>
				</div>
			</div>
		</div>
		{REM_DIV_HIDE}
	</div>
	<!-- ========== END MODAL ========== -->
	
	
	<!-- JS -->
	<script src="js/main.js"></script>
	<!-- Slick Modals stylesheet -->
<link rel="stylesheet" type="text/css" href="inc/modal/css/sm.css" media="screen" />
<script type="text/javascript" src="inc/modal/js/jquery.slick-modals.min.js"></script>

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter34971995 = new Ya.Metrika({id:34971995,
                    webvisor:true,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });

    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/34971995" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
</body>
</html>
