var strVar="";
strVar += "<div id=\"popup-1\" class=\"slickModal\">";
strVar += "	<div class=\"window\" id=\"wdt_win\">";
strVar += "		<!-- Your popup content -->";
strVar += "		<div class=\"wrap demo-1\">";
strVar += "			<div class=\"title\">{WDT_EDT_W_TITLE}<\/div>";
strVar += "			<p>{WDT_EDT_W_TEXT}<\/p>";
strVar += "			<form method=\"post\" action=\"{WDT_ACTION}\" target=\"widget_iframe\" id=\"WdtFrm\">";
strVar += "				<input type=\"text\" name=\"wdt_email\" class=\"field\" placeholder=\"{WDT_EDT_INP_PLACE}\" \/>";
strVar += "				<input type=\"submit\" class=\"closeModal send\" name=\"wdt_btn_save\" value=\"{WDT_EDT_BTN_TEXT}\" \/>";
strVar += "			<\/form>";
strVar += "			<label class=\"deny closeModal\">{WDT_EDT_CLOSE_TEXT}<\/label>{WDT_COPYRIGHT}";
strVar += "		<\/div>";
strVar += "		<div class=\"cta demo-1\">";
strVar += "			<span class=\"icon\"><\/span>";
strVar += "			<p>Самые свежие новости <span>WitgetService.com<\/span><\/p>";
strVar += "		<\/div>";
strVar += "		<!-- \/ Your popup content -->";
strVar += "	<\/div>";
strVar += "<\/div>";
strVar += "<div class=\"openSlickModal-1 manualLabel\" id=\"ModalBtn\" style=\" display:none;\">Показать еще раз<\/div>";
strVar += "<p><a class=\"manualLabel\" href=\"http:\/\/witgetservice.com\/\" style=\"text-decoration:none;display:none;\" >Перейти на сайт WitgetService.com<\/a><\/p>";
strVar += "";
strVar += "";
strVar += "";
strVar += "<link rel=\"stylesheet\" type=\"text\/css\" href=\"http:\/\/witgetservice.com\/wdt\/css\/sm.css\" media=\"screen\" \/>";
strVar += "<style>";
strVar += ".window * {";
strVar += "	font-family: 'Raleway', sans-serif;";
strVar += "	font-weight: 300;";
strVar += "	-moz-border-radius:{WDT_EDT_W_RADIUS}px;";
strVar += "	-webkit-border-radius:{WDT_EDT_W_RADIUS}px;";
strVar += "	border-radius:{WDT_EDT_W_RADIUS}px;";
strVar += "}";
strVar += ".window .wrap.demo-1 {";
strVar += "	left: 0;";
strVar += "	width: 60%;";
strVar += "	height: 100%;";
strVar += "	background: {WDT_EDT_W_COLOR_HEX};";
strVar += "	text-align: left;";
strVar += "	padding: 30px;";
strVar += "	display: inline-block;";
strVar += "	float: left;";
strVar += "}";
strVar += ".window .wrap.demo-1:after {";
strVar += "	transform: rotateZ(-90deg);";
strVar += "	border-color: #fff transparent transparent transparent;";
strVar += "	bottom: auto;";
strVar += "	top: 222px;";
strVar += "	left: auto;";
strVar += "	right: -24px;";
strVar += "}";
strVar += ".window .wrap.demo-1 .title {";
strVar += "	color: {WDT_EDT_TITLE_COLOR};";
strVar += "	padding-bottom: 22px;";
strVar += "}";
strVar += ".window .wrap.demo-1 p {";
strVar += "	font-size: 12px;";
strVar += "	padding-bottom: 22px;";
strVar += "	text-align: left;";
strVar += "	color:{WDT_EDT_TEXT_COLOR};";
strVar += "}";
strVar += ".window .wrap.demo-1 .deny {";
strVar += "	display: block;";
strVar += "	font-size: 9px;";
strVar += "	padding-top: 14px;";
strVar += "	color: {WDT_EDT_TEXT_COLOR};";
strVar += "	font-weight: 300;";
strVar += "}";
strVar += ".window .wrap.demo-1 input.send {";
strVar += "	background: {WDT_EDT_BTN_COLOR};";
strVar += "	color: #fff;";
strVar += "	font-weight: 900;";
strVar += "	font-size: 16px;";
strVar += "	text-align: center;";
strVar += "	padding: 8px 12px;";
strVar += "	width: 100%;";
strVar += "	margin-top: 10px;";
strVar += "	display: block;";
strVar += "	cursor: pointer;";
strVar += "}";
strVar += "<\/style>";
strVar += "";
strVar += "<link href='http:\/\/fonts.googleapis.com\/css?family=Raleway:300,700' rel='stylesheet' type='text\/css'>";
strVar += "<style type=\"text\/css\">";
strVar += "#container h2,p{text-align:center}";
strVar += ".demo-lb,.manualLabel{color:#fff}";
strVar += ".demo-lb,.manualLabel,h1{display:block;font-weight:700!important;text-align:center}";
strVar += "body{position:relative;width:100%;height:100%;margin:0;padding:0;border:0;outline:0;font-weight:400;font-style:normal;font-size:100%;vertical-align:baseline;line-height:normal;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}";
strVar += ".manualLabel{margin:0 10px;width:200px;height:52px;line-height:52px;font-size:12px;background:#000;cursor:pointer;text-transform:uppercase;opacity:.4;display:inline-block;}";
strVar += ".manualLabel:hover{opacity:1}";
strVar += "p{font-size:13px!important}";
strVar += ".demo-lb{bottom:-1px;border-radius:0 0 4px 4px;width:100%;background:#4570ac;font-size:22px!important;padding:10px!important;margin-top:30px!important}";
strVar += ".demo-lb,.manualLabel,h1,h2,p,.window a.docs{font-family:Raleway,sans-serif!important}";
strVar += ".demo-lb:hover{background:#396197}";
strVar += "h1{font-size:30px!important;border-bottom:solid 1px #ddd!important;padding-bottom:24px!important;margin-bottom:24px!important;color:#333}";
strVar += "#container{text-align:center;bottom:0;height:340px;left:0;margin:auto;position:fixed;right:0;top:0;width:800px}";
strVar += "#container p{font-size:13px!important;line-height:18px;padding-bottom:20px}";
strVar += "#container h2{font-size:18px;font-weight:200}";
strVar += ".window a.docs{position: absolute;bottom:26px;left:0;right:0;text-align:center;display:inline-block;font-weight:700;color:#999;font-size:12px;}";
strVar += "#window a.docs:hover{color:#000;}";
strVar += "<\/style>";
strVar += "";
strVar += "<script type=\"text\/javascript\" src=\"http:\/\/witgetservice.com\/wdt\/js\/jquery.slick-modals.min.js\"><\/script>";
strVar += "<script>";
strVar += "$(document).ready(function () {";
strVar += "    $(\"#popup-1\").slickModals({";
strVar += "        popupType: \"delayed\",";
strVar += "        delayTime: {WDT_EDT_SPEED},";
strVar += "        exitTopDistance: 40,";
strVar += "        scrollTopDistance: 400,";
strVar += "        setCookie: true,";
strVar += "        cookieDays: 7,";
strVar += "        cookieTriggerClass: \"setCookie-1\",";
strVar += "        cookieName: \"slickModal-1\",";
strVar += "";
strVar += "        overlayBg: true,";
strVar += "        overlayBgColor: \"rgba({WDT_EDT_BG_COLOR},0.95)\",";
strVar += "        overlayTransition: \"ease\",";
strVar += "        overlayTransitionSpeed: \"0.4\",";
strVar += "";
strVar += "        bgEffect: \"scale\",";
strVar += "        blurBgRadius: \"2px\",";
strVar += "        scaleBgValue: \"0.9\",";
strVar += "";
strVar += "        windowWidth: \"560px\",";
strVar += "        windowHeight: \"300px\",";
strVar += "        windowLocation: \"{WDT_EDT_W_LOCATION}\",";
strVar += "        windowTransition: \"ease\",";
strVar += "        windowTransitionSpeed: \"0.4\",";
strVar += "        windowTransitionEffect: \"rotateIn\",";
strVar += "        windowShadowOffsetX: \"0\",";
strVar += "        windowShadowOffsetY: \"0\",";
strVar += "        windowShadowBlurRadius: \"20px\",";
strVar += "        windowShadowSpreadRadius: \"0\",";
strVar += "        windowShadowColor: \"rgba(0,0,0,0)\",";
strVar += "        windowBackground: \"rgba({WDT_EDT_W_COLOR},1)\",";
strVar += "        windowRadius: \"{WDT_EDT_W_RADIUS}px\",";
strVar += "        windowMargin: \"0\",";
strVar += "        windowPadding: \"0\",";
strVar += "";
strVar += "        closeButton: \"icon\",";
strVar += "        reopenClass: \"openSlickModal-1\",";
strVar += "    });";
strVar += "	InitTimer = setTimeout(function () {";
strVar += "            $('#ModalBtn').click();";
strVar += "        },";
strVar += "        {WDT_EDT_START_TIME});";
strVar += "});";
strVar += "<\/script>";
$('#widget_div').html(strVar);