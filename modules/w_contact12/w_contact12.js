var strVar="";
strVar += "<script src=\"http:\/\/witgetservice.com\/wdt\/js\/ulp-jsonp18.js\"><\/script>";
strVar += "<script>";
strVar += "var ulp_ajax_url = 'http:\/\/witgetservice.com\/wdt\/ajax7.php{WDT_U_ID}'; ";
strVar += "<\/script>";
strVar += "<script>";
strVar += "Share = {";
strVar += "	vkontakte: function(purl, ptitle, pimg, text) {";
strVar += "		url  = 'http:\/\/vkontakte.ru\/share.php?';";
strVar += "		url += 'url='          + encodeURIComponent(purl);";
strVar += "		url += '&title='       + encodeURIComponent(ptitle);";
strVar += "		url += '&description=' + encodeURIComponent(text);";
strVar += "		url += '&image='       + encodeURIComponent(pimg);";
strVar += "		url += '&noparse=true';";
strVar += "		soc = 1;";
strVar += "		Share.popup(url);";
strVar += "		";
strVar += "	},";
strVar += "	odnoklassniki: function(purl, text) {";
strVar += "		url  = 'http:\/\/www.odnoklassniki.ru\/dk?st.cmd=addShare&st.s=1';";
strVar += "		url += '&st.comments=' + encodeURIComponent(text);";
strVar += "		url += '&st._surl='    + encodeURIComponent(purl);";
strVar += "		soc = 2;";
strVar += "		Share.popup(url);";
strVar += "		";
strVar += "	},";
strVar += "	facebook: function(purl, ptitle, pimg, text) {";
strVar += "		url  = 'http:\/\/www.facebook.com\/sharer.php?s=100';";
strVar += "		url += '&p[title]='     + encodeURIComponent(ptitle);";
strVar += "		url += '&p[summary]='   + encodeURIComponent(text);";
strVar += "		url += '&p[url]='       + encodeURIComponent(purl);";
strVar += "		url += '&p[images][0]=' + encodeURIComponent(pimg);";
strVar += "		soc = 3;";
strVar += "		Share.popup(url);";
strVar += "		";
strVar += "	},";
strVar += "	twitter: function(purl, ptitle) {";
strVar += "		url  = 'http:\/\/twitter.com\/share?';";
strVar += "		url += 'text='      + encodeURIComponent(ptitle);";
strVar += "		url += '&url='      + encodeURIComponent(purl);";
strVar += "		url += '&counturl=' + encodeURIComponent(purl);";
strVar += "		soc = 4;";
strVar += "		Share.popup(url);";
strVar += "		";
strVar += "	},";
strVar += "	mailru: function(purl, ptitle, pimg, text) {";
strVar += "		url  = 'http:\/\/connect.mail.ru\/share?';";
strVar += "		url += 'url='          + encodeURIComponent(purl);";
strVar += "		url += '&title='       + encodeURIComponent(ptitle);";
strVar += "		url += '&description=' + encodeURIComponent(text);";
strVar += "		url += '&imageurl='    + encodeURIComponent(pimg);";
strVar += "		soc = 5;";
strVar += "		Share.popup(url)";
strVar += "		";
strVar += "	},";
strVar += "";
strVar += "	popup: function(url) {";
strVar += "		window.open(url,'','toolbar=0,status=0,width=626,height=436');";
strVar += "		jQuery.ajax({";
strVar += "			url: 'http:\/\/witgetservice.com\/wdt\/soc_ajax.php{WDT_U_ID}',";
strVar += "			data: {";
strVar += "				\"social\": soc,";
strVar += "				\"page\" : url,";
strVar += "				\"w_id\" : {WDT_W_ID}";
strVar += "			},";
strVar += "			dataType: \"jsonp\",";
strVar += "			success: function(data) {";
strVar += "				try {";
strVar += "				} catch(error) {";
strVar += "				}";
strVar += "			}";
strVar += "		});";
strVar += "	}";
strVar += "};";
strVar += "";
strVar += "<\/script>";
strVar += "<style>";
strVar += ".ulp-overlay {";
strVar += "position: fixed;";
strVar += "z-index: 1000000;";
strVar += "top: 0px;";
strVar += "left: 0px;";
strVar += "height: 100%;";
strVar += "width: 100%;";
strVar += "display: none;";
strVar += "}";
strVar += ".ulp-window {";
strVar += "font-size: 14px;";
strVar += "font-family: arial, verdana;";
strVar += "position: fixed;";
strVar += "z-index: 1000001;";
strVar += "text-align: left;";
strVar += "display: none;";
strVar += "}";
strVar += ".ulp-inline-window {";
strVar += "font-size: 14px;";
strVar += "font-family: arial, verdana;";
strVar += "text-align: left;";
strVar += "display: none;";
strVar += "}";
strVar += ".ulp-content {";
strVar += "position: relative;";
strVar += "}";
strVar += ".ulp-layer {";
strVar += "position: absolute;";
strVar += "box-sizing: border-box;";
strVar += "-moz-box-sizing: border-box;";
strVar += "-webkit-box-sizing: border-box;";
strVar += "-o-box-sizing: border-box;";
strVar += "-khtml-box-sizing: border-box;";
strVar += "text-align: justify;";
strVar += "line-height: 1.475;";
strVar += "}";
strVar += ".ulp-layer img {";
strVar += "max-width: 100% !important;";
strVar += "min-width: 0px !important;";
strVar += "margin: 0 !important;";
strVar += "padding: 0 !important;";
strVar += "border: none !important;";
strVar += "box-shadow: none !important;";
strVar += "-webkit-box-shadow: none !important;";
strVar += "-moz-box-shadow: none !important;";
strVar += "-ms-box-shadow: none !important;";
strVar += "-o-box-shadow: none !important;";
strVar += "}";
strVar += ".ulp-input {";
strVar += "-moz-border-radius: 2px !important;";
strVar += "-webkit-border-radius: 2px !important;";
strVar += "-o-border-radius: 2px !important;";
strVar += "-ms-border-radius: 2px !important;";
strVar += "-khtml-border-radius: 2px !important;";
strVar += "border-radius: 2px !important;";
strVar += "vertical-align: middle !important;";
strVar += "border-width: 1px !important;";
strVar += "border-style: solid !important;";
strVar += "border-color: #888;";
strVar += "border-spacing: 0 !important;";
strVar += "clear: both !important;	";
strVar += "width: 100% !important;";
strVar += "margin: 0px !important;";
strVar += "-moz-box-sizing: border-box !important;";
strVar += "-webkit-box-sizing: border-box !important;";
strVar += "-ms-box-sizing: border-box !important;";
strVar += "box-sizing: border-box !important;";
strVar += "height: 100% !important;";
strVar += "background: #FFFFFF;";
strVar += "margin: 0 !important;";
strVar += "padding: 0px 6px !important;";
strVar += "line-height: 1.5 !important;";
strVar += "background: rgba(255,255,255,0.8);";
strVar += "-moz-box-shadow: none !important;";
strVar += "-webkit-box-shadow: none !important;";
strVar += "-o-box-shadow: none !important;";
strVar += "-ms-box-shadow: none !important;";
strVar += "box-shadow: none !important;";
strVar += "font-size: inherit !important;";
strVar += "}";
strVar += ".ulp-input-error {";
strVar += "background-image: url(http:\/\/witgetservice.com\/wdt\/images\/error.png);";
strVar += "background-position: 100% 50%;";
strVar += "background-repeat: no-repeat;";
strVar += "border-color: red !important;";
strVar += "}";
strVar += ".ulp-submit, .ulp-submit:visited, .ulp-submit-button, .ulp-submit-button:visited {";
strVar += "text-decoration: none !important;";
strVar += "font-size: inherit !important;";
strVar += "text-shadow: 0 -1px 1px rgba(0,0,0,.25);";
strVar += "background-color: #{WDT_EDT_BTN_COLOR2};";
strVar += "background-repeat: repeat-x;";
strVar += "background-image: -moz-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});";
strVar += "background-image: -ms-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});";
strVar += "background-image: -webkit-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});";
strVar += "background-image: -o-linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});";
strVar += "background-image: linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});";
strVar += "transition-duration: .3s;";
strVar += "-moz-transition-duration: .3s;";
strVar += "-webkit-transition-duration: .3s;";
strVar += "-o-transition-duration: .3s;";
strVar += "-khtml-transition-duration: .3s;";
strVar += "filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR1}',endColorstr='#{WDT_EDT_BTN_COLOR2}',GradientType=0);";
strVar += "border: 1px solid #019ad2;";
strVar += "width: auto;";
strVar += "white-space: nowrap;";
strVar += "height: auto;";
strVar += "position: relative;";
strVar += "display: inline-block;";
strVar += "padding: 5px 20px;";
strVar += "line-height: 1.5;";
strVar += "cursor: pointer;";
strVar += "-moz-border-radius: 2px;";
strVar += "-webkit-border-radius: 2px;";
strVar += "-o-border-radius: 2px;";
strVar += "-ms-border-radius: 2px;";
strVar += "-khtml-border-radius: 2px;";
strVar += "border-radius: 2px;";
strVar += "margin: 0;";
strVar += "-webkit-box-shadow: none;";
strVar += "-moz-box-shadow: none;";
strVar += "-o-box-shadow: none;";
strVar += "-ms-box-shadow: none;";
strVar += "box-shadow: none;";
strVar += "}";
strVar += ".ulp-window a {";
strVar += "text-decoration: none !important;";
strVar += "}";
strVar += ".ulp-submit:hover, .ulp-submit:active, .ulp-submit-button:hover, .ulp-submit-button:active {";
strVar += "background-color:#{WDT_EDT_BTN_COLOR4};";
strVar += "background-repeat:repeat-x;";
strVar += "background-image:-moz-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});";
strVar += "background-image:-ms-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});";
strVar += "background-image:-webkit-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});";
strVar += "background-image:-o-linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});";
strVar += "background-image:linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});";
strVar += "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR3}',endColorstr='#{WDT_EDT_BTN_COLOR4}',GradientType=0);";
strVar += "border: 1px solid #019ad2;";
strVar += "-webkit-box-shadow: none;";
strVar += "-moz-box-shadow: none;";
strVar += "-o-box-shadow: none;";
strVar += "-ms-box-shadow: none;";
strVar += "box-shadow: none;";
strVar += "}";
strVar += "#ulp-Q42nEzUmJOu4M9dB .ulp-submit,#ulp-Q42nEzUmJOu4M9dB .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR1};border:1px solid #{WDT_EDT_BTN_COLOR1};}#ulp-Q42nEzUmJOu4M9dB .ulp-submit:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit:active{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #{WDT_EDT_BTN_COLOR2};}#ulp-Q42nEzUmJOu4M9dB .ulp-input,#ulp-Q42nEzUmJOu4M9dB .ulp-input:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-input:active,#ulp-Q42nEzUmJOu4M9dB .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#ffffff;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}#ulp-Q42nEzUmJOu4M9dB-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:\"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')\";filter:alpha(opacity=\"80\");}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button:visited,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-button:active{border-radius: 2px !important;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-facebook:active{background: #324b80;border:1px solid #324b80;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;}#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google:hover,#ulp-Q42nEzUmJOu4M9dB .ulp-submit-google:active{background: #b53e2f;border:1px solid #b53e2f;}#ulp-layer-126,#ulp-layer-126 p,#ulp-layer-126 a,#ulp-layer-126 span,#ulp-layer-126 li,#ulp-layer-126 input,#ulp-layer-126 button,#ulp-layer-126 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-126{background-color:#{WDT_EDT_W_COLOR1};z-index:1000003;text-align:left;}#ulp-layer-127,#ulp-layer-127 p,#ulp-layer-127 a,#ulp-layer-127 span,#ulp-layer-127 li,#ulp-layer-127 input,#ulp-layer-127 button,#ulp-layer-127 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-127{background-color:#{WDT_EDT_W_COLOR2};z-index:1000003;text-align:left;}#ulp-layer-128,#ulp-layer-128 p,#ulp-layer-128 a,#ulp-layer-128 span,#ulp-layer-128 li,#ulp-layer-128 input,#ulp-layer-128 button,#ulp-layer-128 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-128{z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px;}#ulp-layer-129,#ulp-layer-129 p,#ulp-layer-129 a,#ulp-layer-129 span,#ulp-layer-129 li,#ulp-layer-129 input,#ulp-layer-129 button,#ulp-layer-129 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-129{z-index:1000007;text-align:center;}#ulp-layer-130,#ulp-layer-130 p,#ulp-layer-130 a,#ulp-layer-130 span,#ulp-layer-130 li,#ulp-layer-130 input,#ulp-layer-130 button,#ulp-layer-130 textarea {font-family:'arial', arial;font-weight:400;color:#34495e;}#ulp-layer-130{z-index:1000007;text-align:center;}#ulp-layer-131,#ulp-layer-131 p,#ulp-layer-131 a,#ulp-layer-131 span,#ulp-layer-131 li,#ulp-layer-131 input,#ulp-layer-131 button,#ulp-layer-131 textarea {font-family:'arial', arial;font-weight:400;color:#34495e;}#ulp-layer-131{z-index:1000007;text-align:center;}#ulp-layer-132,#ulp-layer-132 p,#ulp-layer-132 a,#ulp-layer-132 span,#ulp-layer-132 li,#ulp-layer-132 input,#ulp-layer-132 button,#ulp-layer-132 textarea {font-family:'arial', arial;font-weight:400;color:#34495e;}#ulp-layer-132{z-index:1000007;text-align:center;}#ulp-layer-133,#ulp-layer-133 p,#ulp-layer-133 a,#ulp-layer-133 span,#ulp-layer-133 li,#ulp-layer-133 input,#ulp-layer-133 button,#ulp-layer-133 textarea {font-family:'arial', arial;font-weight:700;color:#ffffff;}#ulp-layer-133{background-color:#ff4c36;background-color:rgba(255,76,54,1);z-index:1000007;text-align:center;}#ulp-layer-134,#ulp-layer-134 p,#ulp-layer-134 a,#ulp-layer-134 span,#ulp-layer-134 li,#ulp-layer-134 input,#ulp-layer-134 button,#ulp-layer-134 textarea {font-family:'arial', arial;font-weight:700;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-134{z-index:1000007;text-align:center;}#ulp-layer-135,#ulp-layer-135 p,#ulp-layer-135 a,#ulp-layer-135 span,#ulp-layer-135 li,#ulp-layer-135 input,#ulp-layer-135 button,#ulp-layer-135 textarea {font-family:'arial', arial;font-weight:400;color:#{WDT_EDT_TEXT_COLOR};}#ulp-layer-135{z-index:1000007;text-align:justify;line-height: 1.3}#ulp-layer-136,#ulp-layer-136 p,#ulp-layer-136 a,#ulp-layer-136 span,#ulp-layer-136 li,#ulp-layer-136 input,#ulp-layer-136 button,#ulp-layer-136 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-136{z-index:1000007;text-align:left;}#ulp-layer-137,#ulp-layer-137 p,#ulp-layer-137 a,#ulp-layer-137 span,#ulp-layer-137 li,#ulp-layer-137 input,#ulp-layer-137 button,#ulp-layer-137 textarea {font-family:'arial', arial;font-weight:400;color:#000000;text-shadow: #ffffff 1px 1px 1px;}#ulp-layer-137{z-index:1000007;text-align:left;}#ulp-layer-138,#ulp-layer-138 p,#ulp-layer-138 a,#ulp-layer-138 span,#ulp-layer-138 li,#ulp-layer-138 input,#ulp-layer-138 button,#ulp-layer-138 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-138{z-index:1000007;text-align:center;}#ulp-layer-139,#ulp-layer-139 p,#ulp-layer-139 a,#ulp-layer-139 span,#ulp-layer-139 li,#ulp-layer-139 input,#ulp-layer-139 button,#ulp-layer-139 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-139{z-index:1000007;text-align:right;}<\/style>";
strVar += "<div class=\"ulp-overlay\" id=\"ulp-Q42nEzUmJOu4M9dB-overlay\" style=\"display: block;\"><\/div>";
strVar += "<div class=\"ulp-window\" id=\"ulp-Q42nEzUmJOu4M9dB\" data-title=\"Social Form - Popup #01\" data-width=\"520\" data-height=\"320\" data-close=\"on\" data-position=\"middle-center\" style=\"width: 520px; height: 320px; top: 50%; left: 50%; margin-left: -245px; margin-top: -160px; display: block;\">";
strVar += "<div class=\"ulp-content\" style=\"width: 520px; height: 320px;\">";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-126\" data-left=\"0\" data-top=\"0\" data-appearance=\"slide-right\" data-appearance-speed=\"1000\" data-appearance-delay=\"0\" data-width=\"170\" data-height=\"320\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 170px; height: 320px; font-size: 14px; left: 0px; top: 0px;\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-127\" data-left=\"170\" data-top=\"0\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"0\" data-width=\"370\" data-height=\"320\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 370px; height: 320px; font-size: 14px; left: 170px; top: 0px;\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-128\" data-left=\"0\" data-top=\"0\" data-appearance=\"fade-in\" data-appearance-speed=\"1000\" data-appearance-delay=\"1000\" data-width=\"540\" data-height=\"320\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 540px; height: 320px; font-size: 14px; left: 0px; top: 0px;\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-129\" data-left=\"0\" data-top=\"15\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"400\" data-width=\"170\" data-font-size=\"22\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 170px; font-size: 22px; left: 0px; top: 15px;\">{WDT_EDT_W_TITLE1}<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-130\" data-left=\"0\" data-top=\"60\" data-appearance=\"slide-right\" data-appearance-speed=\"1000\" data-appearance-delay=\"700\" data-width=\"170\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 170px; font-size: 14px; left: 0px; top: 60px;\">";
strVar += "";
strVar += "<a onclick=\"Share.vkontakte('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')\" style=\"cursor:pointer;\"><img src=\"http:\/\/witgetservice.com\/wdt\/images\/v6.jpg\" \/> <\/a><br \/>";
strVar += "<a onclick=\"Share.facebook('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')\" style=\"cursor:pointer;\"><img src=\"http:\/\/witgetservice.com\/wdt\/images\/f3.jpg\" \/> <\/a><br \/>";
strVar += "<a onclick=\"Share.mailru('{WDT_EDT_URL}','{WDT_EDT_SOC_TITLE}','{WDT_EDT_SOC_IMG}','{WDT_EDT_SOC_DESC}')\" style=\"cursor:pointer;\"><img src=\"http:\/\/witgetservice.com\/wdt\/images\/m5.jpg\" \/> <\/a><br \/>";
strVar += "<a onclick=\"Share.odnoklassniki('{WDT_EDT_URL}','{WDT_EDT_SOC_DESC}')\" style=\"cursor:pointer;\"><img src=\"http:\/\/witgetservice.com\/wdt\/images\/o4.jpg\" \/> <\/a>";
strVar += "";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-133\" data-left=\"150\" data-top=\"150\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"500\" data-width=\"40\" data-font-size=\"18\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 40px; font-size: 18px; left: 150px; top: 150px;\">ИЛИ<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-134\" data-left=\"170\" data-top=\"15\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"600\" data-width=\"370\" data-font-size=\"22\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 370px; font-size: 22px; left: 170px; top: 15px;\">{WDT_EDT_W_TITLE2}<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-135\" data-left=\"190\" data-top=\"50\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"700\" data-width=\"330\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 330px; font-size: 14px; left: 190px; top: 50px;\">{WDT_EDT_W_TEXT}<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-136\" data-left=\"220\" data-top=\"155\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"900\" data-width=\"270\" data-height=\"36\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 270px; height: 36px; font-size: 14px; left: 220px; top: 155px;\"><input class=\"ulp-input\" type=\"text\" name=\"ulp-name\" placeholder=\"{WDT_EDT_INP_PLACE1}\" value=\"\" onfocus=\"jQuery(this).removeClass('ulp-input-error');\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-137\" data-left=\"220\" data-top=\"202\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"1100\" data-width=\"270\" data-height=\"36\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 270px; height: 36px; font-size: 14px; left: 220px; top: 202px;\"><input class=\"ulp-input\" type=\"text\" name=\"ulp-email\" placeholder=\"{WDT_EDT_INP_PLACE2}\" value=\"\" onfocus=\"jQuery(this).removeClass('ulp-input-error');\"><input type=\"hidden\" name=\"ulp-w_id\" value=\"{WDT_W_ID}\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-138\" data-left=\"180\" data-top=\"250\" data-appearance=\"slide-up\" data-appearance-speed=\"1000\" data-appearance-delay=\"1500\" data-width=\"350\" data-height=\"38\" data-font-size=\"16\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 350px; height: 38px; font-size: 16px; left: 180px; top: 250px;\"><a class=\"ulp-submit\" onclick=\"return ulp_subscribe(this);\" data-label=\"{WDT_EDT_BTN_TEXT}\" data-loading=\"{WDT_EDT_BTN_TEXT2}\">{WDT_EDT_BTN_TEXT}<\/a><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-139\" data-left=\"500\" data-top=\"-30\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"1000\" data-width=\"40\" data-height=\"20\" data-font-size=\"24\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 40px; height: 20px; font-size: 24px; left: 500px; top: -30px;\"><a href=\"#\" onclick=\"return ulp_self_close();\">×<\/a><\/div>";
strVar += "<\/div>";
strVar += "<\/div>";

$('#widget_div').html(strVar);