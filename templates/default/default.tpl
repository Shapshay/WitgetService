<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="{BASE_URL}">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href='https://fonts.googleapis.com/css?family=Cuprum:400,400italic,400bold,700,700italic,700bold' rel='stylesheet' type='text/css'>
<link rel=stylesheet href="style.css" type="text/css">
<title>{META_TITLE}</title>
<meta name="keywords" content="{META_KEY}">
<meta name="description" content="{META_DESC}">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<meta name=viewport content="width=1000">
<script type="text/javascript" src="inc/jquery-1.7.1.js"></script>
<script src="js/jquery.dotdotdot.min.js" type="text/javascript"></script>
<!-- ALERT -->
<link rel="stylesheet" href="inc/swetalert/sweetalert.css" />
<script src="inc/swetalert/sweetalert.min.js"></script>  
<!-- /ALERT -->
<script type="text/javascript" src="inc/zclip/jquery.zclip.min.js"></script>
{AUTH}
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

<div  style="display:none;" id="tmp_name"><template style="display:none;">Внутреняя</template></div>
<script type="text/javascript">
	$("#tmp_name").hide();
</script>
<header>
<div class="header">
<div class="logo"><a href="/"><img src="images/logo.png" border="0" /></a></div>
<div class="slogan">Виджеты<br />на любой случай</div>
<div class="head_links">
<a href="/suport">техподдержка</a>
<div class="cur_schet">
<span class="schet_title">Тариф: {CUR_TARIF}</span><br>
<span class="schet_date">{END_DATE}</span>
</div>
</div>
<div class="head_btns">{REG_ENTER}</div>
</div>
</header>
<main>
<navigation>
<div class="navigation">
<ul>
{MENU_SITE}
</ul>
</div>
</navigation>
<section class="widget_items">
{CONTENT}
</section>
</main>
<footer>
© Copyright 2016 Witget service. All Rights Reserved
</footer>

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
