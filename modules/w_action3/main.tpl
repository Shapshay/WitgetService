<div class="container">
     <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

</div> 

<script src="http://witgetservice.com/wdt/js/ulp-jsonp12.js"></script>
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
.ulp-buynow-blue, .ulp-buynow-blue:visited {
background-color: #{WDT_EDT_BTN_COLOR1};
background-repeat: repeat-x;
background-image: linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});
transition-duration: .3s;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR1}',endColorstr='#{WDT_EDT_BTN_COLOR2}',GradientType=0);
border: 1px solid #{WDT_EDT_BTN_COLOR1};
width: auto;
white-space: nowrap;
height: auto;
display: inline-block;
padding: 5px 20px;
border-radius: 5px;
margin: 0;
box-shadow: none;
}
.ulp-buynow-blue:hover, .ulp-buynow-blue:active {
background-color: #{WDT_EDT_BTN_COLOR1};
background-repeat: repeat-x;
background-image: linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR3}',endColorstr='#{WDT_EDT_BTN_COLOR4}',GradientType=0);
box-shadow: none;
}
#ulp-Ge299Rq69coQEOEK .ulp-submit,#ulp-Ge299Rq69coQEOEK .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};}#ulp-Ge299Rq69coQEOEK .ulp-submit:hover,#ulp-Ge299Rq69coQEOEK .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};}#ulp-Ge299Rq69coQEOEK .ulp-input,#ulp-Ge299Rq69coQEOEK .ulp-input:hover,#ulp-Ge299Rq69coQEOEK .ulp-input:active,#ulp-Ge299Rq69coQEOEK .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-Ge299Rq69coQEOEK-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-Ge299Rq69coQEOEK .ulp-submit-button,#ulp-Ge299Rq69coQEOEK .ulp-submit-button:visited,#ulp-Ge299Rq69coQEOEK .ulp-submit-button:hover,#ulp-Ge299Rq69coQEOEK .ulp-submit-button:active{border-radius: 2px !important;}#ulp-Ge299Rq69coQEOEK .ulp-submit-facebook,#ulp-Ge299Rq69coQEOEK .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;}#ulp-Ge299Rq69coQEOEK .ulp-submit-facebook:hover,#ulp-Ge299Rq69coQEOEK .ulp-submit-facebook:active{background: #324b80;border:1px solid #324b80;}#ulp-Ge299Rq69coQEOEK .ulp-submit-google,#ulp-Ge299Rq69coQEOEK .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;}#ulp-Ge299Rq69coQEOEK .ulp-submit-google:hover,#ulp-Ge299Rq69coQEOEK .ulp-submit-google:active{background: #b53e2f;border:1px solid #b53e2f;}#ulp-layer-425,#ulp-layer-425 p,#ulp-layer-425 a,#ulp-layer-425 span,#ulp-layer-425 li,#ulp-layer-425 input,#ulp-layer-425 button,#ulp-layer-425 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-425{background-color:#{WDT_EDT_W_COLOR};z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px; border-radius: 3px;}#ulp-layer-426,#ulp-layer-426 p,#ulp-layer-426 a,#ulp-layer-426 span,#ulp-layer-426 li,#ulp-layer-426 input,#ulp-layer-426 button,#ulp-layer-426 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-426{z-index:1000005;text-align:left;box-shadow: rgba(32,32,32,0.1) 0 0 90px inset; border-radius: 3px;}#ulp-layer-427,#ulp-layer-427 p,#ulp-layer-427 a,#ulp-layer-427 span,#ulp-layer-427 li,#ulp-layer-427 input,#ulp-layer-427 button,#ulp-layer-427 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TITLE_COLOR};}#ulp-layer-427{z-index:1000007;text-align:left;letter-spacing: -1px; font-style: italic;}#ulp-layer-428,#ulp-layer-428 p,#ulp-layer-428 a,#ulp-layer-428 span,#ulp-layer-428 li,#ulp-layer-428 input,#ulp-layer-428 button,#ulp-layer-428 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-428{z-index:1000007;text-align:justify;line-height: 1.3; font-style: italic;}#ulp-layer-434,#ulp-layer-434 p,#ulp-layer-434 a,#ulp-layer-434 span,#ulp-layer-434 li,#ulp-layer-434 input,#ulp-layer-434 button,#ulp-layer-434 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-434{z-index:1000009;text-align:center;}#ulp-layer-436,#ulp-layer-436 p,#ulp-layer-436 a,#ulp-layer-436 span,#ulp-layer-436 li,#ulp-layer-436 input,#ulp-layer-436 button,#ulp-layer-436 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px; text-decoration:none;}#ulp-layer-436{z-index:1000007;text-align:right;}#ulp-layer-437,#ulp-layer-437 p,#ulp-layer-437 a,#ulp-layer-437 span,#ulp-layer-437 li,#ulp-layer-437 input,#ulp-layer-437 button,#ulp-layer-437 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-437{background-color:#e8990f;background-color:rgba(232,153,15,0.9);z-index:1000005;text-align:left;}#ulp-layer-438,#ulp-layer-438 p,#ulp-layer-438 a,#ulp-layer-438 span,#ulp-layer-438 li,#ulp-layer-438 input,#ulp-layer-438 button,#ulp-layer-438 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-438{z-index:1000007;text-align:left;}#ulp-layer-439,#ulp-layer-439 p,#ulp-layer-439 a,#ulp-layer-439 span,#ulp-layer-439 li,#ulp-layer-439 input,#ulp-layer-439 button,#ulp-layer-439 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-439{z-index:1000007;text-align:left;}#ulp-layer-440,#ulp-layer-440 p,#ulp-layer-440 a,#ulp-layer-440 span,#ulp-layer-440 li,#ulp-layer-440 input,#ulp-layer-440 button,#ulp-layer-440 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-440{background-color:#e8990f;background-color:rgba(232,153,15,0.9);z-index:1000007;text-align:left;}#ulp-layer-441,#ulp-layer-441 p,#ulp-layer-441 a,#ulp-layer-441 span,#ulp-layer-441 li,#ulp-layer-441 input,#ulp-layer-441 button,#ulp-layer-441 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-441{z-index:1000007;text-align:left;}</style>
<div class="ulp-overlay" id="ulp-Ge299Rq69coQEOEK-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-Ge299Rq69coQEOEK" data-title="Subscription Form - Popup #12" data-width="700" data-height="400" data-close="on" data-position="middle-center" style="width: 700px; height: 400px; top: 50%; left: 50%; margin-left: -350px; margin-top: -200px; display: block;">
<div class="ulp-content" style="width: 700px; height: 400px;">
<div class="ulp-layer" id="ulp-layer-425" data-left="13" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="0" data-width="600" data-height="500" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 600px; height: 500px; font-size: 14px; left: 13px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-426" data-left="13" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="0" data-width="600" data-height="500" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 600px; height: 500px; font-size: 14px; left: 13px; top: 0px;"></div>
<div class="ulp-layer ulp-animated ulp-bounceInDown" id="ulp-layer-427" data-left="300" data-top="15" data-appearance="bounceInDown" data-appearance-speed="1000" data-appearance-delay="500" data-width="580" data-font-size="30" data-scrollbar="off" data-confirmation="off" style="width: 580px; font-size: 30px; left: 300px; top: 15px; animation-duration: 1000ms; animation-delay: 500ms;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-428" data-left="300" data-top="60" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="300" data-width="300" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 300px; font-size: 16px; left: 300px; top: 60px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-434" data-left="50" data-top="311" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="900" data-width="150" data-height="60" data-font-size="15" data-scrollbar="off" data-confirmation="off" style="width: 150px; height: 60px; font-size: 15px; left: 50px; top: 311px;"><a class="ulp-submit" href="{WDT_EDT_URL}" target="_blank" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}" style="padding:20px; font-size:24px; cursor:pointer;">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-436" data-left="580" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1500" data-width="30" data-height="30" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 30px; height: 30px; font-size: 24px; left: 580px; top: -30px;"><a href="#" onClick="return ulp_self_close();">X</a></div>
<div class="ulp-layer" id="ulp-layer-437" data-left="40" data-top="20" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="200" data-width="225" data-height="199" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 225px; height: 199px; font-size: 14px; left: 40px; top: 20px;"></div>
<div class="ulp-layer" id="ulp-layer-438" data-left="47" data-top="25" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="200" data-width="212" data-height="191" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 212px; height: 191px; font-size: 14px; left: 47px; top: 25px;"><img src="{WDT_EDT_IMG}" alt=""></div>
<div class="ulp-layer" id="ulp-layer-439" data-left="350" data-top="200" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="200" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="font-size: 14px; left: 350px; top: 200px;"><img src="http://witgetservice.com/wdt/images/strelka.png" alt=""></div>
<div class="ulp-layer" id="ulp-layer-440" data-left="220" data-top="265" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="500" data-width="377" data-height="220" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 377px; height: 220px; font-size: 14px; left: 220px; top: 265px;"></div>
<div class="ulp-layer" id="ulp-layer-441" data-left="235" data-top="275" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="500" data-width="350" data-height="200" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 350px; height: 200px; font-size: 14px; left: 235px; top: 275px;"><iframe width="100%" height="100%" src="{WDT_EDT_VIDEO}?autoplay=1" frameborder="0" allowfullscreen=""></iframe></div>
</div>
</div>
