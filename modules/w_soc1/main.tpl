<div class="container">
     <div class="hero-unit">
        <h1>Preview Page</h1>
        <p>This is a Layered Popups preview page.</p>
      </div>

</div> 

<script src="http://witgetservice.com/wdt/js/ulp-jsonp3.js"></script>
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


#ulp-zJg1CNgm6ua9lh6y .ulp-submit,#ulp-zJg1CNgm6ua9lh6y .ulp-submit:visited{border-radius: 3px !important; background: #a6c93c;border:1px solid #a6c93c;background-image:linear-gradient(#94b336,#a6c93c);}#ulp-zJg1CNgm6ua9lh6y .ulp-submit:hover,#ulp-zJg1CNgm6ua9lh6y .ulp-submit:active{border-radius: 3px !important; background: #94b336;border:1px solid #a6c93c;background-image:linear-gradient(#a6c93c,#94b336);}#ulp-zJg1CNgm6ua9lh6y .ulp-input,#ulp-zJg1CNgm6ua9lh6y .ulp-input:hover,#ulp-zJg1CNgm6ua9lh6y .ulp-input:active,#ulp-zJg1CNgm6ua9lh6y .ulp-input:focus{border-width: 1px !important; border-radius: 3px !important; border-color:#606060;background-color:#000000 !important;background-color:rgba(0,0,0,0.8) !important;}#ulp-zJg1CNgm6ua9lh6y-overlay{background:#{WDT_EDT_BG_COLOR}};opacity:0.7;-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity='70')";filter:alpha(opacity="70");}#ulp-zJg1CNgm6ua9lh6y .ulp-submit-button,#ulp-zJg1CNgm6ua9lh6y .ulp-submit-button:visited,#ulp-zJg1CNgm6ua9lh6y .ulp-submit-button:hover,#ulp-zJg1CNgm6ua9lh6y .ulp-submit-button:active{border-radius: 3px !important;}#ulp-zJg1CNgm6ua9lh6y .ulp-submit-facebook,#ulp-zJg1CNgm6ua9lh6y .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-zJg1CNgm6ua9lh6y .ulp-submit-facebook:hover,#ulp-zJg1CNgm6ua9lh6y .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-zJg1CNgm6ua9lh6y .ulp-submit-google,#ulp-zJg1CNgm6ua9lh6y .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-zJg1CNgm6ua9lh6y .ulp-submit-google:hover,#ulp-zJg1CNgm6ua9lh6y .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-339,#ulp-layer-339 p,#ulp-layer-339 a,#ulp-layer-339 span,#ulp-layer-339 li,#ulp-layer-339 input,#ulp-layer-339 button,#ulp-layer-339 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-339{background-color:#000000;background-color:rgba(0,0,0,0.9);z-index:1000002;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 30px;}#ulp-layer-340,#ulp-layer-340 p,#ulp-layer-340 a,#ulp-layer-340 span,#ulp-layer-340 li,#ulp-layer-340 input,#ulp-layer-340 button,#ulp-layer-340 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-340{background-color:#000000;background-color:rgba(0,0,0,0.7);z-index:1000003;text-align:left;}#ulp-layer-341,#ulp-layer-341 p,#ulp-layer-341 a,#ulp-layer-341 span,#ulp-layer-341 li,#ulp-layer-341 input,#ulp-layer-341 button,#ulp-layer-341 textarea {font-family:'arial', arial;font-weight:100;color:#{WDT_EDT_TITLE_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-341{z-index:1000004;text-align:center;}#ulp-layer-342,#ulp-layer-342 p,#ulp-layer-342 a,#ulp-layer-342 span,#ulp-layer-342 li,#ulp-layer-342 input,#ulp-layer-342 button,#ulp-layer-342 textarea {font-family:'arial', arial;font-weight:100;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-342{background-color:#0597F2;background-color:rgba(5,151,242,);z-index:1000004;text-align:center;}#ulp-layer-343,#ulp-layer-343 p,#ulp-layer-343 a,#ulp-layer-343 span,#ulp-layer-343 li,#ulp-layer-343 input,#ulp-layer-343 button,#ulp-layer-343 textarea {font-family:'arial', arial;font-weight:100;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-343{z-index:1000004;text-align:justify;}#ulp-layer-344,#ulp-layer-344 p,#ulp-layer-344 a,#ulp-layer-344 span,#ulp-layer-344 li,#ulp-layer-344 input,#ulp-layer-344 button,#ulp-layer-344 textarea {font-family:'arial', arial;font-weight:100;color:#ffffff;}#ulp-layer-344{z-index:1000007;text-align:center;}#ulp-layer-345,#ulp-layer-345 p,#ulp-layer-345 a,#ulp-layer-345 span,#ulp-layer-345 li,#ulp-layer-345 input,#ulp-layer-345 button,#ulp-layer-345 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff; text-decoration:none;}#ulp-layer-345{background-color:#0597f2;background-color:rgba(5,151,242,0.9);z-index:1000007;text-align:center;line-height: 32px;}#ulp-layer-346,#ulp-layer-346 p,#ulp-layer-346 a,#ulp-layer-346 span,#ulp-layer-346 li,#ulp-layer-346 input,#ulp-layer-346 button,#ulp-layer-346 textarea {font-family:'arial', arial;font-weight:100;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-346{background-color:#0597F2;background-color:rgba(5,151,242,);z-index:1000004;text-align:center;}
#ulp-layer-344 img{
border:0px;
cursor:pointer;}
#ulp-layer-343{ text-align:center;}
</style>
					<div class="ulp-overlay" id="ulp-zJg1CNgm6ua9lh6y-overlay" style="display: block;"></div>
					<div class="ulp-window" id="ulp-zJg1CNgm6ua9lh6y" data-title="Social Form - Popup #02" data-width="640" data-height="400" data-close="on" data-position="middle-center" style="width: 640px; height: 400px; top: 50%; left: 50%; margin-left: -320px; margin-top: -200px; display: block;">
						<div class="ulp-content" style="width: 640px; height: 400px;">
							<div class="ulp-layer" id="ulp-layer-339" data-left="0" data-top="0" data-appearance="slide-down" data-appearance-speed="700" data-appearance-delay="0" data-width="640" data-height="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 400px; font-size: 14px; left: 0px; top: 0px;"><img src="{WDT_EDT_BGIMG}" alt=""></div>
							<div class="ulp-layer" id="ulp-layer-340" data-left="0" data-top="0" data-appearance="slide-down" data-appearance-speed="700" data-appearance-delay="0" data-width="640" data-height="400" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 400px; font-size: 14px; left: 0px; top: 0px;"></div>
							<div class="ulp-layer" id="ulp-layer-341" data-left="0" data-top="20" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="640" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 640px; font-size: 28px; left: 0px; top: 20px;">{WDT_EDT_W_TITLE}</div>
							<div class="ulp-layer" id="ulp-layer-342" data-left="120" data-top="80" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="400" data-height="4" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 400px; height: 4px; font-size: 28px; left: 120px; top: 80px;"></div>
							<div class="ulp-layer" id="ulp-layer-343" data-left="40" data-top="100" data-appearance="slide-left" data-appearance-speed="1000" data-appearance-delay="500" data-width="560" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 560px; font-size: 14px; left: 40px; top: 100px;">{WDT_EDT_W_TEXT}</div>
							<div class="ulp-layer" id="ulp-layer-344" data-left="40" data-top="260" data-appearance="slide-up" data-appearance-speed="1000" data-appearance-delay="500" data-width="560" data-font-size="14" data-scrollbar="off" data-confirmation="off" style="width: 560px; font-size: 14px; left: 40px; top: 260px;">
							
							
