<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp9.js"></script>
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
#ulp-4arouyedfFsETbsc .ulp-submit,#ulp-4arouyedfFsETbsc .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});}#ulp-4arouyedfFsETbsc .ulp-submit:hover,#ulp-4arouyedfFsETbsc .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR4};border:1px solid #{WDT_EDT_BTN_COLOR4};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});}#ulp-4arouyedfFsETbsc .ulp-input,#ulp-4arouyedfFsETbsc .ulp-input:hover,#ulp-4arouyedfFsETbsc .ulp-input:active,#ulp-4arouyedfFsETbsc .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-4arouyedfFsETbsc-overlay{background:#cccccc;opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-4arouyedfFsETbsc .ulp-submit-button,#ulp-4arouyedfFsETbsc .ulp-submit-button:visited,#ulp-4arouyedfFsETbsc .ulp-submit-button:hover,#ulp-4arouyedfFsETbsc .ulp-submit-button:active{border-radius: 2px !important;}#ulp-4arouyedfFsETbsc .ulp-submit-facebook,#ulp-4arouyedfFsETbsc .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-4arouyedfFsETbsc .ulp-submit-facebook:hover,#ulp-4arouyedfFsETbsc .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-4arouyedfFsETbsc .ulp-submit-google,#ulp-4arouyedfFsETbsc .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-4arouyedfFsETbsc .ulp-submit-google:hover,#ulp-4arouyedfFsETbsc .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-380,#ulp-layer-380 p,#ulp-layer-380 a,#ulp-layer-380 span,#ulp-layer-380 li,#ulp-layer-380 input,#ulp-layer-380 button,#ulp-layer-380 textarea {font-family:'arial', arial;font-weight:400;color:#FFFFFF;}#ulp-layer-380{background-color:#{WDT_EDT_W_COLOR};z-index:1000003;text-align:left;box-shadow: rgba(85,98,62,1) 0 4px 20px; border-radius: 3px;}#ulp-layer-381,#ulp-layer-381 p,#ulp-layer-381 a,#ulp-layer-381 span,#ulp-layer-381 li,#ulp-layer-381 input,#ulp-layer-381 button,#ulp-layer-381 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TITLE_COLOR};}#ulp-layer-381{z-index:1000007;text-align:center;}#ulp-layer-382,#ulp-layer-382 p,#ulp-layer-382 a,#ulp-layer-382 span,#ulp-layer-382 li,#ulp-layer-382 input,#ulp-layer-382 button,#ulp-layer-382 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-382{z-index:1000007;text-align:left;}#ulp-layer-383,#ulp-layer-383 p,#ulp-layer-383 a,#ulp-layer-383 span,#ulp-layer-383 li,#ulp-layer-383 input,#ulp-layer-383 button,#ulp-layer-383 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-383{background-color:#{WDT_EDT_FORM_COLOR};z-index:1000007;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px; border-radius: 3px;}#ulp-layer-384,#ulp-layer-384 p,#ulp-layer-384 a,#ulp-layer-384 span,#ulp-layer-384 li,#ulp-layer-384 input,#ulp-layer-384 button,#ulp-layer-384 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-384{z-index:1000008;text-align:justify;}#ulp-layer-385,#ulp-layer-385 p,#ulp-layer-385 a,#ulp-layer-385 span,#ulp-layer-385 li,#ulp-layer-385 input,#ulp-layer-385 button,#ulp-layer-385 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-385{z-index:1000008;text-align:justify;}#ulp-layer-386,#ulp-layer-386 p,#ulp-layer-386 a,#ulp-layer-386 span,#ulp-layer-386 li,#ulp-layer-386 input,#ulp-layer-386 button,#ulp-layer-386 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-386{z-index:1000009;text-align:left;}#ulp-layer-387,#ulp-layer-387 p,#ulp-layer-387 a,#ulp-layer-387 span,#ulp-layer-387 li,#ulp-layer-387 input,#ulp-layer-387 button,#ulp-layer-387 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}#ulp-layer-387{z-index:1000007;text-align:center;}#ulp-layer-388,#ulp-layer-388 p,#ulp-layer-388 a,#ulp-layer-388 span,#ulp-layer-388 li,#ulp-layer-388 input,#ulp-layer-388 button,#ulp-layer-388 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-388{z-index:1000007;text-align:right;}</style>
<div class="ulp-overlay" id="ulp-4arouyedfFsETbsc-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-4arouyedfFsETbsc" data-title="Subscription Form - Popup #11" data-width="480" data-height="460" data-close="on" data-position="middle-center" style="width: 480px; height: 460px; top: 50%; left: 50%; margin-left: -240px; margin-top: -230px; display: block;">
<div class="ulp-content" style="width: 480px; height: 460px;">
<div class="ulp-layer" id="ulp-layer-380" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="0" data-width="480" data-height="460" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 480px; height: 460px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-381" data-left="20" data-top="12" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="500" data-width="440" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 440px; font-size: 20px; left: 20px; top: 12px;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-382" data-left="0" data-top="50" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="800" data-width="480" data-height="300" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 480px; height: 300px; font-size: 14px; left: 0px; top: 50px;"><iframe width="100%" height="100%" src="{WDT_EDT_URL}?autoplay=1" frameborder="0" allowfullscreen=""></iframe></div>
<div class="ulp-layer" id="ulp-layer-383" data-left="-20" data-top="350" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="520" data-height="74" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 520px; height: 74px; font-size: 14px; left: -20px; top: 350px;"></div>
<div class="ulp-layer" id="ulp-layer-384" data-left="0" data-top="370" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="900" data-width="200" data-height="33" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 200px; height: 33px; font-size: 14px; left: 0px; top: 370px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-385" data-left="210" data-top="370" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1100" data-width="200" data-height="33" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 200px; height: 33px; font-size: 14px; left: 210px; top: 370px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"><input type="hidden" name="ulp-w_id" value="{WDT_W_ID}"></div>
<div class="ulp-layer" id="ulp-layer-386" data-left="420" data-top="370" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1300" data-width="60" data-height="38" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 60px; height: 38px; font-size: 14px; left: 420px; top: 370px;"><a class="ulp-submit" onClick="return ulp_subscribe(this);" data-label="▶" data-loading="...">▶</a></div>
<div class="ulp-layer" id="ulp-layer-387" data-left="20" data-top="432" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1500" data-width="440" data-font-size="13" data-scrollbar="off" data-confirmation="off" style="width: 440px; font-size: 13px; left: 20px; top: 432px;">{WDT_COPYRIGHT}</div>
<div class="ulp-layer" id="ulp-layer-388" data-left="440" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1500" data-width="40" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 40px; height: 20px; font-size: 24px; left: 440px; top: -30px;"><a href="#" onClick="return ulp_self_close();">×</a></div>
</div>
</div>
