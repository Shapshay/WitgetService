<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp13.js"></script>
<script>
var ulp_ajax_url = 'http://witgetservice.com/wdt/ajax.php{WDT_U_ID}'; 
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
#ulp-Upyci7liTrSCGZUy .ulp-submit,#ulp-Upyci7liTrSCGZUy .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR2},#{WDT_EDT_BTN_COLOR1});}#ulp-Upyci7liTrSCGZUy .ulp-submit:hover,#ulp-Upyci7liTrSCGZUy .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR3};border:1px solid #{WDT_EDT_BTN_COLOR4};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR4},#{WDT_EDT_BTN_COLOR3});}#ulp-Upyci7liTrSCGZUy .ulp-input,#ulp-Upyci7liTrSCGZUy .ulp-input:hover,#ulp-Upyci7liTrSCGZUy .ulp-input:active,#ulp-Upyci7liTrSCGZUy .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#f5f7f2 !important;background-color:rgba(245,247,242,1) !important;}#ulp-Upyci7liTrSCGZUy-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-Upyci7liTrSCGZUy .ulp-submit-button,#ulp-Upyci7liTrSCGZUy .ulp-submit-button:visited,#ulp-Upyci7liTrSCGZUy .ulp-submit-button:hover,#ulp-Upyci7liTrSCGZUy .ulp-submit-button:active{border-radius: 2px !important;}#ulp-Upyci7liTrSCGZUy .ulp-submit-facebook,#ulp-Upyci7liTrSCGZUy .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-Upyci7liTrSCGZUy .ulp-submit-facebook:hover,#ulp-Upyci7liTrSCGZUy .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-Upyci7liTrSCGZUy .ulp-submit-google,#ulp-Upyci7liTrSCGZUy .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-Upyci7liTrSCGZUy .ulp-submit-google:hover,#ulp-Upyci7liTrSCGZUy .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-72,#ulp-layer-72 p,#ulp-layer-72 a,#ulp-layer-72 span,#ulp-layer-72 li,#ulp-layer-72 input,#ulp-layer-72 button,#ulp-layer-72 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-72{background-color:#{WDT_EDT_W_COLOR};z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px;}#ulp-layer-73,#ulp-layer-73 p,#ulp-layer-73 a,#ulp-layer-73 span,#ulp-layer-73 li,#ulp-layer-73 input,#ulp-layer-73 button,#ulp-layer-73 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-73{background-color:#ffffff;background-color:rgba(255,255,255,1);z-index:1000003;text-align:left;}#ulp-layer-74,#ulp-layer-74 p,#ulp-layer-74 a,#ulp-layer-74 span,#ulp-layer-74 li,#ulp-layer-74 input,#ulp-layer-74 button,#ulp-layer-74 textarea {font-family:'arial', arial;font-weight:400;color:#34495e;}#ulp-layer-74{background-color:#003c75;background-color:rgba(0,60,117,1);z-index:1000007;text-align:left;}#ulp-layer-75,#ulp-layer-75 p,#ulp-layer-75 a,#ulp-layer-75 span,#ulp-layer-75 li,#ulp-layer-75 input,#ulp-layer-75 button,#ulp-layer-75 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-75{z-index:1000007;text-align:right;}#ulp-layer-76,#ulp-layer-76 p,#ulp-layer-76 a,#ulp-layer-76 span,#ulp-layer-76 li,#ulp-layer-76 input,#ulp-layer-76 button,#ulp-layer-76 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-76{z-index:1000007;text-align:right;}#ulp-layer-77,#ulp-layer-77 p,#ulp-layer-77 a,#ulp-layer-77 span,#ulp-layer-77 li,#ulp-layer-77 input,#ulp-layer-77 button,#ulp-layer-77 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-77{z-index:1000007;text-align:left;}#ulp-layer-78,#ulp-layer-78 p,#ulp-layer-78 a,#ulp-layer-78 span,#ulp-layer-78 li,#ulp-layer-78 input,#ulp-layer-78 button,#ulp-layer-78 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-78{z-index:1000007;text-align:left;}#ulp-layer-79,#ulp-layer-79 p,#ulp-layer-79 a,#ulp-layer-79 span,#ulp-layer-79 li,#ulp-layer-79 input,#ulp-layer-79 button,#ulp-layer-79 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-79{z-index:1000007;text-align:left;}#ulp-layer-80,#ulp-layer-80 p,#ulp-layer-80 a,#ulp-layer-80 span,#ulp-layer-80 li,#ulp-layer-80 input,#ulp-layer-80 button,#ulp-layer-80 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-80{z-index:1000007;text-align:center;}#ulp-layer-81,#ulp-layer-81 p,#ulp-layer-81 a,#ulp-layer-81 span,#ulp-layer-81 li,#ulp-layer-81 input,#ulp-layer-81 button,#ulp-layer-81 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-81{z-index:1000007;text-align:right;}#ulp-layer-82,#ulp-layer-82 p,#ulp-layer-82 a,#ulp-layer-82 span,#ulp-layer-82 li,#ulp-layer-82 input,#ulp-layer-82 button,#ulp-layer-82 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-82{background-color:#2a7536;background-color:rgba(42,117,54,1);z-index:1000007;text-align:center;padding: 5px 0; box-shadow: rgba(32,32,32,1) 0 4px 20px; border-radius: 3px;}</style>
<div class="ulp-overlay" id="ulp-Upyci7liTrSCGZUy-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-Upyci7liTrSCGZUy" data-title="Contact Form - Popup #07" data-width="700" data-height="430" data-close="on" data-position="middle-center" style="width: 700px; height: 430px; top: 50%; left: 50%; margin-left: -350px; margin-top: -215px; display: block;">
<div class="ulp-content" style="width: 700px; height: 430px;">
<div class="ulp-layer" id="ulp-layer-72" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="0" data-width="700" data-height="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 700px; height: 400px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-73" data-left="0" data-top="0" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="0" data-width="350" data-height="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 350px; height: 400px; font-size: 14px; left: 0px; top: 0px;">
<iframe
  width="100%" height="100%" frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDSnyXKWwG7r4umATF7DjtdbYhYFnQs3MI&q={WDT_EDT_MAP_ADRES}" allowfullscreen>
