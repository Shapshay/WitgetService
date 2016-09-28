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
		'images/mi7_a.jpg'
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
			//lastImg.onload = function() { document.body.removeChild(document.body.lastChild); };
			lastImg.onload = function() { document.body.removeChild(div); };
		 }
		 catch(e) {
			// Error. Do nothing.
		}
	}
});

-->
</script>
<script src="js/jquery.dotdotdot.min.js" type="text/javascript"></script>
<!-- ALERT -->
<link rel="stylesheet" href="inc/swetalert/sweetalert.css" />
<script src="inc/swetalert/sweetalert.min.js"></script>  
<!-- /ALERT -->

<!-- Yandex.Metrika counter --><script type="text/javascript">(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter30613447 = new Ya.Metrika({id:30613447, webvisor:true, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");</script><noscript><div><img src="//mc.yandex.ru/watch/30613447" style="position:absolute; left:-9999px;" alt="" /></div></noscript><!-- /Yandex.Metrika counter -->

</head>
<body>
<div  style="display:none;" id="tmp_name"><template style="display:none;">Внутреняя без линков</template></div>
<script type="text/javascript">
	$("#tmp_name").hide();
</script>
<div class="columns">
<!-- left_colum -->
<div class="colum left_colum">
<div class="l_top"></div>
<div class="sled"></div>
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
<!-- page title -->
<div class="title">
<h1><span>{PAGE_TITLE}</span></h1>
</div>
<!-- page title -->
<!-- main -->
<div class="main2">
{CONTENT}
</div>
<!-- /main -->
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
</div>

</div>
<!-- /right_colum -->
</div>
</body>
</html>
