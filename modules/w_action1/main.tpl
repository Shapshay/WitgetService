<div class="container">
     <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

</div> 

<script src="http://witgetservice.com/wdt/js/ulp-jsonp1.js"></script>
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
#ulp-qIzhPqIgkz4CtTUP .ulp-submit,#ulp-qIzhPqIgkz4CtTUP .ulp-submit:visited{border-radius: 2px !important; background: #b50101;border:1px solid #b50101;background-image:linear-gradient(#860101,#b50101);}
#ulp-qIzhPqIgkz4CtTUP .ulp-submit:hover,#ulp-qIzhPqIgkz4CtTUP .ulp-submit:active{border-radius: 2px !important; background: #860101;border:1px solid #b50101;background-image:linear-gradient(#b50101,#860101);}
#ulp-qIzhPqIgkz4CtTUP .ulp-input,#ulp-qIzhPqIgkz4CtTUP .ulp-input:hover,#ulp-qIzhPqIgkz4CtTUP .ulp-input:active,#ulp-qIzhPqIgkz4CtTUP .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#bc1616;background-color:#ff3233 !important;background-color:rgba(255,50,51,0.3) !important;}
#ulp-qIzhPqIgkz4CtTUP-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.7;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='70')";filter:alpha(opacity="70");}
#ulp-qIzhPqIgkz4CtTUP .ulp-submit-button,#ulp-qIzhPqIgkz4CtTUP .ulp-submit-button:visited,#ulp-qIzhPqIgkz4CtTUP .ulp-submit-button:hover,#ulp-qIzhPqIgkz4CtTUP .ulp-submit-button:active{border-radius: 2px !important;}
#ulp-qIzhPqIgkz4CtTUP .ulp-submit-facebook,#ulp-qIzhPqIgkz4CtTUP .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-qIzhPqIgkz4CtTUP .ulp-submit-facebook:hover,#ulp-qIzhPqIgkz4CtTUP .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-qIzhPqIgkz4CtTUP .ulp-submit-google,#ulp-qIzhPqIgkz4CtTUP .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-qIzhPqIgkz4CtTUP .ulp-submit-google:hover,#ulp-qIzhPqIgkz4CtTUP .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-116,#ulp-layer-116 p,#ulp-layer-116 a,#ulp-layer-116 span,#ulp-layer-116 li,#ulp-layer-116 input,#ulp-layer-116 button,#ulp-layer-116 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-116{z-index:1000002;text-align:left;}#ulp-layer-117,#ulp-layer-117 p,#ulp-layer-117 a,#ulp-layer-117 span,#ulp-layer-117 li,#ulp-layer-117 input,#ulp-layer-117 button,#ulp-layer-117 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}
#ulp-layer-117{z-index:1000004;text-align:left;}#ulp-layer-118,#ulp-layer-118 p,#ulp-layer-118 a,#ulp-layer-118 span,#ulp-layer-118 li,#ulp-layer-118 input,#ulp-layer-118 button,#ulp-layer-118 textarea {font-family:'Open Sans', arial;font-weight:100;color:#{WDT_EDT_TITLE_COLOR};text-shadow: #000000 1px 1px 1px;}
#ulp-layer-118{z-index:1000007;text-align:right;}#ulp-layer-119,#ulp-layer-119 p,#ulp-layer-119 a,#ulp-layer-119 span,#ulp-layer-119 li,#ulp-layer-119 input,#ulp-layer-119 button,#ulp-layer-119 textarea {font-family:'Open Sans', arial;font-weight:100;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-119{z-index:1000007;text-align:left;}
#ulp-layer-120,#ulp-layer-120 p,#ulp-layer-120 a,#ulp-layer-120 span,#ulp-layer-120 li,#ulp-layer-120 input,#ulp-layer-120 button,#ulp-layer-120 textarea {font-family:'Open Sans', arial;font-weight:100;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-120{z-index:1000007;text-align:left;}
#ulp-layer-121,#ulp-layer-121 p,#ulp-layer-121 a,#ulp-layer-121 span,#ulp-layer-121 li,#ulp-layer-121 input,#ulp-layer-121 button,#ulp-layer-121 textarea {font-family:'Open Sans', arial;font-weight:100;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-121{z-index:1000007;text-align:left;}
</style>
<div class="ulp-overlay" id="ulp-qIzhPqIgkz4CtTUP-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-qIzhPqIgkz4CtTUP" data-title="Not Form - Popup #01" data-width="640" data-height="400" data-close="on" data-position="middle-center" style="width: 640px; height: 400px; top: 50%; left: 50%; margin-left: -320px; margin-top: -200px; display: block;">
<div class="ulp-content" style="width: 640px; height: 400px;">
<div class="ulp-layer" id="ulp-layer-116" data-left="0" data-top="100" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="0" data-width="332" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 332px; font-size: 14px; left: 0px; top: 100px;"><img src="{WDT_EDT_IMG}" alt="">{WDT_COPYRIGHT}</div>
<div class="ulp-layer" id="ulp-layer-117" data-left="173" data-top="45" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="200" data-width="467" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 467px; font-size: 14px; left: 173px; top: 45px;"><img src="http://witgetservice.com/wdt/images/pointer01.png" alt=""></div>
<div class="ulp-layer" id="ulp-layer-118" data-left="0" data-top="0" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="200" data-width="640" data-font-size="32" data-scrollbar="off" data-confirmation="off" style="width: 640px; font-size: 32px; left: 0px; top: 0px;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-119" data-left="380" data-top="75" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="500" data-width="300" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 300px; font-size: 16px; left: 380px; top: 75px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-120" data-left="430" data-top="280" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1000" data-width="200" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 200px; font-size: 24px; left: 430px; top: 280px;"><a class="ulp-buynow-blue" target="_blank" href="{WDT_EDT_URL}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-121" data-left="0" data-top="0" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="100" data-width="100" data-height="20" data-font-size="13" data-scrollbar="off" data-confirmation="off" style="width: 100px; height: 20px; font-size: 13px; left: 0px; top: 0px;"><a href="#" onClick="return ulp_self_close();">{WDT_EDT_CLOSE_TEXT}</a></div>
</div>
</div>