</iframe>
</div>
<div class="ulp-layer" id="ulp-layer-74" data-left="350" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="500" data-width="3" data-height="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 3px; height: 400px; font-size: 14px; left: 350px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-75" data-left="350" data-top="15" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="500" data-width="330" data-font-size="22" data-scrollbar="off" data-confirmation="off" style="width: 330px; font-size: 22px; left: 350px; top: 15px;">{WDT_EDT_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-76" data-left="370" data-top="52" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="700" data-width="310" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 310px; font-size: 14px; left: 370px; top: 52px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-77" data-left="370" data-top="125" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="900" data-width="310" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 310px; height: 36px; font-size: 14px; left: 370px; top: 125px;">
<input type="hidden" name="ulp-msg_id" value="{WDT_MSG_ID}">
<input type="hidden" name="ulp-msg_theme" value="{WDT_MSG_THEME}">
<input type="hidden" name="ulp-w_id" value="{WDT_W_ID}">
<input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-78" data-left="370" data-top="170" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="1100" data-width="310" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 310px; height: 36px; font-size: 14px; left: 370px; top: 170px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-79" data-left="370" data-top="215" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="1300" data-width="310" data-height="120" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 310px; height: 120px; font-size: 14px; left: 370px; top: 215px;"><textarea class="ulp-input" name="ulp-message" placeholder="{WDT_EDT_INP_PLACE3}" onfocus="jQuery(this).removeClass('ulp-input-error');"></textarea></div>
<div class="ulp-layer" id="ulp-layer-80" data-left="370" data-top="345" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1500" data-width="310" data-height="38" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 310px; height: 38px; font-size: 16px; left: 370px; top: 345px;"><a class="ulp-submit" onclick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-81" data-left="660" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="2500" data-width="40" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 40px; height: 20px; font-size: 24px; left: 660px; top: -30px;"><a href="#" onclick="return ulp_self_close();">×</a></div>
<div class="ulp-layer" id="ulp-layer-82" data-left="0" data-top="410" data-appearance="slide-up" data-appearance-speed="600" data-appearance-delay="0" data-width="700" data-font-size="14" data-scrollbar="off" data-confirmation="on" style="display: none; width: 700px; font-size: 14px; left: 0px; top: 410px;">{WDT_EDT_SUCCESS}</div>
</div>
</div>
</div>