<a onclick="Share.vkontakte('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')"><img src="http://witgetservice.com/wdt/images/vk.png" /> </a>
<a onclick="Share.facebook('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')"><img src="http://witgetservice.com/wdt/images/f.png" /> </a>
<a onclick="Share.mailru('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')"><img src="http://witgetservice.com/wdt/images/mail.png" /> </a>
<a onclick="Share.odnoklassniki('{WDT_EDT_URL}','{WDT_EDT_SOC_DESC}')"><img src="http://witgetservice.com/wdt/images/ok.png" /> </a>
<a onclick="Share.twitter('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}')"><img src="http://witgetservice.com/wdt/images/twiter.png" /></a>						
							
</div>
							<div class="ulp-layer" id="ulp-layer-345" data-left="608" data-top="0" data-appearance="slide-down" data-appearance-speed="1000" data-appearance-delay="1000" data-width="32" data-height="32" data-font-size="32" data-scrollbar="off" data-confirmation="off" style="width: 32px; height: 32px; font-size: 32px; left: 608px; top: 0px;"><a href="#" onClick="return ulp_self_close();">×</a></div>
							<div class="ulp-layer" id="ulp-layer-346" data-left="0" data-top="396" data-appearance="slide-right" data-appearance-speed="1000" data-appearance-delay="200" data-width="640" data-height="4" data-font-size="28" data-scrollbar="off" data-confirmation="off" style="width: 640px; height: 4px; font-size: 28px; left: 0px; top: 396px;">{WDT_COPYRIGHT}</div>
						</div>
					</div>