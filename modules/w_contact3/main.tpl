<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp7.js"></script>
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
#ulp-8IRCpRxRxaT82I8g .ulp-submit,#ulp-8IRCpRxRxaT82I8g .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});}#ulp-8IRCpRxRxaT82I8g .ulp-submit:hover,#ulp-8IRCpRxRxaT82I8g .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR4};border:1px solid #{WDT_EDT_BTN_COLOR3};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});}#ulp-8IRCpRxRxaT82I8g .ulp-input,#ulp-8IRCpRxRxaT82I8g .ulp-input:hover,#ulp-8IRCpRxRxaT82I8g .ulp-input:active,#ulp-8IRCpRxRxaT82I8g .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#c47d2d;background-color:#fcf280 !important;background-color:#FFFFFF !important;}#ulp-8IRCpRxRxaT82I8g-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-8IRCpRxRxaT82I8g .ulp-submit-button,#ulp-8IRCpRxRxaT82I8g .ulp-submit-button:visited,#ulp-8IRCpRxRxaT82I8g .ulp-submit-button:hover,#ulp-8IRCpRxRxaT82I8g .ulp-submit-button:active{border-radius: 2px !important;}#ulp-8IRCpRxRxaT82I8g .ulp-submit-facebook,#ulp-8IRCpRxRxaT82I8g .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-8IRCpRxRxaT82I8g .ulp-submit-facebook:hover,#ulp-8IRCpRxRxaT82I8g .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-8IRCpRxRxaT82I8g .ulp-submit-google,#ulp-8IRCpRxRxaT82I8g .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-8IRCpRxRxaT82I8g .ulp-submit-google:hover,#ulp-8IRCpRxRxaT82I8g .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-344,#ulp-layer-344 p,#ulp-layer-344 a,#ulp-layer-344 span,#ulp-layer-344 li,#ulp-layer-344 input,#ulp-layer-344 button,#ulp-layer-344 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-344{background-color:#{WDT_EDT_W_COLOR};z-index:1000004;text-align:left;box-shadow: #{WDT_EDT_W_COLOR} 0 4px 30px; border-radius: 5px;}#ulp-layer-345,#ulp-layer-345 p,#ulp-layer-345 a,#ulp-layer-345 span,#ulp-layer-345 li,#ulp-layer-345 input,#ulp-layer-345 button,#ulp-layer-345 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-345{z-index:1000004;text-align:left;}#ulp-layer-346,#ulp-layer-346 p,#ulp-layer-346 a,#ulp-layer-346 span,#ulp-layer-346 li,#ulp-layer-346 input,#ulp-layer-346 button,#ulp-layer-346 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-346{z-index:1000004;text-align:left;}#ulp-layer-347,#ulp-layer-347 p,#ulp-layer-347 a,#ulp-layer-347 span,#ulp-layer-347 li,#ulp-layer-347 input,#ulp-layer-347 button,#ulp-layer-347 textarea {font-family:'verdana', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-347{z-index:1000007;text-align:left;}#ulp-layer-348,#ulp-layer-348 p,#ulp-layer-348 a,#ulp-layer-348 span,#ulp-layer-348 li,#ulp-layer-348 input,#ulp-layer-348 button,#ulp-layer-348 textarea {font-family:'verdana', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-348{z-index:1000007;text-align:right;}#ulp-layer-349,#ulp-layer-349 p,#ulp-layer-349 a,#ulp-layer-349 span,#ulp-layer-349 li,#ulp-layer-349 input,#ulp-layer-349 button,#ulp-layer-349 textarea {font-family:'verdana', arial;font-weight:400;color:#000000;}#ulp-layer-349{z-index:1000007;text-align:left;}#ulp-layer-350,#ulp-layer-350 p,#ulp-layer-350 a,#ulp-layer-350 span,#ulp-layer-350 li,#ulp-layer-350 input,#ulp-layer-350 button,#ulp-layer-350 textarea {font-family:'verdana', arial;font-weight:400;color:#000000;}#ulp-layer-350{z-index:1000007;text-align:left;}#ulp-layer-351,#ulp-layer-351 p,#ulp-layer-351 a,#ulp-layer-351 span,#ulp-layer-351 li,#ulp-layer-351 input,#ulp-layer-351 button,#ulp-layer-351 textarea {font-family:'verdana', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-351{z-index:1000007;text-align:center;}#ulp-layer-352,#ulp-layer-352 p,#ulp-layer-352 a,#ulp-layer-352 span,#ulp-layer-352 li,#ulp-layer-352 input,#ulp-layer-352 button,#ulp-layer-352 textarea {font-family:'verdana', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-352{z-index:1000007;text-align:center;}#ulp-layer-353,#ulp-layer-353 p,#ulp-layer-353 a,#ulp-layer-353 span,#ulp-layer-353 li,#ulp-layer-353 input,#ulp-layer-353 button,#ulp-layer-353 textarea {font-family:'arial', arial;font-weight:400;color:#fcffb7;text-shadow: #000000 1px 1px 1px;}#ulp-layer-353{z-index:1000007;text-align:right;}#ulp-layer-354,#ulp-layer-354 p,#ulp-layer-354 a,#ulp-layer-354 span,#ulp-layer-354 li,#ulp-layer-354 input,#ulp-layer-354 button,#ulp-layer-354 textarea {font-family:'verdana', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-354{z-index:1000007;text-align:center;}</style>
<div class="ulp-overlay" id="ulp-8IRCpRxRxaT82I8g-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-8IRCpRxRxaT82I8g" data-title="Subscription Form - Popup #13" data-width="400" data-height="500" data-close="on" data-position="middle-center" style="width: 400px; height: 500px; top: 50%; left: 50%; margin-left: -200px; margin-top: -250px; display: block;">
<div class="ulp-content" style="width: 400px; height: 500px;">
<div class="ulp-layer" id="ulp-layer-344" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="500" data-appearance-delay="0" data-width="400" data-height="500" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 500px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-345" data-left="0" data-top="200" data-appearance="slide-up" data-appearance-speed="1200" data-appearance-delay="0" data-width="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 400px; font-size: 14px; left: 0px; top: 200px;"><img src="http://witgetservice.com/wdt/images/bubbles.png" alt=""></div>
<div class="ulp-layer" id="ulp-layer-346" data-left="0" data-top="0" data-appearance="slide-down" data-appearance-speed="1200" data-appearance-delay="200" data-width="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 400px; font-size: 14px; left: 0px; top: 0px;"><img src="http://witgetservice.com/wdt/images/bubbles2.png" alt=""></div>
<div class="ulp-layer" id="ulp-layer-347" data-left="100" data-top="20" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="200" data-width="280" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="width: 280px; font-size: 18px; left: 100px; top: 20px;"><em>"{WDT_EDT_W_TEXT}"</em></div>
<div class="ulp-layer" id="ulp-layer-348" data-left="20" data-top="90" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="360" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 360px; font-size: 14px; left: 20px; top: 90px;">{WDT_EDT_W_AUTHOR}</div>
<div class="ulp-layer" id="ulp-layer-349" data-left="40" data-top="220" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="320" data-height="34" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 320px; height: 34px; font-size: 14px; left: 40px; top: 220px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-350" data-left="40" data-top="260" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="200" data-width="320" data-height="34" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 320px; height: 34px; font-size: 14px; left: 40px; top: 260px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"><input type="hidden" name="ulp-w_id" value="{WDT_W_ID}"></div>
<div class="ulp-layer" id="ulp-layer-351" data-left="40" data-top="300" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="200" data-width="320" data-height="34" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 320px; height: 34px; font-size: 14px; left: 40px; top: 300px;"><a class="ulp-submit" onClick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-352" data-left="0" data-top="470" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="800" data-width="400" data-font-size="12" data-scrollbar="off" data-confirmation="off" style="width: 400px; font-size: 12px; left: 0px; top: 470px;">{WDT_COPYRIGHT}</div>
<div class="ulp-layer" id="ulp-layer-353" data-left="0" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1000" data-width="400" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 20px; font-size: 24px; left: 0px; top: -30px;"><a href="#" onClick="return ulp_self_close();">×</a></div>
<div class="ulp-layer" id="ulp-layer-354" data-left="0" data-top="180" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="300" data-width="400" data-font-size="13" data-scrollbar="off" data-confirmation="off" style="width: 400px; font-size: 13px; left: 0px; top: 180px;">{WDT_EDT_W_TITLE}</div>
</div>
</div>
