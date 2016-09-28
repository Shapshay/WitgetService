<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp16.js"></script>
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
#ulp-zOjhqUEoIS2Ytl8q .ulp-submit,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR2},#{WDT_EDT_BTN_COLOR1});}#ulp-zOjhqUEoIS2Ytl8q .ulp-submit:hover,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR3};border:1px solid #{WDT_EDT_BTN_COLOR4};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR4},#{WDT_EDT_BTN_COLOR3});}#ulp-zOjhqUEoIS2Ytl8q .ulp-input,#ulp-zOjhqUEoIS2Ytl8q .ulp-input:hover,#ulp-zOjhqUEoIS2Ytl8q .ulp-input:active,#ulp-zOjhqUEoIS2Ytl8q .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#1a3a00;background-color:#103500 !important;background-color:rgba(16,53,0,0.5) !important;}#ulp-zOjhqUEoIS2Ytl8q-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-button,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-button:visited,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-button:hover,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-button:active{border-radius: 2px !important;}#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-facebook,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-facebook:hover,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-google,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-google:hover,#ulp-zOjhqUEoIS2Ytl8q .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-299,#ulp-layer-299 p,#ulp-layer-299 a,#ulp-layer-299 span,#ulp-layer-299 li,#ulp-layer-299 input,#ulp-layer-299 button,#ulp-layer-299 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-299{background-color:#d6d6d6;background-color:rgba(214,214,214,0.9);background-image:url(http://widgets/images/default/graybg03.png);background-repeat:repeat;z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px; border-radius: 3px;}#ulp-layer-300,#ulp-layer-300 p,#ulp-layer-300 a,#ulp-layer-300 span,#ulp-layer-300 li,#ulp-layer-300 input,#ulp-layer-300 button,#ulp-layer-300 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-300{z-index:1000003;text-align:left;box-shadow: rgba(240,240,240,1) 0 0 60px inset; border-radius: 3px;}#ulp-layer-301,#ulp-layer-301 p,#ulp-layer-301 a,#ulp-layer-301 span,#ulp-layer-301 li,#ulp-layer-301 input,#ulp-layer-301 button,#ulp-layer-301 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-301{z-index:1000007;text-align:left;}#ulp-layer-302,#ulp-layer-302 p,#ulp-layer-302 a,#ulp-layer-302 span,#ulp-layer-302 li,#ulp-layer-302 input,#ulp-layer-302 button,#ulp-layer-302 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-302{background-color:#{WDT_EDT_W_COLOR};z-index:1000003;text-align:left;box-shadow: rgba(0,0,0,0.3) 0 0 60px inset; border-radius: 0 3px 3px 0;}#ulp-layer-303,#ulp-layer-303 p,#ulp-layer-303 a,#ulp-layer-303 span,#ulp-layer-303 li,#ulp-layer-303 input,#ulp-layer-303 button,#ulp-layer-303 textarea {font-family:'Open Sans', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-303{z-index:1000007;text-align:center;}#ulp-layer-304,#ulp-layer-304 p,#ulp-layer-304 a,#ulp-layer-304 span,#ulp-layer-304 li,#ulp-layer-304 input,#ulp-layer-304 button,#ulp-layer-304 textarea {font-family:'Open Sans', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-304{z-index:1000007;text-align:justify;}#ulp-layer-305,#ulp-layer-305 p,#ulp-layer-305 a,#ulp-layer-305 span,#ulp-layer-305 li,#ulp-layer-305 input,#ulp-layer-305 button,#ulp-layer-305 textarea {font-family:'Open Sans', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-305{z-index:1000007;text-align:justify;}#ulp-layer-306,#ulp-layer-306 p,#ulp-layer-306 a,#ulp-layer-306 span,#ulp-layer-306 li,#ulp-layer-306 input,#ulp-layer-306 button,#ulp-layer-306 textarea {font-family:'Open Sans', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-306{z-index:1000007;text-align:justify;}#ulp-layer-307,#ulp-layer-307 p,#ulp-layer-307 a,#ulp-layer-307 span,#ulp-layer-307 li,#ulp-layer-307 input,#ulp-layer-307 button,#ulp-layer-307 textarea {font-family:'Open Sans', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-307{z-index:1000007;text-align:center;}#ulp-layer-308,#ulp-layer-308 p,#ulp-layer-308 a,#ulp-layer-308 span,#ulp-layer-308 li,#ulp-layer-308 input,#ulp-layer-308 button,#ulp-layer-308 textarea {font-family:'Open Sans', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-308{z-index:1000007;text-align:center;}#ulp-layer-309,#ulp-layer-309 p,#ulp-layer-309 a,#ulp-layer-309 span,#ulp-layer-309 li,#ulp-layer-309 input,#ulp-layer-309 button,#ulp-layer-309 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-309{z-index:1000007;text-align:right;}</style>
<div class="ulp-overlay" id="ulp-zOjhqUEoIS2Ytl8q-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-zOjhqUEoIS2Ytl8q" data-title="Subscription Form - Popup #14" data-width="640" data-height="300" data-close="on" data-position="middle-center" style="width: 640px; height: 300px; top: 50%; left: 50%; margin-left: -320px; margin-top: -150px; display: block;">
<div class="ulp-content" style="width: 640px; height: 300px;">
<div class="ulp-layer" id="ulp-layer-299" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="0" data-width="640" data-height="300" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 300px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-300" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="0" data-width="640" data-height="300" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 300px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-301" data-left="70" data-top="55" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="192" data-height="192" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 192px; height: 192px; font-size: 14px; left: 70px; top: 55px;"><img src="{WDT_EDT_IMG}" alt=""></div>
<div class="ulp-layer" id="ulp-layer-302" data-left="340" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="200" data-width="300" data-height="300" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 300px; height: 300px; font-size: 14px; left: 340px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-303" data-left="340" data-top="15" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="500" data-width="300" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 300px; font-size: 20px; left: 340px; top: 15px;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-304" data-left="360" data-top="60" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="700" data-width="260" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 260px; font-size: 14px; left: 360px; top: 60px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-305" data-left="360" data-top="140" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="900" data-width="260" data-height="34" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 34px; font-size: 14px; left: 360px; top: 140px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-306" data-left="360" data-top="180" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1100" data-width="260" data-height="34" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 34px; font-size: 14px; left: 360px; top: 180px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"><input type="hidden" name="ulp-w_id" value="{WDT_W_ID}"></div>
<div class="ulp-layer" id="ulp-layer-307" data-left="360" data-top="225" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1300" data-width="260" data-height="38" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 260px; height: 38px; font-size: 14px; left: 360px; top: 225px;"><a class="ulp-submit" onclick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="З{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-308" data-left="340" data-top="270" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1700" data-width="300" data-font-size="12" data-scrollbar="off" data-confirmation="off" style="width: 300px; font-size: 12px; left: 340px; top: 270px;">{WDT_EDT_W_COMENT}</div>
<div class="ulp-layer" id="ulp-layer-309" data-left="600" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="2500" data-width="40" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 40px; height: 20px; font-size: 24px; left: 600px; top: -30px;"><a href="#" onclick="return ulp_self_close();">×</a></div>
</div>
</div>
