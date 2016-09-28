<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp8.js"></script>
<script>
var ulp_ajax_url = 'http://witgetservice.com/wdt/ajax7.php{WDT_U_ID}'; 
</script>
<script>
Share = {
	vkontakte: function(purl, ptitle, pimg, text) {
		url  = 'http://vkontakte.ru/share.php?';
		url += 'url='          + encodeURIComponent(purl);
		url += '&title='       + encodeURIComponent(ptitle);
		url += '&description=' + encodeURIComponent(text);
		url += '&image='       + encodeURIComponent(pimg);
		url += '&noparse=true';
		soc = 1;
		Share.popup(url);
		
	},
	facebook: function(purl, ptitle, pimg, text) {
		url  = 'http://www.facebook.com/sharer.php?s=100';
		url += '&p[title]='     + encodeURIComponent(ptitle);
		url += '&p[summary]='   + encodeURIComponent(text);
		url += '&p[url]='       + encodeURIComponent(purl);
		url += '&p[images][0]=' + encodeURIComponent(pimg);
		soc = 3;
		Share.popup(url);
		
	},
	popup: function(url) {
		window.open(url,'','toolbar=0,status=0,width=626,height=436');
		jQuery.ajax({
			url: 'http://witgetservice.com/wdt/soc_ajax.php{WDT_U_ID}',
			data: {
				"social": soc,
				"page" : url,
				"w_id" : {WDT_W_ID}
			},
			dataType: "jsonp",
			success: function(data) {
				try {
				} catch(error) {
				}
			}
		});
	}
};

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
#ulp-jgdIU9PpdkTq5J1u .ulp-submit,#ulp-jgdIU9PpdkTq5J1u .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};}#ulp-jgdIU9PpdkTq5J1u .ulp-submit:hover,#ulp-jgdIU9PpdkTq5J1u .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};}#ulp-jgdIU9PpdkTq5J1u .ulp-input,#ulp-jgdIU9PpdkTq5J1u .ulp-input:hover,#ulp-jgdIU9PpdkTq5J1u .ulp-input:active,#ulp-jgdIU9PpdkTq5J1u .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#FFFFFF !important;background-color:rgba(255,255,255,1) !important;}#ulp-jgdIU9PpdkTq5J1u-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-jgdIU9PpdkTq5J1u .ulp-submit-button,#ulp-jgdIU9PpdkTq5J1u .ulp-submit-button:visited,#ulp-jgdIU9PpdkTq5J1u .ulp-submit-button:hover,#ulp-jgdIU9PpdkTq5J1u .ulp-submit-button:active{border-radius: 2px !important;}#ulp-jgdIU9PpdkTq5J1u .ulp-submit-facebook,#ulp-jgdIU9PpdkTq5J1u .ulp-submit-facebook:visited{background: #{WDT_EDT_BTN_COLOR3};border:1px solid #{WDT_EDT_BTN_COLOR3};}#ulp-jgdIU9PpdkTq5J1u .ulp-submit-facebook:hover,#ulp-jgdIU9PpdkTq5J1u .ulp-submit-facebook:active{background: #{WDT_EDT_BTN_COLOR4};border:1px solid #{WDT_EDT_BTN_COLOR4};}#ulp-jgdIU9PpdkTq5J1u .ulp-submit-google,#ulp-jgdIU9PpdkTq5J1u .ulp-submit-google:visited{background: #{WDT_EDT_BTN_COLOR5};border:1px solid #{WDT_EDT_BTN_COLOR5};}#ulp-jgdIU9PpdkTq5J1u .ulp-submit-google:hover,#ulp-jgdIU9PpdkTq5J1u .ulp-submit-google:active{background: #{WDT_EDT_BTN_COLOR6};border:1px solid #{WDT_EDT_BTN_COLOR6};}#ulp-layer-362,#ulp-layer-362 p,#ulp-layer-362 a,#ulp-layer-362 span,#ulp-layer-362 li,#ulp-layer-362 input,#ulp-layer-362 button,#ulp-layer-362 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-362{background-color:#1e73be;background-color:rgba(30,115,190,1);background-image:url(http://witgetservice.com/wdt/images/transparent-squares.png);background-repeat:repeat;z-index:1000007;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px; transform: rotate(-3deg)}#ulp-layer-363,#ulp-layer-363 p,#ulp-layer-363 a,#ulp-layer-363 span,#ulp-layer-363 li,#ulp-layer-363 input,#ulp-layer-363 button,#ulp-layer-363 textarea {font-family:'arial', arial;font-weight:500;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-363{background-color:#{WDT_EDT_W_COLOR};z-index:1000007;text-align:center;padding: 5px 0;}#ulp-layer-364,#ulp-layer-364 p,#ulp-layer-364 a,#ulp-layer-364 span,#ulp-layer-364 li,#ulp-layer-364 input,#ulp-layer-364 button,#ulp-layer-364 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-364{z-index:1000007;text-align:left;transform: rotate(-2deg);-ms-transform: rotate(-2deg);}#ulp-layer-365,#ulp-layer-365 p,#ulp-layer-365 a,#ulp-layer-365 span,#ulp-layer-365 li,#ulp-layer-365 input,#ulp-layer-365 button,#ulp-layer-365 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-365{z-index:1000007;text-align:left;transform: rotate(2deg);-ms-transform: rotate(2deg);}#ulp-layer-366,#ulp-layer-366 p,#ulp-layer-366 a,#ulp-layer-366 span,#ulp-layer-366 li,#ulp-layer-366 input,#ulp-layer-366 button,#ulp-layer-366 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-366{z-index:1000007;text-align:center;transform: rotate(2deg);-ms-transform: rotate(2deg);}#ulp-layer-367,#ulp-layer-367 p,#ulp-layer-367 a,#ulp-layer-367 span,#ulp-layer-367 li,#ulp-layer-367 input,#ulp-layer-367 button,#ulp-layer-367 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-367{background-color:#{WDT_EDT_W_COLOR};background-color:rgba(230,226,77,1);z-index:1000007;text-align:center;padding: 4px 0;}#ulp-layer-368,#ulp-layer-368 p,#ulp-layer-368 a,#ulp-layer-368 span,#ulp-layer-368 li,#ulp-layer-368 input,#ulp-layer-368 button,#ulp-layer-368 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-368{z-index:1000007;text-align:center;transform: rotate(-5deg);-ms-transform: rotate(-5deg);}#ulp-layer-369,#ulp-layer-369 p,#ulp-layer-369 a,#ulp-layer-369 span,#ulp-layer-369 li,#ulp-layer-369 input,#ulp-layer-369 button,#ulp-layer-369 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-369{z-index:1000007;text-align:center;transform: rotate(3deg);-ms-transform: rotate(3deg);}#ulp-layer-370,#ulp-layer-370 p,#ulp-layer-370 a,#ulp-layer-370 span,#ulp-layer-370 li,#ulp-layer-370 input,#ulp-layer-370 button,#ulp-layer-370 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-370{background-color:#ac1ebf;background-color:rgba(172,30,191,1);z-index:1000007;text-align:center;transform: rotate(5deg);-ms-transform: rotate(5deg);}</style>
<div class="ulp-overlay" id="ulp-jgdIU9PpdkTq5J1u-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-jgdIU9PpdkTq5J1u" data-title="Subscription Form - Popup #16" data-width="500" data-height="500" data-close="on" data-position="middle-center" style="width: 500px; height: 500px; top: 50%; left: 50%; margin-left: -250px; margin-top: -250px; display: block;">
<div class="ulp-content" style="width: 500px; height: 500px;">
<div class="ulp-layer" id="ulp-layer-362" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="200" data-width="500" data-height="500" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 500px; height: 500px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-363" data-left="80" data-top="30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="300" data-width="400" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="width: 400px; font-size: 18px; left: 80px; top: 30px;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-364" data-left="20" data-top="100" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="300" data-width="360" data-height="44" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 360px; height: 44px; font-size: 16px; left: 20px; top: 100px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-365" data-left="100" data-top="170" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="350" data-width="360" data-height="44" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 360px; height: 44px; font-size: 16px; left: 100px; top: 170px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onFocus="jQuery(this).removeClass('ulp-input-error');"><input type="hidden" name="ulp-w_id" value="{WDT_W_ID}"></div>
<div class="ulp-layer" id="ulp-layer-366" data-left="40" data-top="240" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="400" data-width="200" data-height="48" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 200px; height: 48px; font-size: 20px; left: 40px; top: 240px;"><a class="ulp-submit ulp-inherited" onClick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-367" data-left="150" data-top="330" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="400" data-width="220" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="width: 220px; font-size: 18px; left: 150px; top: 330px;">{WDT_EDT_W_TEXT} </div>
<div class="ulp-layer" id="ulp-layer-368" data-left="40" data-top="410" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="500" data-width="200" data-height="48" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 200px; height: 48px; font-size: 20px; left: 40px; top: 410px;"><a class="ulp-submit-button ulp-submit-facebook ulp-inherited" onclick="Share.facebook('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')">FACEBOOK</a></div>
<div class="ulp-layer" id="ulp-layer-369" data-left="270" data-top="400" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="600" data-width="200" data-height="48" data-font-size="20" data-scrollbar="off" data-confirmation="off" style="width: 200px; height: 48px; font-size: 20px; left: 270px; top: 400px;"><a class="ulp-submit-button ulp-submit-google ulp-inherited" onclick="Share.vkontakte('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')">ВКонтакте</a></div>
<div class="ulp-layer" id="ulp-layer-370" data-left="460" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1000" data-width="40" data-height="40" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 40px; height: 40px; font-size: 28px; left: 460px; top: -30px;"><a class="ulp-inherited" href="#" onClick="return ulp_self_close();">X</a></div>
</div>
</div>
