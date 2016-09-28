<div id="popup-1" class="slickModal">
	<div class="window" id="wdt_win">
		<!-- Your popup content -->
		<div class="wrap demo-1">
			<div class="title">{WDT_EDT_W_TITLE}</div>
			<p>{WDT_EDT_W_TEXT}</p>
			<form method="post" action="{WDT_ACTION}" target="widget_iframe" id="WdtFrm">
				<input type="text" name="wdt_email" class="field" placeholder="{WDT_EDT_INP_PLACE}" />
				<input type="submit" class="closeModal send" name="wdt_btn_save" value="{WDT_EDT_BTN_TEXT}" />
			</form>
			<label class="deny closeModal">{WDT_EDT_CLOSE_TEXT}</label>
			{WDT_COPYRIGHT}
		</div>
		<div class="cta demo-1">
			<span class="icon"></span>
			<p>Самые свежие новости <span>WitgetService.com</span></p>
		</div>
		<!-- / Your popup content -->
	</div>
</div>
<div class="openSlickModal-1 manualLabel" id="ModalBtn">Показать еще раз</div>
<p><a class="manualLabel" href="http://witgetservice.com/" style="text-decoration:none;" >Перейти на сайт WitgetService.com</a></p>



<link rel="stylesheet" type="text/css" href="http://witgetservice.com/wdt/css/sm.css" media="screen" />
<style>
.window * {
	font-family: 'Raleway', sans-serif;
	font-weight: 300;
	-moz-border-radius:{WDT_EDT_W_RADIUS}px;
	-webkit-border-radius:{WDT_EDT_W_RADIUS}px;
	border-radius:{WDT_EDT_W_RADIUS}px;
}
.window .wrap.demo-1 {
	left: 0;
	width: 60%;
	height: 100%;
	background: {WDT_EDT_W_COLOR_HEX};
	text-align: left;
	padding: 30px;
	display: inline-block;
	float: left;
}
.window .wrap.demo-1:after {
	transform: rotateZ(-90deg);
	border-color: #fff transparent transparent transparent;
	bottom: auto;
	top: 222px;
	left: auto;
	right: -24px;
}
.window .wrap.demo-1 .title {
	color: {WDT_EDT_TITLE_COLOR};
	padding-bottom: 22px;
}
.window .wrap.demo-1 p {
	font-size: 12px;
	padding-bottom: 22px;
	text-align: left;
	color:{WDT_EDT_TEXT_COLOR};
}
.window .wrap.demo-1 .deny {
	display: block;
	font-size: 9px;
	padding-top: 14px;
	color: {WDT_EDT_TEXT_COLOR};
	font-weight: 300;
}
.window .wrap.demo-1 input.send {
	background: {WDT_EDT_BTN_COLOR};
	color: #fff;
	font-weight: 900;
	font-size: 16px;
	text-align: center;
	padding: 8px 12px;
	width: 100%;
	margin-top: 10px;
	display: block;
	cursor: pointer;
}
</style>

<link href='http://fonts.googleapis.com/css?family=Raleway:300,700' rel='stylesheet' type='text/css'>
<style type="text/css">
#container h2,p{text-align:center}
.demo-lb,.manualLabel{color:#fff}
.demo-lb,.manualLabel,h1{display:block;font-weight:700!important;text-align:center}
body{position:relative;width:100%;height:100%;margin:0;padding:0;border:0;outline:0;font-weight:400;font-style:normal;font-size:100%;vertical-align:baseline;line-height:normal;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
.manualLabel{margin:0 10px;width:200px;height:52px;line-height:52px;font-size:12px;background:#000;cursor:pointer;text-transform:uppercase;opacity:.4;display:inline-block;}
.manualLabel:hover{opacity:1}
p{font-size:13px!important}
.demo-lb{bottom:-1px;border-radius:0 0 4px 4px;width:100%;background:#4570ac;font-size:22px!important;padding:10px!important;margin-top:30px!important}
.demo-lb,.manualLabel,h1,h2,p,.window a.docs{font-family:Raleway,sans-serif!important}
.demo-lb:hover{background:#396197}
h1{font-size:30px!important;border-bottom:solid 1px #ddd!important;padding-bottom:24px!important;margin-bottom:24px!important;color:#333}
#container{text-align:center;bottom:0;height:340px;left:0;margin:auto;position:fixed;right:0;top:0;width:800px}
#container p{font-size:13px!important;line-height:18px;padding-bottom:20px}
#container h2{font-size:18px;font-weight:200}
.window a.docs{position: absolute;bottom:26px;left:0;right:0;text-align:center;display:inline-block;font-weight:700;color:#999;font-size:12px;}
#window a.docs:hover{color:#000;}
</style>

<script type="text/javascript" src="http://witgetservice.com/wdt/js/jquery.slick-modals.min.js"></script>
<script>
// Plugin invoke
$(document).ready(function () {
    $("#popup-1").slickModals({
        // Functionality
        popupType: "delayed",
        delayTime: {WDT_EDT_SPEED},
        exitTopDistance: 40,
        scrollTopDistance: 400,
        setCookie: true,
        cookieDays: 0,
        cookieTriggerClass: "setCookie-1",
        cookieName: "slickModal-1",

        // Overlay options
        overlayBg: true,
        overlayBgColor: "rgba({WDT_EDT_BG_COLOR},0.95)",
        overlayTransition: "ease",
        overlayTransitionSpeed: "0.4",

        // Background effects
        bgEffect: "scale",
        blurBgRadius: "2px",
        scaleBgValue: "0.9",

        // Window options
        windowWidth: "560px",
        windowHeight: "300px",
        windowLocation: "{WDT_EDT_W_LOCATION}",
        windowTransition: "ease",
        windowTransitionSpeed: "0.4",
        windowTransitionEffect: "rotateIn",
        windowShadowOffsetX: "0",
        windowShadowOffsetY: "0",
        windowShadowBlurRadius: "20px",
        windowShadowSpreadRadius: "0",
        windowShadowColor: "rgba(0,0,0,0)",
        windowBackground: "rgba({WDT_EDT_W_COLOR},1)",
        windowRadius: "{WDT_EDT_W_RADIUS}px",
        windowMargin: "0",
        windowPadding: "0",

        // Close and reopen button
        closeButton: "icon",
        reopenClass: "openSlickModal-1",
    });
	InitTimer = setTimeout(function () {
            $('#ModalBtn').click();
        },
        {WDT_EDT_START_TIME});
});

</script>