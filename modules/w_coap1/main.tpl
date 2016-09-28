<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp5.js"></script>
<script>
var ulp_ajax_url = 'http://witgetservice.com/wdt/coap_ajax.php{WDT_U_ID}'; 
</script>
<style>
.ulp-overlay {
position: fixed;
z-index: 1000000;
top: 0px;
left: 0px;
height: 100%;
width: 100%;
display: none;
}
.ulp-window {
font-size: 14px;
font-family: arial, verdana;
position: fixed;
z-index: 1000001;
text-align: left;
display: none;
}
.ulp-inline-window {
font-size: 14px;
font-family: arial, verdana;
text-align: left;
display: none;
}
.ulp-content {
position: relative;
}
.ulp-layer {
position: absolute;
box-sizing: border-box;
-moz-box-sizing: border-box;
-webkit-box-sizing: border-box;
-o-box-sizing: border-box;
-khtml-box-sizing: border-box;
text-align: justify;
line-height: 1.475;
}
.ulp-layer img {
max-width: 100% !important;
min-width: 0px !important;
margin: 0 !important;
padding: 0 !important;
border: none !important;
box-shadow: none !important;
-webkit-box-shadow: none !important;
-moz-box-shadow: none !important;
-ms-box-shadow: none !important;
-o-box-shadow: none !important;
}
.ulp-input {
-moz-border-radius: 2px !important;
-webkit-border-radius: 2px !important;
-o-border-radius: 2px !important;
-ms-border-radius: 2px !important;
-khtml-border-radius: 2px !important;
border-radius: 2px !important;
vertical-align: middle !important;
border-width: 1px !important;
border-style: solid !important;
border-color: #888;
border-spacing: 0 !important;
clear: both !important;	
width: 100% !important;
margin: 0px !important;
-moz-box-sizing: border-box !important;
-webkit-box-sizing: border-box !important;
-ms-box-sizing: border-box !important;
box-sizing: border-box !important;
height: 100% !important;
background: #FFFFFF;
margin: 0 !important;
padding: 0px 6px !important;
line-height: 1.5 !important;
background: rgba(255,255,255,0.8);
-moz-box-shadow: none !important;
-webkit-box-shadow: none !important;
-o-box-shadow: none !important;
-ms-box-shadow: none !important;
box-shadow: none !important;
font-size: inherit !important;
}
.ulp-input-error {
background-image: url(http://witgetservice.com/wdt/images/error.png);
background-position: 100% 50%;
background-repeat: no-repeat;
border-color: red !important;
}
.ulp-submit, .ulp-submit:visited, .ulp-submit-button, .ulp-submit-button:visited {
text-decoration: none !important;
font-size: inherit !important;
text-shadow: 0 -1px 1px rgba(0,0,0,.25);
background-color: #019ad2;
background-repeat: repeat-x;
background-image: -moz-linear-gradient(#33bcef,#019ad2);
background-image: -ms-linear-gradient(#33bcef,#019ad2);
background-image: -webkit-linear-gradient(#33bcef,#019ad2);
background-image: -o-linear-gradient(#33bcef,#019ad2);
background-image: linear-gradient(#33bcef,#019ad2);
transition-duration: .3s;
-moz-transition-duration: .3s;
-webkit-transition-duration: .3s;
-o-transition-duration: .3s;
-khtml-transition-duration: .3s;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#33bcef',endColorstr='#019ad2',GradientType=0);
border: 1px solid #019ad2;
width: auto;
white-space: nowrap;
height: auto;
position: relative;
display: inline-block;
padding: 5px 20px;
line-height: 1.5;
cursor: pointer;
-moz-border-radius: 2px;
-webkit-border-radius: 2px;
-o-border-radius: 2px;
-ms-border-radius: 2px;
-khtml-border-radius: 2px;
border-radius: 2px;
margin: 0;
-webkit-box-shadow: none;
-moz-box-shadow: none;
-o-box-shadow: none;
-ms-box-shadow: none;
box-shadow: none;
}
.ulp-window a {
text-decoration: none !important;
}
.ulp-submit:hover, .ulp-submit:active, .ulp-submit-button:hover, .ulp-submit-button:active {
background-color:#0271bf;
background-repeat:repeat-x;
background-image:-moz-linear-gradient(#2daddc,#0271bf);
background-image:-ms-linear-gradient(#2daddc,#0271bf);
background-image:-webkit-linear-gradient(#2daddc,#0271bf);
background-image:-o-linear-gradient(#2daddc,#0271bf);
background-image:linear-gradient(#2daddc,#0271bf);
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#2daddc',endColorstr='#0271bf',GradientType=0);
border: 1px solid #019ad2;
-webkit-box-shadow: none;
-moz-box-shadow: none;
-o-box-shadow: none;
-ms-box-shadow: none;
box-shadow: none;
}
#ulp-CvO39xmB9rUDzPdw .ulp-submit,#ulp-CvO39xmB9rUDzPdw .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});}
#ulp-CvO39xmB9rUDzPdw .ulp-submit:hover,#ulp-CvO39xmB9rUDzPdw .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR3};border:1px solid #{WDT_EDT_BTN_COLOR4};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR4},#{WDT_EDT_BTN_COLOR3});}
#ulp-CvO39xmB9rUDzPdw .ulp-input,#ulp-CvO39xmB9rUDzPdw .ulp-input:hover,#ulp-CvO39xmB9rUDzPdw .ulp-input:active,#ulp-CvO39xmB9rUDzPdw .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-CvO39xmB9rUDzPdw-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.9;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='90')";filter:alpha(opacity="90");}#ulp-CvO39xmB9rUDzPdw .ulp-submit-button,#ulp-CvO39xmB9rUDzPdw .ulp-submit-button:visited,#ulp-CvO39xmB9rUDzPdw .ulp-submit-button:hover,#ulp-CvO39xmB9rUDzPdw .ulp-submit-button:active{border-radius: 2px !important;}#ulp-CvO39xmB9rUDzPdw .ulp-submit-facebook,#ulp-CvO39xmB9rUDzPdw .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-CvO39xmB9rUDzPdw .ulp-submit-facebook:hover,#ulp-CvO39xmB9rUDzPdw .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-CvO39xmB9rUDzPdw .ulp-submit-google,#ulp-CvO39xmB9rUDzPdw .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-CvO39xmB9rUDzPdw .ulp-submit-google:hover,#ulp-CvO39xmB9rUDzPdw .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-356,#ulp-layer-356 p,#ulp-layer-356 a,#ulp-layer-356 span,#ulp-layer-356 li,#ulp-layer-356 input,#ulp-layer-356 button,#ulp-layer-356 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-356{background-color:#{WDT_EDT_W_COLOR};z-index:1000003;text-align:left;border-radius: 3px; box-shadow: rgba(32,32,32,0.3) 0 4px 20px;}#ulp-layer-358,#ulp-layer-358 p,#ulp-layer-358 a,#ulp-layer-358 span,#ulp-layer-358 li,#ulp-layer-358 input,#ulp-layer-358 button,#ulp-layer-358 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TITLE_COLOR};}#ulp-layer-358{z-index:1000007;text-align:center;}#ulp-layer-359,#ulp-layer-359 p,#ulp-layer-359 a,#ulp-layer-359 span,#ulp-layer-359 li,#ulp-layer-359 input,#ulp-layer-359 button,#ulp-layer-359 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-359{background-color:#ffffff;background-color:rgba(255,255,255,1);z-index:1000007;text-align:left;}#ulp-layer-360,#ulp-layer-360 p,#ulp-layer-360 a,#ulp-layer-360 span,#ulp-layer-360 li,#ulp-layer-360 input,#ulp-layer-360 button,#ulp-layer-360 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-360{z-index:1000007;text-align:center;}#ulp-layer-361,#ulp-layer-361 p,#ulp-layer-361 a,#ulp-layer-361 span,#ulp-layer-361 li,#ulp-layer-361 input,#ulp-layer-361 button,#ulp-layer-361 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-361{z-index:1000007;text-align:left;}#ulp-layer-362,#ulp-layer-362 p,#ulp-layer-362 a,#ulp-layer-362 span,#ulp-layer-362 li,#ulp-layer-362 input,#ulp-layer-362 button,#ulp-layer-362 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-362{z-index:1000007;text-align:justify;}#ulp-layer-364,#ulp-layer-364 p,#ulp-layer-364 a,#ulp-layer-364 span,#ulp-layer-364 li,#ulp-layer-364 input,#ulp-layer-364 button,#ulp-layer-364 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-364{z-index:1000007;text-align:center;}#ulp-layer-365,#ulp-layer-365 p,#ulp-layer-365 a,#ulp-layer-365 span,#ulp-layer-365 li,#ulp-layer-365 input,#ulp-layer-365 button,#ulp-layer-365 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-365{z-index:1000007;text-align:right;}#ulp-layer-366,#ulp-layer-366 p,#ulp-layer-366 a,#ulp-layer-366 span,#ulp-layer-366 li,#ulp-layer-366 input,#ulp-layer-366 button,#ulp-layer-366 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-366{background-color:#2a7536;background-color:rgba(42,117,54,1);z-index:1000007;text-align:center;padding: 5px 0; box-shadow: rgba(32,32,32,0.3) 0 4px 20px;}#ulp-layer-367,#ulp-layer-367 p,#ulp-layer-367 a,#ulp-layer-367 span,#ulp-layer-367 li,#ulp-layer-367 input,#ulp-layer-367 button,#ulp-layer-367 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-367{z-index:1000007;text-align:justify;}#ulp-layer-368,#ulp-layer-368 p,#ulp-layer-368 a,#ulp-layer-368 span,#ulp-layer-368 li,#ulp-layer-368 input,#ulp-layer-368 button,#ulp-layer-368 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-368{z-index:1000007;text-align:justify;}#ulp-layer-369,#ulp-layer-369 p,#ulp-layer-369 a,#ulp-layer-369 span,#ulp-layer-369 li,#ulp-layer-369 input,#ulp-layer-369 button,#ulp-layer-369 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-369{z-index:1000007;text-align:justify;}
</style>
<div class="ulp-overlay" id="ulp-CvO39xmB9rUDzPdw-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-CvO39xmB9rUDzPdw" data-title="COAP" data-width="400" data-height="340" data-close="on" data-position="middle-center" style="width: 400px; height: 340px; top: 50%; left: 50%; margin-left: -200px; margin-top: -170px; display: block;">
<div class="ulp-content" style="width: 400px; height: 340px;">
<div class="ulp-layer" id="ulp-layer-356" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="0" data-width="360" data-height="460" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 360px; height: 460px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-358" data-left="10" data-top="5" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="200" data-width="340" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 340px; font-size: 20px; left: 10px; top: 5px;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-359" data-left="10" data-top="100" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="300" data-width="340" data-height="2" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 340px; height: 2px; font-size: 14px; left: 10px; top: 100px;"></div>
<div class="ulp-layer" id="ulp-layer-360" data-left="10" data-top="115" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="400" data-width="340" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 340px; font-size: 16px; left: 10px; top: 115px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-361" data-left="50" data-top="150" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="500" data-width="260" data-height="38" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 38px; font-size: 15px; left: 50px; top: 150px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-362" data-left="50" data-top="200" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="600" data-width="260" data-height="38" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 38px; font-size: 15px; left: 50px; top: 200px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-364" data-left="10" data-top="400" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="800" data-width="340" data-height="38" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 340px; height: 38px; font-size: 16px; left: 10px; top: 400px;"><a class="ulp-submit" onclick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a>{WDT_COPYRIGHT}</div>
<div class="ulp-layer" id="ulp-layer-365" data-left="320" data-top="-5" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1000" data-width="35" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 35px; height: 20px; font-size: 24px; left: 320px; top: -5px;"><a href="#" onclick="return ulp_self_close();">×</a></div>
<div class="ulp-layer" id="ulp-layer-366" data-left="0" data-top="460" data-appearance="slide-up" data-appearance-speed="600" data-appearance-delay="0" data-width="360" data-font-size="14" data-scrollbar="off" data-confirmation="on" style="display: none; width: 360px; font-size: 14px; left: 0px; top: 460px;">{WDT_EDT_SUCCESS}</div>
<div class="ulp-layer" id="ulp-layer-367" data-left="50" data-top="250" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="700" data-width="260" data-height="38" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 38px; font-size: 15px; left: 50px; top: 250px;"><input class="ulp-input" type="text" name="ulp-phone" placeholder="{WDT_EDT_INP_PLACE3}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-368" data-left="50" data-top="300" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="800" data-width="260" data-height="38" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 38px; font-size: 15px; left: 50px; top: 300px;"><input class="ulp-input" type="text" name="ulp-gn" placeholder="{WDT_EDT_INP_PLACE4}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-369" data-left="50" data-top="350" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="900" data-width="260" data-height="38" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 38px; font-size: 15px; left: 50px; top: 350px;"><input class="ulp-input" type="text" name="ulp-pn" placeholder="{WDT_EDT_INP_PLACE5}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');">
<input type="hidden" name="ulp-msg_id" value="{WDT_MSG_ID}">
<input type="hidden" name="ulp-w_id" value="{WDT_W_ID}">
</div>
</div>
</div>

<div id="popup-1" class="slickModal">
	<div class="wdt_window">
		<div class="wdt_shtraf">TEST</div>
	</div>
</div>
<div class="openSlickModal-1 manualLabel" id="ModalBtn" style="margin-left:-99999px;">Показать еще раз</div>
<link rel="stylesheet" type="text/css" href="http://witgetservice.com/wdt/css/sm5.css" media="screen" />
<style>
.wdt_window {
	display: inline-block;
	width: 500px;
	height: 300px;
	position: absolute;
	margin: auto;
	color:#{WDT_EDT_TEXT_COLOR};
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	z-index: 2;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	opacity: 0;
	-webkit-transition-property: rotate, transform, opacity, scale, perspective;
	-moz-transition-property: rotate, transform, opacity, scale, perspective;
	-ms-transition-property: rotate, transform, opacity, scale, perspective;
	transition-property: rotate, transform, opacity, scale, perspective;
}
</style>

<script type="text/javascript" src="http://witgetservice.com/wdt/js/jquery.slick-modals.min2.js"></script>
<script>
function WdtResultShow() {
    $("#popup-1").slickModals({
        popupType: "delayed",
        delayTime: 1000,
        exitTopDistance: 40,
        scrollTopDistance: 400,
        setCookie: true,
        cookieDays: 0,
        cookieTriggerClass: "setCookie-1",
        cookieName: "slickModal-1",

       	overlayBg: true,
        overlayBgColor: "#{WDT_EDT_BG_COLOR}",
        overlayTransition: "ease",
        overlayTransitionSpeed: "0.4",

        bgEffect: "scale",
        blurBgRadius: "2px",
        scaleBgValue: "0.9",

        windowWidth: "800px",
        windowHeight: "400px",
        windowLocation: "center",
        windowTransition: "ease",
        windowTransitionSpeed: "0.4",
        windowTransitionEffect: "rotateIn",
        windowShadowOffsetX: "0",
        windowShadowOffsetY: "0",
        windowShadowBlurRadius: "20px",
        windowShadowSpreadRadius: "0",
        windowShadowColor: "rgba(0,0,0,0)",
        windowBackground: "#{WDT_EDT_W_COLOR}",
        windowRadius: "10px",
        windowMargin: "0",
        windowPadding: "0",

        closeButton: "icon",
        reopenClass: "openSlickModal-1",
    });
	$('#ModalBtn').click();
}
</script>