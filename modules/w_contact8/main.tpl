<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp14.js"></script>
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
#ulp-8RDTcFM2mszLzQIs .ulp-submit,#ulp-8RDTcFM2mszLzQIs .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR2},#{WDT_EDT_BTN_COLOR1});}#ulp-8RDTcFM2mszLzQIs .ulp-submit:hover,#ulp-8RDTcFM2mszLzQIs .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR3};border:1px solid #{WDT_EDT_BTN_COLOR3};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR4},#{WDT_EDT_BTN_COLOR3});}#ulp-8RDTcFM2mszLzQIs .ulp-input,#ulp-8RDTcFM2mszLzQIs .ulp-input:hover,#ulp-8RDTcFM2mszLzQIs .ulp-input:active,#ulp-8RDTcFM2mszLzQIs .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-8RDTcFM2mszLzQIs-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-8RDTcFM2mszLzQIs .ulp-submit-button,#ulp-8RDTcFM2mszLzQIs .ulp-submit-button:visited,#ulp-8RDTcFM2mszLzQIs .ulp-submit-button:hover,#ulp-8RDTcFM2mszLzQIs .ulp-submit-button:active{border-radius: 2px !important;}#ulp-8RDTcFM2mszLzQIs .ulp-submit-facebook,#ulp-8RDTcFM2mszLzQIs .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-8RDTcFM2mszLzQIs .ulp-submit-facebook:hover,#ulp-8RDTcFM2mszLzQIs .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-8RDTcFM2mszLzQIs .ulp-submit-google,#ulp-8RDTcFM2mszLzQIs .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-8RDTcFM2mszLzQIs .ulp-submit-google:hover,#ulp-8RDTcFM2mszLzQIs .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-83,#ulp-layer-83 p,#ulp-layer-83 a,#ulp-layer-83 span,#ulp-layer-83 li,#ulp-layer-83 input,#ulp-layer-83 button,#ulp-layer-83 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-83{background-color:#34495e;background-color:rgba(52,73,94,0.9);z-index:1000007;text-align:left;padding: 5px 15px; box-shadow: rgba(32,32,32,0.3) 0 4px 20px;}#ulp-layer-84,#ulp-layer-84 p,#ulp-layer-84 a,#ulp-layer-84 span,#ulp-layer-84 li,#ulp-layer-84 input,#ulp-layer-84 button,#ulp-layer-84 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-84{background-color:#e33a0c;background-color:rgba(227,58,12,1);z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,0.3) 0 4px 20px;}#ulp-layer-85,#ulp-layer-85 p,#ulp-layer-85 a,#ulp-layer-85 span,#ulp-layer-85 li,#ulp-layer-85 input,#ulp-layer-85 button,#ulp-layer-85 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-85{z-index:1000007;text-align:left;}#ulp-layer-86,#ulp-layer-86 p,#ulp-layer-86 a,#ulp-layer-86 span,#ulp-layer-86 li,#ulp-layer-86 input,#ulp-layer-86 button,#ulp-layer-86 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-86{background-color:#f39c12;background-color:rgba(243,156,18,1);z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,0.3) 0 4px 20px;}#ulp-layer-87,#ulp-layer-87 p,#ulp-layer-87 a,#ulp-layer-87 span,#ulp-layer-87 li,#ulp-layer-87 input,#ulp-layer-87 button,#ulp-layer-87 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-87{z-index:1000007;text-align:left;}#ulp-layer-88,#ulp-layer-88 p,#ulp-layer-88 a,#ulp-layer-88 span,#ulp-layer-88 li,#ulp-layer-88 input,#ulp-layer-88 button,#ulp-layer-88 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-88{background-color:#663777;background-color:rgba(102,55,119,1);z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,0.3) 0 4px 20px;}#ulp-layer-89,#ulp-layer-89 p,#ulp-layer-89 a,#ulp-layer-89 span,#ulp-layer-89 li,#ulp-layer-89 input,#ulp-layer-89 button,#ulp-layer-89 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-89{z-index:1000007;text-align:left;}#ulp-layer-90,#ulp-layer-90 p,#ulp-layer-90 a,#ulp-layer-90 span,#ulp-layer-90 li,#ulp-layer-90 input,#ulp-layer-90 button,#ulp-layer-90 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-90{z-index:1000007;text-align:center;}#ulp-layer-91,#ulp-layer-91 p,#ulp-layer-91 a,#ulp-layer-91 span,#ulp-layer-91 li,#ulp-layer-91 input,#ulp-layer-91 button,#ulp-layer-91 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-91{z-index:1000007;text-align:right;}#ulp-layer-92,#ulp-layer-92 p,#ulp-layer-92 a,#ulp-layer-92 span,#ulp-layer-92 li,#ulp-layer-92 input,#ulp-layer-92 button,#ulp-layer-92 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-92{background-color:#2a7536;background-color:rgba(42,117,54,1);z-index:1000007;text-align:center;padding: 5px 0; box-shadow: rgba(32,32,32,0.3) 0 4px 20px;}</style>
<div class="ulp-overlay" id="ulp-8RDTcFM2mszLzQIs-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-8RDTcFM2mszLzQIs" data-title="Contact Form - Popup #08" data-width="700" data-height="400" data-close="on" data-position="middle-center" style="width: 700px; height: 400px; top: 50%; left: 50%; margin-left: -350px; margin-top: -200px; display: block;">
<div class="ulp-content" style="width: 700px; height: 400px;">
<div class="ulp-layer" id="ulp-layer-83" data-left="20" data-top="0" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="200" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="font-size: 24px; left: 20px; top: 0px;">{WDT_EDT_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-84" data-left="200" data-top="60" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="200" data-width="400" data-height="60" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 60px; font-size: 24px; left: 200px; top: 60px;"></div>
<div class="ulp-layer" id="ulp-layer-85" data-left="215" data-top="72" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="200" data-width="370" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 370px; height: 36px; font-size: 14px; left: 215px; top: 72px;">
<input type="hidden" name="ulp-msg_id" value="{WDT_MSG_ID}">
<input type="hidden" name="ulp-msg_theme" value="{WDT_MSG_THEME}">
<input type="hidden" name="ulp-w_id" value="{WDT_W_ID}">
<input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-86" data-left="50" data-top="130" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="400" data-width="400" data-height="60" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 60px; font-size: 24px; left: 50px; top: 130px;"></div>
<div class="ulp-layer" id="ulp-layer-87" data-left="65" data-top="142" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="400" data-width="370" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 370px; height: 36px; font-size: 14px; left: 65px; top: 142px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-88" data-left="240" data-top="200" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="600" data-width="460" data-height="160" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 460px; height: 160px; font-size: 24px; left: 240px; top: 200px;"></div>
<div class="ulp-layer" id="ulp-layer-89" data-left="255" data-top="214" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="600" data-width="430" data-height="132" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 430px; height: 132px; font-size: 14px; left: 255px; top: 214px;"><textarea class="ulp-input" name="ulp-message" placeholder="{WDT_EDT_INP_PLACE3}" onfocus="jQuery(this).removeClass('ulp-input-error');"></textarea></div>
<div class="ulp-layer" id="ulp-layer-90" data-left="0" data-top="370" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="800" data-width="240" data-height="38" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 240px; height: 38px; font-size: 20px; left: 0px; top: 340px;"><a class="ulp-submit" onclick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-91" data-left="660" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1000" data-width="40" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 40px; height: 20px; font-size: 24px; left: 660px; top: -30px;"><a href="#" onclick="return ulp_self_close();">×</a></div>
<div class="ulp-layer" id="ulp-layer-92" data-left="300" data-top="370" data-appearance="slide-left" data-appearance-speed="600" data-appearance-delay="0" data-width="400" data-font-size="14" data-scrollbar="off" data-confirmation="on" style="display: none; width: 400px; font-size: 14px; left: 300px; top: 370px;">{WDT_EDT_SUCCESS}</div>
</div>
</div>
