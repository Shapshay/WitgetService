<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp15.js"></script>
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
#ulp-kVrXzjsBM4YfVMJd .ulp-submit,#ulp-kVrXzjsBM4YfVMJd .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR2},#{WDT_EDT_BTN_COLOR1});}#ulp-kVrXzjsBM4YfVMJd .ulp-submit:hover,#ulp-kVrXzjsBM4YfVMJd .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR3};border:1px solid #{WDT_EDT_BTN_COLOR4};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR4},#{WDT_EDT_BTN_COLOR3});}#ulp-kVrXzjsBM4YfVMJd .ulp-input,#ulp-kVrXzjsBM4YfVMJd .ulp-input:hover,#ulp-kVrXzjsBM4YfVMJd .ulp-input:active,#ulp-kVrXzjsBM4YfVMJd .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-kVrXzjsBM4YfVMJd-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.9;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='90')";filter:alpha(opacity="90");}#ulp-kVrXzjsBM4YfVMJd .ulp-submit-button,#ulp-kVrXzjsBM4YfVMJd .ulp-submit-button:visited,#ulp-kVrXzjsBM4YfVMJd .ulp-submit-button:hover,#ulp-kVrXzjsBM4YfVMJd .ulp-submit-button:active{border-radius: 2px !important;}#ulp-kVrXzjsBM4YfVMJd .ulp-submit-facebook,#ulp-kVrXzjsBM4YfVMJd .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-kVrXzjsBM4YfVMJd .ulp-submit-facebook:hover,#ulp-kVrXzjsBM4YfVMJd .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-kVrXzjsBM4YfVMJd .ulp-submit-google,#ulp-kVrXzjsBM4YfVMJd .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-kVrXzjsBM4YfVMJd .ulp-submit-google:hover,#ulp-kVrXzjsBM4YfVMJd .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-93,#ulp-layer-93 p,#ulp-layer-93 a,#ulp-layer-93 span,#ulp-layer-93 li,#ulp-layer-93 input,#ulp-layer-93 button,#ulp-layer-93 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-93{z-index:1000007;text-align:left;}#ulp-layer-94,#ulp-layer-94 p,#ulp-layer-94 a,#ulp-layer-94 span,#ulp-layer-94 li,#ulp-layer-94 input,#ulp-layer-94 button,#ulp-layer-94 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-94{z-index:1000007;text-align:left;}#ulp-layer-95,#ulp-layer-95 p,#ulp-layer-95 a,#ulp-layer-95 span,#ulp-layer-95 li,#ulp-layer-95 input,#ulp-layer-95 button,#ulp-layer-95 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-95{background-color:#ffffff;background-color:rgba(255,255,255,1);z-index:1000007;text-align:left;}#ulp-layer-96,#ulp-layer-96 p,#ulp-layer-96 a,#ulp-layer-96 span,#ulp-layer-96 li,#ulp-layer-96 input,#ulp-layer-96 button,#ulp-layer-96 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-96{z-index:1000007;text-align:justify;}#ulp-layer-97,#ulp-layer-97 p,#ulp-layer-97 a,#ulp-layer-97 span,#ulp-layer-97 li,#ulp-layer-97 input,#ulp-layer-97 button,#ulp-layer-97 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-97{z-index:1000007;text-align:justify;}#ulp-layer-98,#ulp-layer-98 p,#ulp-layer-98 a,#ulp-layer-98 span,#ulp-layer-98 li,#ulp-layer-98 input,#ulp-layer-98 button,#ulp-layer-98 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-98{z-index:1000007;text-align:justify;}#ulp-layer-99,#ulp-layer-99 p,#ulp-layer-99 a,#ulp-layer-99 span,#ulp-layer-99 li,#ulp-layer-99 input,#ulp-layer-99 button,#ulp-layer-99 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-99{z-index:1000007;text-align:justify;}#ulp-layer-100,#ulp-layer-100 p,#ulp-layer-100 a,#ulp-layer-100 span,#ulp-layer-100 li,#ulp-layer-100 input,#ulp-layer-100 button,#ulp-layer-100 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-100{z-index:1000007;text-align:right;}#ulp-layer-101,#ulp-layer-101 p,#ulp-layer-101 a,#ulp-layer-101 span,#ulp-layer-101 li,#ulp-layer-101 input,#ulp-layer-101 button,#ulp-layer-101 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-101{z-index:1000007;text-align:right;}#ulp-layer-102,#ulp-layer-102 p,#ulp-layer-102 a,#ulp-layer-102 span,#ulp-layer-102 li,#ulp-layer-102 input,#ulp-layer-102 button,#ulp-layer-102 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-102{z-index:1000007;text-align:center;}</style>
<div class="ulp-overlay" id="ulp-kVrXzjsBM4YfVMJd-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-kVrXzjsBM4YfVMJd" data-title="Contact Form - Popup #09" data-width="500" data-height="500" data-close="on" data-position="middle-center" style="width: 500px; height: 500px; top: 50%; left: 50%; margin-left: -250px; margin-top: -250px; display: block;">
<div class="ulp-content" style="width: 500px; height: 500px;">
<div class="ulp-layer" id="ulp-layer-93" data-left="0" data-top="25" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="100" data-width="360" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 360px; font-size: 20px; left: 0px; top: 25px;">НАЗВАНИЕ КОМПАНИИ</div>
<div class="ulp-layer" id="ulp-layer-94" data-left="0" data-top="55" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="300" data-width="360" data-font-size="30" data-scrollbar="off" data-confirmation="off" style="width: 360px; font-size: 30px; left: 0px; top: 55px;">{WDT_EDT_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-95" data-left="0" data-top="110" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="500" data-width="500" data-height="2" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 500px; height: 2px; font-size: 14px; left: 0px; top: 110px;"></div>
<div class="ulp-layer" id="ulp-layer-96" data-left="0" data-top="125" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="700" data-width="500" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 500px; font-size: 14px; left: 0px; top: 125px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-97" data-left="0" data-top="200" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="900" data-width="500" data-height="38" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 500px; height: 38px; font-size: 15px; left: 0px; top: 200px;">
<input type="hidden" name="ulp-msg_id" value="{WDT_MSG_ID}">
<input type="hidden" name="ulp-msg_theme" value="{WDT_MSG_THEME}">
<input type="hidden" name="ulp-w_id" value="{WDT_W_ID}">
<input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-98" data-left="0" data-top="250" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1100" data-width="500" data-height="38" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 500px; height: 38px; font-size: 15px; left: 0px; top: 250px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-99" data-left="0" data-top="300" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1300" data-width="500" data-height="140" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 500px; height: 140px; font-size: 15px; left: 0px; top: 300px;"><textarea class="ulp-input" name="ulp-message" placeholder="{WDT_EDT_INP_PLACE3}" onfocus="jQuery(this).removeClass('ulp-input-error');"></textarea></div>
<div class="ulp-layer" id="ulp-layer-100" data-left="0" data-top="450" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1500" data-width="500" data-height="38" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 500px; height: 38px; font-size: 16px; left: 0px; top: 450px;"><a class="ulp-submit" onclick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-101" data-left="465" data-top="-5" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="2500" data-width="35" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 35px; height: 20px; font-size: 24px; left: 465px; top: -5px;"><a href="#" onclick="return ulp_self_close();">×</a></div>
<div class="ulp-layer" id="ulp-layer-102" data-left="0" data-top="500" data-appearance="slide-up" data-appearance-speed="600" data-appearance-delay="0" data-width="500" data-font-size="14" data-scrollbar="off" data-confirmation="on" style="display: none; width: 500px; font-size: 14px; left: 0px; top: 500px;">{WDT_EDT_SUCCESS}</div>
</div>
</div>
