var strVar="";
strVar += "<script src=\"http:\/\/witgetservice.com\/wdt\/js\/ulp-jsonp.js\"><\/script>";
strVar += "<script>";
strVar += "var ulp_ajax_url = 'http:\/\/witgetservice.com\/wdt\/ajax.php{WDT_U_ID}'; ";
strVar += "<\/script>";
strVar += "";
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
strVar += "background-color: #019ad2;";
strVar += "background-repeat: repeat-x;";
strVar += "background-image: -moz-linear-gradient(#33bcef,#019ad2);";
strVar += "background-image: -ms-linear-gradient(#33bcef,#019ad2);";
strVar += "background-image: -webkit-linear-gradient(#33bcef,#019ad2);";
strVar += "background-image: -o-linear-gradient(#33bcef,#019ad2);";
strVar += "background-image: linear-gradient(#33bcef,#019ad2);";
strVar += "transition-duration: .3s;";
strVar += "-moz-transition-duration: .3s;";
strVar += "-webkit-transition-duration: .3s;";
strVar += "-o-transition-duration: .3s;";
strVar += "-khtml-transition-duration: .3s;";
strVar += "filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#33bcef',endColorstr='#019ad2',GradientType=0);";
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
strVar += "background-color:#0271bf;";
strVar += "background-repeat:repeat-x;";
strVar += "background-image:-moz-linear-gradient(#2daddc,#0271bf);";
strVar += "background-image:-ms-linear-gradient(#2daddc,#0271bf);";
strVar += "background-image:-webkit-linear-gradient(#2daddc,#0271bf);";
strVar += "background-image:-o-linear-gradient(#2daddc,#0271bf);";
strVar += "background-image:linear-gradient(#2daddc,#0271bf);";
strVar += "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#2daddc',endColorstr='#0271bf',GradientType=0);";
strVar += "border: 1px solid #019ad2;";
strVar += "-webkit-box-shadow: none;";
strVar += "-moz-box-shadow: none;";
strVar += "-o-box-shadow: none;";
strVar += "-ms-box-shadow: none;";
strVar += "box-shadow: none;";
strVar += "}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit:visited{border-radius: 2px !important; background: #{WDT_EDT_BTN_COLOR2};border:1px solid #e33a0c;background-image:linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit:hover,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit:active{border-radius: 2px !important; background: #bf310b;border:1px solid #{WDT_EDT_BTN_COLOR4};background-image:linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-input,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-input:hover,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-input:active,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#aaaaaa;background-color:#ffffff !important;background-color:rgba(255,255,255,1) !important;}";
strVar += "#ulp-cBmyUml7Izu2bX9N-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.8;-ms-filter:\"progid:DXImageTransform.Microsoft.Alpha(Opacity='80')\";filter:alpha(opacity=\"80\");}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-button,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-button:visited,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-button:hover,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-button:active{border-radius: 2px !important;}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-facebook,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-facebook:hover,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-google,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-google:hover,";
strVar += "#ulp-cBmyUml7Izu2bX9N .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}";
strVar += "#ulp-layer-25,#ulp-layer-25 p,#ulp-layer-25 a,#ulp-layer-25 span,#ulp-layer-25 li,#ulp-layer-25 input,#ulp-layer-25 button,#ulp-layer-25 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}";
strVar += "#ulp-layer-25{background-color:#ffffff;background-color:rgba(255,255,255,0.9);background-image:url(http:\/\/witgetservice.com\/wdt\/images\/graybg03.png);background-repeat:repeat;z-index:1000003;text-align:left;box-shadow: rgba(32,32,32,1) 0 4px 20px;}";
strVar += "#ulp-layer-26,#ulp-layer-26 p,#ulp-layer-26 a,#ulp-layer-26 span,#ulp-layer-26 li,#ulp-layer-26 input,#ulp-layer-26 button,#ulp-layer-26 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}";
strVar += "#ulp-layer-26{z-index:1000005;text-align:left;box-shadow: rgba(32,32,32,0.1) 0 0 60px inset;}";
strVar += "#ulp-layer-27,#ulp-layer-27 p,#ulp-layer-27 a,#ulp-layer-27 span,#ulp-layer-27 li,#ulp-layer-27 input,#ulp-layer-27 button,#ulp-layer-27 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}";
strVar += "#ulp-layer-27{z-index:1000006;text-align:left;border-bottom: 4px solid #e33a0c;}";
strVar += "#ulp-layer-28,#ulp-layer-28 p,#ulp-layer-28 a,#ulp-layer-28 span,#ulp-layer-28 li,#ulp-layer-28 input,#ulp-layer-28 button,#ulp-layer-28 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}";
strVar += "#ulp-layer-28{z-index:1000007;text-align:justify;}";
strVar += "#ulp-layer-29,#ulp-layer-29 p,#ulp-layer-29 a,#ulp-layer-29 span,#ulp-layer-29 li,#ulp-layer-29 input,#ulp-layer-29 button,#ulp-layer-29 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}";
strVar += "#ulp-layer-29{z-index:1000007;text-align:left;}";
strVar += "#ulp-layer-30,#ulp-layer-30 p,#ulp-layer-30 a,#ulp-layer-30 span,#ulp-layer-30 li,#ulp-layer-30 input,#ulp-layer-30 button,#ulp-layer-30 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}";
strVar += "#ulp-layer-30{z-index:1000007;text-align:justify;}";
strVar += "#ulp-layer-31,#ulp-layer-31 p,#ulp-layer-31 a,#ulp-layer-31 span,#ulp-layer-31 li,#ulp-layer-31 input,#ulp-layer-31 button,#ulp-layer-31 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}";
strVar += "#ulp-layer-31{z-index:1000007;text-align:center;}";
strVar += "#ulp-layer-32,#ulp-layer-32 p,#ulp-layer-32 a,#ulp-layer-32 span,#ulp-layer-32 li,#ulp-layer-32 input,#ulp-layer-32 button,#ulp-layer-32 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;text-shadow: #000000 1px 1px 1px;}";
strVar += "#ulp-layer-32{z-index:1000007;text-align:right;}";
strVar += "#ulp-layer-33,#ulp-layer-33 p,#ulp-layer-33 a,#ulp-layer-33 span,#ulp-layer-33 li,#ulp-layer-33 input,#ulp-layer-33 button,#ulp-layer-33 textarea {font-family:'arial', arial;font-weight:400;color:#ffffff;}";
strVar += "#ulp-layer-33{background-color:#39820d;background-color:rgba(57,130,13,0.9);z-index:1000007;text-align:center;padding: 5px 0; box-shadow: rgba(32,32,32,1) 0 4px 20px;}";
strVar += "<\/style>";
strVar += "<div class=\"ulp-overlay\" id=\"ulp-cBmyUml7Izu2bX9N-overlay\" style=\"display: block;\"><\/div>";
strVar += "<div class=\"ulp-window\" id=\"ulp-cBmyUml7Izu2bX9N\" data-title=\"Contact Form - Popup #03\" data-width=\"600\" data-height=\"540\" data-close=\"on\" data-position=\"middle-center\" style=\"width: 600px; height: 540px; top: 50%; left: 50%; margin-left: -300px; margin-top: -270px; display: block;\">";
strVar += "<div class=\"ulp-content\" style=\"width: 600px; height: 540px;\">";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-25\" data-left=\"0\" data-top=\"0\" data-appearance=\"fade-in\" data-appearance-speed=\"1000\" data-appearance-delay=\"0\" data-width=\"600\" data-height=\"510\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 600px; height: 510px; font-size: 14px; left: 0px; top: 0px;\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-26\" data-left=\"0\" data-top=\"0\" data-appearance=\"fade-in\" data-appearance-speed=\"1000\" data-appearance-delay=\"0\" data-width=\"600\" data-height=\"510\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 600px; height: 510px; font-size: 14px; left: 0px; top: 0px;background-color:#{WDT_EDT_W_COLOR};\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-27\" data-left=\"0\" data-top=\"0\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"0\" data-width=\"600\" data-height=\"244\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 600px; height: 244px; font-size: 14px; left: 0px; top: 0px;\">";
strVar += "<!--<iframe src=\"https:\/\/www.google.com\/maps\/embed?pb=!1m18!1m12!1m3!1d6044.275637456805!2d-73.98346368325204!3d40.75899341147853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x55194ec5a1ae072e!2sTimes+Square!5e0!3m2!1sen!2s!4v1392901318461\" width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0\"><\/iframe>-->";
strVar += "<iframe";
strVar += "  width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0\"";
strVar += "  src=\"https:\/\/www.google.com\/maps\/embed\/v1\/place?key=AIzaSyDSnyXKWwG7r4umATF7DjtdbYhYFnQs3MI&q={WDT_EDT_MAP_ADRES}\" allowfullscreen>";
strVar += "<\/iframe>";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-28\" data-left=\"20\" data-top=\"260\" data-appearance=\"slide-right\" data-appearance-speed=\"1000\" data-appearance-delay=\"500\" data-width=\"275\" data-height=\"36\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 275px; height: 36px; font-size: 14px; left: 20px; top: 260px;\">";
strVar += "<input type=\"hidden\" name=\"ulp-msg_id\" value=\"{WDT_MSG_ID}\">";
strVar += "<input type=\"hidden\" name=\"ulp-msg_theme\" value=\"{WDT_MSG_THEME}\">";
strVar += "<input type=\"hidden\" name=\"ulp-w_id\" value=\"{WDT_W_ID}\">";
strVar += "<input class=\"ulp-input\" type=\"text\" name=\"ulp-name\" placeholder=\"{WDT_EDT_INP_PLACE1}\" value=\"\" onFocus=\"jQuery(this).removeClass('ulp-input-error');\">";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-29\" data-left=\"305\" data-top=\"260\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"700\" data-width=\"275\" data-height=\"36\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 275px; height: 36px; font-size: 14px; left: 305px; top: 260px;\">";
strVar += "<input class=\"ulp-input\" type=\"text\" name=\"ulp-email\" placeholder=\"{WDT_EDT_INP_PLACE2}\" value=\"\" onFocus=\"jQuery(this).removeClass('ulp-input-error');\">";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-30\" data-left=\"20\" data-top=\"306\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"1000\" data-width=\"560\" data-height=\"140\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 560px; height: 140px; font-size: 14px; left: 20px; top: 306px;\">";
strVar += "<textarea class=\"ulp-input\" name=\"ulp-message\" placeholder=\"{WDT_EDT_INP_PLACE3}\" onFocus=\"jQuery(this).removeClass('ulp-input-error');\">";
strVar += "<\/textarea>";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-31\" data-left=\"0\" data-top=\"455\" data-appearance=\"slide-up\" data-appearance-speed=\"1000\" data-appearance-delay=\"1200\" data-width=\"600\" data-height=\"38\" data-font-size=\"16\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 600px; height: 38px; font-size: 16px; left: 0px; top: 455px;\">";
strVar += "<a class=\"ulp-submit\" onClick=\"return ulp_subscribe(this);\" data-label=\"{WDT_EDT_BTN_TEXT}\" data-loading=\"{WDT_EDT_BTN_TEXT2}\">{WDT_EDT_BTN_TEXT}<\/a>{WDT_COPYRIGHT}";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-32\" data-left=\"560\" data-top=\"-30\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"1500\" data-width=\"40\" data-height=\"20\" data-font-size=\"24\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 40px; height: 20px; font-size: 24px; left: 560px; top: -30px;\">";
strVar += "<a href=\"#\" onClick=\"return ulp_self_close();\">×<\/a>";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-33\" data-left=\"0\" data-top=\"520\" data-appearance=\"slide-up\" data-appearance-speed=\"600\" data-appearance-delay=\"0\" data-width=\"600\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"on\" style=\"display: none; width: 600px; font-size: 14px; left: 0px; top: 520px;\">";
strVar += "{WDT_EDT_SUCCESS}";
strVar += "<\/div>";
strVar += "<\/div>";
strVar += "<\/div>";
$('#widget_div').html(strVar);