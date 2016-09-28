<div class="container">

      <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

    </div>
<script src="http://witgetservice.com/wdt/js/ulp-jsonp18.js"></script>
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
	odnoklassniki: function(purl, text) {
		url  = 'http://www.odnoklassniki.ru/dk?st.cmd=addShare&st.s=1';
		url += '&st.comments=' + encodeURIComponent(text);
		url += '&st._surl='    + encodeURIComponent(purl);
		soc = 2;
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
	twitter: function(purl, ptitle) {
		url  = 'http://twitter.com/share?';
		url += 'text='      + encodeURIComponent(ptitle);
		url += '&url='      + encodeURIComponent(purl);
		url += '&counturl=' + encodeURIComponent(purl);
		soc = 4;
		Share.popup(url);
		
	},
	mailru: function(purl, ptitle, pimg, text) {
		url  = 'http://connect.mail.ru/share?';
		url += 'url='          + encodeURIComponent(purl);
		url += '&title='       + encodeURIComponent(ptitle);
		url += '&description=' + encodeURIComponent(text);
		url += '&imageurl='    + encodeURIComponent(pimg);
		soc = 5;
		Share.popup(url)
		
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
#ulp-Q42nEzUmJOu4M9dB .ulp-submit,#ulp-Q42nEzUmJOu4M9dB .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};}#ulp-Q42nEzUmJOu4M9dB .ulp-submit:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};}#ulp-Q42nEzUmJOu4M9dB .ulp-input,#ulp-Q42nEzUmJOu4M9dB .ulp-input:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-input:active,#ulp-Q42nEzUmJOu4M9dB .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-Q42nEzUmJOu4M9dB-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')";filter:alpha(opacity="80");}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button:visited,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button:active{border-radius: 2px !important;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook:active{background: #324b80;border:1px solid #324b80;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google:active{background: #b53e2f;border:1px solid #b53e2f;}#ulp-layer-126,#ulp-layer-126 p,#ulp-layer-126 a,#ulp-layer-126 span,#ulp-layer-126 li,#ulp-layer-126 input,#ulp-layer-126 button,#ulp-layer-126 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-126{background-color:#{WDT_EDT_W_COLOR1};z-index:1000003;text-align:left;}#ulp-layer-127,#ulp-layer-127 p,#ulp-layer-127 a,#ulp-layer-127 span,#ulp-layer-127 li,#ulp-layer-127 input,#ulp-layer-127 button,#ulp-layer-127 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-127{background-color:#{WDT_EDT_W_COLOR2};z-index:1000003;text-align:left;}#ulp-layer-128,#ulp-layer-128 p,#ulp-layer-128 a,#ulp-layer-128 span,#ulp-layer-128 li,#ulp-layer-128 input,#ulp-layer-128 button,#ulp-layer-128 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-128{z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px;}#ulp-layer-129,#ulp-layer-129 p,#ulp-layer-129 a,#ulp-layer-129 span,#ulp-layer-129 li,#ulp-layer-129 input,#ulp-layer-129 button,#ulp-layer-129 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-129{z-index:1000007;text-align:center;}#ulp-layer-130,#ulp-layer-130 p,#ulp-layer-130 a,#ulp-layer-130 span,#ulp-layer-130 li,#ulp-layer-130 input,#ulp-layer-130 button,#ulp-layer-130 textarea {font-family:'arial', arial;font-weight:400;color:#34495e;}#ulp-layer-130{z-index:1000007;text-align:center;}#ulp-layer-131,#ulp-layer-131 p,#ulp-layer-131 a,#ulp-layer-131 span,#ulp-layer-131 li,#ulp-layer-131 input,#ulp-layer-131 button,#ulp-layer-131 textarea {font-family:'arial', arial;font-weight:400;color:#34495e;}#ulp-layer-131{z-index:1000007;text-align:center;}#ulp-layer-132,#ulp-layer-132 p,#ulp-layer-132 a,#ulp-layer-132 span,#ulp-layer-132 li,#ulp-layer-132 input,#ulp-layer-132 button,#ulp-layer-132 textarea {font-family:'arial', arial;font-weight:400;color:#34495e;}#ulp-layer-132{z-index:1000007;text-align:center;}#ulp-layer-133,#ulp-layer-133 p,#ulp-layer-133 a,#ulp-layer-133 span,#ulp-layer-133 li,#ulp-layer-133 input,#ulp-layer-133 button,#ulp-layer-133 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-133{background-color:#ff4c36;background-color:rgba(255,76,54,1);z-index:1000007;text-align:center;}#ulp-layer-134,#ulp-layer-134 p,#ulp-layer-134 a,#ulp-layer-134 span,#ulp-layer-134 li,#ulp-layer-134 input,#ulp-layer-134 button,#ulp-layer-134 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-134{z-index:1000007;text-align:center;}#ulp-layer-135,#ulp-layer-135 p,#ulp-layer-135 a,#ulp-layer-135 span,#ulp-layer-135 li,#ulp-layer-135 input,#ulp-layer-135 button,#ulp-layer-135 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-135{z-index:1000007;text-align:justify;line-height: 1.3}#ulp-layer-136,#ulp-layer-136 p,#ulp-layer-136 a,#ulp-layer-136 span,#ulp-layer-136 li,#ulp-layer-136 input,#ulp-layer-136 button,#ulp-layer-136 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-136{z-index:1000007;text-align:left;}#ulp-layer-137,#ulp-layer-137 p,#ulp-layer-137 a,#ulp-layer-137 span,#ulp-layer-137 li,#ulp-layer-137 input,#ulp-layer-137 button,#ulp-layer-137 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-137{z-index:1000007;text-align:left;}#ulp-layer-138,#ulp-layer-138 p,#ulp-layer-138 a,#ulp-layer-138 span,#ulp-layer-138 li,#ulp-layer-138 input,#ulp-layer-138 button,#ulp-layer-138 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-138{z-index:1000007;text-align:center;}#ulp-layer-139,#ulp-layer-139 p,#ulp-layer-139 a,#ulp-layer-139 span,#ulp-layer-139 li,#ulp-layer-139 input,#ulp-layer-139 button,#ulp-layer-139 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-139{z-index:1000007;text-align:right;}</style>
<div class="ulp-overlay" id="ulp-Q42nEzUmJOu4M9dB-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-Q42nEzUmJOu4M9dB" data-title="Social Form - Popup #01" data-width="520" data-height="320" data-close="on" data-position="middle-center" style="width: 520px; height: 320px; top: 50%; left: 50%; margin-left: -245px; margin-top: -160px; display: block;">
<div class="ulp-content" style="width: 520px; height: 320px;">
<div class="ulp-layer" id="ulp-layer-126" data-left="0" data-top="0" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="0" data-width="170" data-height="320" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 170px; height: 320px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-127" data-left="170" data-top="0" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="0" data-width="370" data-height="320" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 370px; height: 320px; font-size: 14px; left: 170px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-128" data-left="0" data-top="0" data-appearance="fade-in" data-appearance-speed="1000" data-appearance-delay="1000" data-width="540" data-height="320" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 540px; height: 320px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-129" data-left="0" data-top="15" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="400" data-width="170" data-font-size="22" data-scrollbar="off" data-confirmation="off" style="width: 170px; font-size: 22px; left: 0px; top: 15px;">{WDT_EDT_W_TITLE1}</div>
<div class="ulp-layer" id="ulp-layer-130" data-left="0" data-top="60" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="700" data-width="170" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 170px; font-size: 14px; left: 0px; top: 60px;">

<a onclick="Share.vkontakte('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/v6.jpg" /> </a><br />
<a onclick="Share.facebook('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/f3.jpg" /> </a><br />
<a onclick="Share.mailru('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/m5.jpg" /> </a><br />
<a onclick="Share.odnoklassniki('{WDT_EDT_URL}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/o4.jpg" /> </a>

</div>
<div class="ulp-layer" id="ulp-layer-133" data-left="150" data-top="150" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="500" data-width="40" data-font-size="18" data-scrollbar="off" data-confirmation="off" style="width: 40px; font-size: 18px; left: 150px; top: 150px;">ИЛИ</div>
<div class="ulp-layer" id="ulp-layer-134" data-left="170" data-top="15" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="600" data-width="370" data-font-size="22" data-scrollbar="off" data-confirmation="off" style="width: 370px; font-size: 22px; left: 170px; top: 15px;">{WDT_EDT_W_TITLE2}</div>
<div class="ulp-layer" id="ulp-layer-135" data-left="190" data-top="50" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="700" data-width="330" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 330px; font-size: 14px; left: 190px; top: 50px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-136" data-left="220" data-top="155" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="900" data-width="270" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 270px; height: 36px; font-size: 14px; left: 220px; top: 155px;"><input class="ulp-input" type="text" name="ulp-name" placeholder="{WDT_EDT_INP_PLACE1}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"></div>
<div class="ulp-layer" id="ulp-layer-137" data-left="220" data-top="202" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="1100" data-width="270" data-height="36" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 270px; height: 36px; font-size: 14px; left: 220px; top: 202px;"><input class="ulp-input" type="text" name="ulp-email" placeholder="{WDT_EDT_INP_PLACE2}" value="" onfocus="jQuery(this).removeClass('ulp-input-error');"><input type="hidden" name="ulp-w_id" value="{WDT_W_ID}"></div>
<div class="ulp-layer" id="ulp-layer-138" data-left="180" data-top="250" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="1500" data-width="350" data-height="38" data-font-size="16" data-scrollbar="off" data-confirmation="off" style="width: 350px; height: 38px; font-size: 16px; left: 180px; top: 250px;"><a class="ulp-submit" onclick="return ulp_subscribe(this);" data-label="{WDT_EDT_BTN_TEXT}" data-loading="{WDT_EDT_BTN_TEXT2}">{WDT_EDT_BTN_TEXT}</a></div>
<div class="ulp-layer" id="ulp-layer-139" data-left="500" data-top="-30" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1000" data-width="40" data-height="20" data-font-size="24" data-scrollbar="off" data-confirmation="off" style="width: 40px; height: 20px; font-size: 24px; left: 500px; top: -30px;"><a href="#" onclick="return ulp_self_close();">×</a></div>
</div>
</div>
