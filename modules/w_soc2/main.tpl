<div class="container">
     <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

</div> 

<script src="http://witgetservice.com/wdt/js/ulp-jsonp11.js"></script>
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
					//alert(data);
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

#ulp-R5w6tgSQpiRO6hEP .ulp-submit,#ulp-R5w6tgSQpiRO6hEP .ulp-submit:visited{border-radius: 3px !important; background: #a6c93c;border:1px solid #a6c93c;background-image:linear-gradient(#94b336,#a6c93c);}#ulp-R5w6tgSQpiRO6hEP .ulp-submit:hover,#ulp-R5w6tgSQpiRO6hEP .ulp-submit:active{border-radius: 3px !important; background: #94b336;border:1px solid #a6c93c;background-image:linear-gradient(#a6c93c,#94b336);}#ulp-R5w6tgSQpiRO6hEP .ulp-input,#ulp-R5w6tgSQpiRO6hEP .ulp-input:hover,#ulp-R5w6tgSQpiRO6hEP .ulp-input:active,#ulp-R5w6tgSQpiRO6hEP .ulp-input:focus{border-width: 1px !important; border-radius: 3px !important; border-color:#606060;background-color:#000000 !important;background-color:rgba(0,0,0,0.8) !important;}#ulp-R5w6tgSQpiRO6hEP-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.7;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='70')";filter:alpha(opacity="70");}#ulp-R5w6tgSQpiRO6hEP .ulp-submit-button,#ulp-R5w6tgSQpiRO6hEP .ulp-submit-button:visited,#ulp-R5w6tgSQpiRO6hEP .ulp-submit-button:hover,#ulp-R5w6tgSQpiRO6hEP .ulp-submit-button:active{border-radius: 3px !important;}#ulp-R5w6tgSQpiRO6hEP .ulp-submit-facebook,#ulp-R5w6tgSQpiRO6hEP .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-R5w6tgSQpiRO6hEP .ulp-submit-facebook:hover,#ulp-R5w6tgSQpiRO6hEP .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-R5w6tgSQpiRO6hEP .ulp-submit-google,#ulp-R5w6tgSQpiRO6hEP .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-R5w6tgSQpiRO6hEP .ulp-submit-google:hover,#ulp-R5w6tgSQpiRO6hEP .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-417,#ulp-layer-417 p,#ulp-layer-417 a,#ulp-layer-417 span,#ulp-layer-417 li,#ulp-layer-417 input,#ulp-layer-417 button,#ulp-layer-417 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-417{background-color:#000000;background-color:rgba(0,0,0,0.9);z-index:1000002;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 30px;}#ulp-layer-418,#ulp-layer-418 p,#ulp-layer-418 a,#ulp-layer-418 span,#ulp-layer-418 li,#ulp-layer-418 input,#ulp-layer-418 button,#ulp-layer-418 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-418{background-color:#000000;background-color:rgba(0,0,0,0.4);z-index:1000003;text-align:left;}#ulp-layer-419,#ulp-layer-419 p,#ulp-layer-419 a,#ulp-layer-419 span,#ulp-layer-419 li,#ulp-layer-419 input,#ulp-layer-419 button,#ulp-layer-419 textarea {font-family:'arial', arial;font-weight:100;color:#{WDT_EDT_TITLE_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-419{z-index:1000004;text-align:center;}#ulp-layer-420,#ulp-layer-420 p,#ulp-layer-420 a,#ulp-layer-420 span,#ulp-layer-420 li,#ulp-layer-420 input,#ulp-layer-420 button,#ulp-layer-420 textarea {font-family:'arial', arial;font-weight:100;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-420{background-color:#fc0101;background-color:rgba(252,1,1,);z-index:1000004;text-align:center;}#ulp-layer-421,#ulp-layer-421 p,#ulp-layer-421 a,#ulp-layer-421 span,#ulp-layer-421 li,#ulp-layer-421 input,#ulp-layer-421 button,#ulp-layer-421 textarea {font-family:'arial', arial;font-weight:100;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-421{z-index:1000004;text-align:justify;}#ulp-layer-422,#ulp-layer-422 p,#ulp-layer-422 a,#ulp-layer-422 span,#ulp-layer-422 li,#ulp-layer-422 input,#ulp-layer-422 button,#ulp-layer-422 textarea {font-family:'arial', arial;font-weight:100;color:#ffffff;}#ulp-layer-422{z-index:1000007;text-align:center;}#ulp-layer-423,#ulp-layer-423 p,#ulp-layer-423 a,#ulp-layer-423 span,#ulp-layer-423 li,#ulp-layer-423 input,#ulp-layer-423 button,#ulp-layer-423 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff; text-decoration:none;}#ulp-layer-423{background-color:#fc0101;background-color:rgba(252,1,1,0.9);z-index:1000007;text-align:center;line-height: 32px;}#ulp-layer-424,#ulp-layer-424 p,#ulp-layer-424 a,#ulp-layer-424 span,#ulp-layer-424 li,#ulp-layer-424 input,#ulp-layer-424 button,#ulp-layer-424 textarea {font-family:'arial', arial;font-weight:100;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-424{background-color:#fc0101;background-color:rgba(252,1,1,);z-index:1000004;text-align:center;}</style>
<div class="ulp-overlay" id="ulp-R5w6tgSQpiRO6hEP-overlay" style="display: block;"></div>
<div class="ulp-window" id="ulp-R5w6tgSQpiRO6hEP" data-title="Social Form - Popup #02" data-width="640" data-height="400" data-close="on" data-position="middle-center" style="width: 640px; height: 400px; top: 50%; left: 50%; margin-left: -320px; margin-top: -200px; display: block;">
<div class="ulp-content" style="width: 640px; height: 400px;">
<div class="ulp-layer" id="ulp-layer-417" data-left="0" data-top="0" data-appearance="slide-down" data-appearance-speed="700" data-appearance-delay="0" data-width="640" data-height="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 400px; font-size: 14px; left: 0px; top: 0px;"><img src="http://witgetservice.com/wdt/images/fon.jpg" alt=""></div>
<div class="ulp-layer" id="ulp-layer-418" data-left="0" data-top="0" data-appearance="slide-down" data-appearance-speed="700" data-appearance-delay="0" data-width="640" data-height="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 400px; font-size: 14px; left: 0px; top: 0px;"></div>
<div class="ulp-layer" id="ulp-layer-419" data-left="0" data-top="20" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="640" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 640px; font-size: 28px; left: 0px; top: 20px;">{WDT_EDT_W_TITLE}</div>
<div class="ulp-layer" id="ulp-layer-420" data-left="120" data-top="80" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="400" data-height="4" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 4px; font-size: 28px; left: 120px; top: 80px;"></div>
<div class="ulp-layer" id="ulp-layer-421" data-left="40" data-top="100" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="500" data-width="560" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 560px; font-size: 14px; left: 40px; top: 100px;">{WDT_EDT_W_TEXT}</div>
<div class="ulp-layer" id="ulp-layer-422" data-left="40" data-top="260" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="500" data-width="560" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 560px; font-size: 14px; left: 40px; top: 260px;">
<a onclick="Share.vkontakte('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/v6.jpg" /> </a>
<a onclick="Share.facebook('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/f3.jpg" /> </a>
<a onclick="Share.mailru('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/m5.jpg" /> </a>
<a onclick="Share.odnoklassniki('{WDT_EDT_URL}','{WDT_EDT_SOC_DESC}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/o4.jpg" /> </a>
<a onclick="Share.twitter('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}')" style="cursor:pointer;"><img src="http://witgetservice.com/wdt/images/t2.jpg" /></a>
</div>
<div class="ulp-layer" id="ulp-layer-423" data-left="612" data-top="0" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1000" data-width="28" data-height="28" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 28px; height: 28px; font-size: 28px; left: 612px; top: 0px;"><a href="#" onClick="return ulp_self_close();">X</a></div>
<div class="ulp-layer" id="ulp-layer-424" data-left="0" data-top="396" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="640" data-height="4" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 4px; font-size: 28px; left: 0px; top: 396px;"></div>
</div>
</div>