<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp17.js"></script>
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
#ulp-QfePmoV6owAkEZDC .ulp-submit,#ulp-QfePmoV6owAkEZDC .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR2},#{WDT_EDT_BTN_COLOR1});}#ulp-QfePmoV6owAkEZDC .ulp-submit:hover,#ulp-QfePmoV6owAkEZDC .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR3};border:1px solid #{WDT_EDT_BTN_COLOR4};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR4},#{WDT_EDT_BTN_COLOR3});}#ulp-QfePmoV6owAkEZDC .ulp-input,#ulp-QfePmoV6owAkEZDC .ulp-input:hover,#ulp-QfePmoV6owAkEZDC .ulp-input:active,#ulp-QfePmoV6owAkEZDC .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-QfePmoV6owAkEZDC-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.9;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='90')";filter:alpha(opacity="90");}#ulp-QfePmoV6owAkEZDC .ulp-submit-button,#ulp-QfePmoV6owAkEZDC .ulp-submit-button:visited,#ulp-QfePmoV6owAkEZDC .ulp-submit-button:hover,#ulp-QfePmoV6owAkEZDC .ulp-submit-button:active{border-radius: 2px !important;}#ulp-QfePmoV6owAkEZDC .ulp-submit-facebook,#ulp-QfePmoV6owAkEZDC .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-QfePmoV6owAkEZDC .ulp-submit-facebook:hover,#ulp-QfePmoV6owAkEZDC .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-QfePmoV6owAkEZDC .ulp-submit-google,#ulp-QfePmoV6owAkEZDC .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-QfePmoV6owAkEZDC .ulp-submit-google:hover,#ulp-QfePmoV6owAkEZDC .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-184,#ulp-layer-184 p,#ulp-layer-184 a,#ulp-layer-184 span,#ulp-layer-184 li,#ulp-layer-184 input,#ulp-layer-184 button,#ulp-layer-184 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR1};}#ulp-layer-184{z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-185,#ulp-layer-185 p,#ulp-layer-185 a,#ulp-layer-185 span,#ulp-layer-185 li,#ulp-layer-185 input,#ulp-layer-185 button,#ulp-layer-185 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-185{background-color:#{WDT_EDT_TEXT_COLOR1};z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-186,#ulp-layer-186 p,#ulp-layer-186 a,#ulp-layer-186 span,#ulp-layer-186 li,#ulp-layer-186 input,#ulp-layer-186 button,#ulp-layer-186 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR2};}#ulp-layer-186{z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-187,#ulp-layer-187 p,#ulp-layer-187 a,#ulp-layer-187 span,#ulp-layer-187 li,#ulp-layer-187 input,#ulp-layer-187 button,#ulp-layer-187 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-187{background-color:#{WDT_EDT_TEXT_COLOR2};z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-188,#ulp-layer-188 p,#ulp-layer-188 a,#ulp-layer-188 span,#ulp-layer-188 li,#ulp-layer-188 input,#ulp-layer-188 button,#ulp-layer-188 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR3};}#ulp-layer-188{z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-189,#ulp-layer-189 p,#ulp-layer-189 a,#ulp-layer-189 span,#ulp-layer-189 li,#ulp-layer-189 input,#ulp-layer-189 button,#ulp-layer-189 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-189{background-color:#{WDT_EDT_TEXT_COLOR3};z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-190,#ulp-layer-190 p,#ulp-layer-190 a,#ulp-layer-190 span,#ulp-layer-190 li,#ulp-layer-190 input,#ulp-layer-190 button,#ulp-layer-190 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR4};}#ulp-layer-190{z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-191,#ulp-layer-191 p,#ulp-layer-191 a,#ulp-layer-191 span,#ulp-layer-191 li,#ulp-layer-191 input,#ulp-layer-191 button,#ulp-layer-191 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-191{background-color:#{WDT_EDT_TEXT_COLOR4};z-index:1000003;text-align:left;padding: 7px 15px;}#ulp-layer-192,#ulp-layer-192 p,#ulp-layer-192 a,#ulp-layer-192 span,#ulp-layer-192 li,#ulp-layer-192 input,#ulp-layer-192 button,#ulp-layer-192 textarea {font-family:'arial', arial;font-weight:800;color:#e33a0c;}#ulp-layer-192{background-color:#{WDT_EDT_W_COLOR};z-index:1000003;text-align:left;}#ulp-layer-193,#ulp-layer-193 p,#ulp-layer-193 a,#ulp-layer-193 span,#ulp-layer-193 li,#ulp-layer-193 input,#ulp-layer-193 button,#ulp-layer-193 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-193{z-index:1000007;text-align:justify;}#ulp-layer-194,#ulp-layer-194 p,#ulp-layer-194 a,#ulp-layer-194 span,#ulp-layer-194 li,#ulp-layer-194 input,#ulp-layer-194 button,#ulp-layer-194 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-194{z-index:1000007;text-align:justify;}#ulp-layer-195,#ulp-layer-195 p,#ulp-layer-195 a,#ulp-layer-195 span,#ulp-layer-195 li,#ulp-layer-195 input,#ulp-layer-195 button,#ulp-layer-195 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-195{z-index:1000007;text-align:center;}#ulp-layer-196,#ulp-layer-196 p,#ulp-layer-196 a,#ulp-layer-196 span,#ulp-layer-196 li,#ulp-layer-196 input,#ulp-layer-196 button,#ulp-layer-196 textarea {font-family:'arial', arial;font-weight:100;color:#2a7536;}#ulp-layer-196{z-index:1000007;text-align:right;}</style>
<div class="ulp-overlay" id="ulp-QfePmoV6owAkEZDC-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-QfePmoV6owAkEZDC" data-title="Subscription Form - Popup #04" data-width="680" data-height="370" data-close="on" data-position="middle-center" style="width: 680px; height: 370px; top: 50%; left: 50%; margin-left: -340px; margin-top: -185px; display: block;">
<div class="ulp-content" style="width: 680px; height: 370px;">
<div class="ulp-layer" id="ulp-layer-184" data-left="100" data-top="0" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="font-size: 18px; left: 100px; top: 0px;">{WDT_EDT_W_TITLE1}</div>
<div class="ulp-layer" id="ulp-layer-185" data-left="100" data-top="35" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="font-size: 20px; left: 100px; top: 35px;">{WDT_EDT_W_TEXT1}</div>
<div class="ulp-layer" id="ulp-layer-186" data-left="0" data-top="90" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="400" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="font-size: 18px; left: 0px; top: 90px;">{WDT_EDT_W_TITLE2}</div>
<div class="ulp-layer" id="ulp-layer-187" data-left="0" data-top="125" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="400" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="font-size: 20px; left: 0px; top: 125px;">{WDT_EDT_W_TEXT2}</div>
<div class="ulp-layer" id="ulp-layer-188" data-left="10" data-top="180" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="600" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="font-size: 18px; left: 10px; top: 180px;">{WDT_EDT_W_TITLE3}</div>
<div class="ulp-layer" id="ulp-layer-189" data-left="0" data-top="215" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="600" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="font-size: 20px; left: 0px; top: 215px;">{WDT_EDT_W_TEXT3}</div>
<div class="ulp-layer" id="ulp-layer-190" data-left="110" data-top="270" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="800" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="font-size: 18px; left: 110px; top: 270px;">{WDT_EDT_W_TITLE4}</div>
<div class="ulp-layer" id="ulp-layer-191" data-left="110" data-top="305" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="800" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="font-size: 20px; left: 110px; top: 305px;">{WDT_EDT_W_TEXT4}</div>
<div class="ulp-layer" id="ulp-layer-192" data-left="320" data-top="110" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="500" data-width="360" data-height="165" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 360px; height: 165px; font-size: 20px; left: 320px; top: 110px;"></div>
<div class="ulp-layer" id="ulp-layer-193" data-left="340" data-top="130" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="700" data-width="320" data-height="36" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 320px; height: 36px; font-size: 15px; left: 340px; top: 130px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-194" data-left="340" data-top="175" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="900" data-width="320" data-height="36" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 320px; height: 36px; font-size: 15px; left: 340px; top: 175px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"><input type="hidden" name="ulp-w_id" value="{WDT_W_ID}"></div>
<div class="ulp-layer" id="ulp-layer-195" data-left="340" data-top="220" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1300" data-width="320" data-height="38" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 320px; height: 38px; font-size: 16px; left: 340px; top: 220px;"><a class="ulp-submit" onClick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-196" data-left="630" data-top="70" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="2500" data-width="50" data-height="20" data-font-size="32" data-scrollbar="off" data-confirmation="off" style="width: 50px; height: 20px; font-size: 32px; left: 630px; top: 70px;"><a href="#" onClick="return ulp_self_close();">×</a></div>
</div>
</div>
