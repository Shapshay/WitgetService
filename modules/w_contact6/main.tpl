<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp10.js"></script>
<script>
var ulp_ajax_url = 'http://witgetservice.com/wdt/ajax7.php{WDT_U_ID}'; 
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
background-color: #{WDT_EDT_BTN_COLOR2};
background-repeat: repeat-x;
background-image: -moz-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});
background-image: -ms-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});
background-image: -webkit-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});
background-image: -o-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});
background-image: linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});
transition-duration: .3s;
-moz-transition-duration: .3s;
-webkit-transition-duration: .3s;
-o-transition-duration: .3s;
-khtml-transition-duration: .3s;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR1}',endColorstr='#{WDT_EDT_BTN_COLOR2}',GradientType=0);
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
background-color:#{WDT_EDT_BTN_COLOR4};
background-repeat:repeat-x;
background-image:-moz-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});
background-image:-ms-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});
background-image:-webkit-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});
background-image:-o-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});
background-image:linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR3}',endColorstr='#{WDT_EDT_BTN_COLOR4}',GradientType=0);
border: 1px solid #019ad2;
-webkit-box-shadow: none;
-moz-box-shadow: none;
-o-box-shadow: none;
-ms-box-shadow: none;
box-shadow: none;
}
#ulp-YgrJamttpLuZsOYp .ulp-submit,#ulp-YgrJamttpLuZsOYp .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};box-shadow: -4px -4px 0px rgba(0, 0, 0, 0.1) inset;}#ulp-YgrJamttpLuZsOYp .ulp-submit:hover,#ulp-YgrJamttpLuZsOYp .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};box-shadow: 4px 4px 0px rgba(0, 0, 0, 0.1) inset;}#ulp-YgrJamttpLuZsOYp .ulp-input,#ulp-YgrJamttpLuZsOYp .ulp-input:hover,#ulp-YgrJamttpLuZsOYp .ulp-input:active,#ulp-YgrJamttpLuZsOYp .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-YgrJamttpLuZsOYp .ulp-submit-button,#ulp-YgrJamttpLuZsOYp .ulp-submit-button:visited,#ulp-YgrJamttpLuZsOYp .ulp-submit-button:hover,#ulp-YgrJamttpLuZsOYp .ulp-submit-button:active{border-radius: 2px !important;}#ulp-YgrJamttpLuZsOYp .ulp-submit-button,#ulp-YgrJamttpLuZsOYp .ulp-submit-button:visited{box-shadow: -4px -4px 0px rgba(0, 0, 0, 0.1) inset;}#ulp-YgrJamttpLuZsOYp .ulp-submit-button:hover,#ulp-YgrJamttpLuZsOYp .ulp-submit-button:active{box-shadow: 4px 4px 0px rgba(0, 0, 0, 0.1) inset;}#ulp-YgrJamttpLuZsOYp .ulp-submit-facebook,#ulp-YgrJamttpLuZsOYp .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;}#ulp-YgrJamttpLuZsOYp .ulp-submit-facebook:hover,#ulp-YgrJamttpLuZsOYp .ulp-submit-facebook:active{background: #324b80;border:1px solid #324b80;}#ulp-YgrJamttpLuZsOYp .ulp-submit-google,#ulp-YgrJamttpLuZsOYp .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;}#ulp-YgrJamttpLuZsOYp .ulp-submit-google:hover,#ulp-YgrJamttpLuZsOYp .ulp-submit-google:active{background: #b53e2f;border:1px solid #b53e2f;}#ulp-layer-355,#ulp-layer-355 p,#ulp-layer-355 a,#ulp-layer-355 span,#ulp-layer-355 li,#ulp-layer-355 input,#ulp-layer-355 button,#ulp-layer-355 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-355{background-color:#{WDT_EDT_W_COLOR};background-image:url(http://witgetservice.com/wdt/images/transparent-squares.png);background-repeat:repeat;z-index:1000003;text-align:left;border-radius: 2px 2px 0 0}#ulp-layer-356,#ulp-layer-356 p,#ulp-layer-356 a,#ulp-layer-356 span,#ulp-layer-356 li,#ulp-layer-356 input,#ulp-layer-356 button,#ulp-layer-356 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-356{z-index:1000004;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px, -6px -6px 0px rgba(0, 0, 0, 0.1) inset; border-radius: 2px;}#ulp-layer-357,#ulp-layer-357 p,#ulp-layer-357 a,#ulp-layer-357 span,#ulp-layer-357 li,#ulp-layer-357 input,#ulp-layer-357 button,#ulp-layer-357 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TITLE_COLOR};}#ulp-layer-357{z-index:1000007;text-align:center;}#ulp-layer-358,#ulp-layer-358 p,#ulp-layer-358 a,#ulp-layer-358 span,#ulp-layer-358 li,#ulp-layer-358 input,#ulp-layer-358 button,#ulp-layer-358 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-358{z-index:1000007;text-align:left;}#ulp-layer-359,#ulp-layer-359 p,#ulp-layer-359 a,#ulp-layer-359 span,#ulp-layer-359 li,#ulp-layer-359 input,#ulp-layer-359 button,#ulp-layer-359 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-359{z-index:1000007;text-align:left;}#ulp-layer-360,#ulp-layer-360 p,#ulp-layer-360 a,#ulp-layer-360 span,#ulp-layer-360 li,#ulp-layer-360 input,#ulp-layer-360 button,#ulp-layer-360 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-360{z-index:1000007;text-align:center;}#ulp-layer-361,#ulp-layer-361 p,#ulp-layer-361 a,#ulp-layer-361 span,#ulp-layer-361 li,#ulp-layer-361 input,#ulp-layer-361 button,#ulp-layer-361 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-361{z-index:1000007;text-align:center;}</style>
<div class="ulp-window" id="ulp-YgrJamttpLuZsOYp" data-title="Subscription Form - Popup #17" data-width="400" data-height="200" data-close="on" data-position="bottom-right" style="width: 400px; height: 200px; bottom: 16px; right: 16px; display: block;">
<div class="ulp-content" style="width: 400px; height: 200px;">
<div class="ulp-layer" id="ulp-layer-355" data-left="0" data-top="0" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="400" data-height="200" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 200px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-356" data-left="0" data-top="0" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="400" data-height="200" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 200px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-357" data-left="0" data-top="15" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="400" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 400px; font-size: 20px; left: 0px; top: 15px;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-358" data-left="50" data-top="54" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="300" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 300px; height: 36px; font-size: 14px; left: 50px; top: 54px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-359" data-left="50" data-top="100" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="300" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 300px; height: 36px; font-size: 14px; left: 50px; top: 100px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"><input type="hidden" name="ulp-w_id" value="{WDT_W_ID}"></div>
<div class="ulp-layer" id="ulp-layer-360" data-left="110" data-top="145" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="180" data-height="40" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 180px; height: 40px; font-size: 16px; left: 110px; top: 145px;"><a class="ulp-submit ulp-inherited" onClick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-361" data-left="3" data-top="-6" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="font-size: 24px; left: 3px; top: -6px;"><a class="ulp-inherited" href="#" onClick="return ulp_self_close();">×</a></div>
</div>
</div>
