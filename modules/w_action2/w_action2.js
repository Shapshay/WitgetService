var strVar="";
strVar += "<script src=\"http:\/\/witgetservice.com\/wdt\/js\/ulp-jsonp6.js\"><\/script>";
strVar += "<link href=\"https:\/\/fonts.googleapis.com\/css?family=Open+Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic-ext,greek,vietnamese,latin-ext,cyrillic,latin,greek-ext\" rel=\"stylesheet\" type=\"text\/css\">";
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
strVar += ".ulp-buynow-blue, .ulp-buynow-blue:visited {";
strVar += "background-color: #{WDT_EDT_BTN_COLOR1};";
strVar += "background-repeat: repeat-x;";
strVar += "background-image: linear-gradient(#{WDT_EDT_BTN_COLOR1},#{WDT_EDT_BTN_COLOR2});";
strVar += "transition-duration: .3s;";
strVar += "filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR1}',endColorstr='#{WDT_EDT_BTN_COLOR2}',GradientType=0);";
strVar += "border: 1px solid #{WDT_EDT_BTN_COLOR1};";
strVar += "width: auto;";
strVar += "white-space: nowrap;";
strVar += "height: auto;";
strVar += "display: inline-block;";
strVar += "padding: 5px 20px;";
strVar += "border-radius: 5px;";
strVar += "margin: 0;";
strVar += "box-shadow: none;";
strVar += "}";
strVar += ".ulp-buynow-blue:hover, .ulp-buynow-blue:active {";
strVar += "background-color: #{WDT_EDT_BTN_COLOR1};";
strVar += "background-repeat: repeat-x;";
strVar += "background-image: linear-gradient(#{WDT_EDT_BTN_COLOR3},#{WDT_EDT_BTN_COLOR4});";
strVar += "filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#{WDT_EDT_BTN_COLOR3}',endColorstr='#{WDT_EDT_BTN_COLOR4}',GradientType=0);";
strVar += "box-shadow: none;";
strVar += "}";
strVar += "#ulp-Hzciv34oKZFkTveW .ulp-submit,#ulp-Hzciv34oKZFkTveW .ulp-submit:visited{border-radius: 2px !important; background: #b50101;border:1px solid #b50101;background-image:linear-gradient(#860101,#b50101);}#ulp-Hzciv34oKZFkTveW .ulp-submit:hover,#ulp-Hzciv34oKZFkTveW .ulp-submit:active{border-radius: 2px !important; background: #860101;border:1px solid #b50101;background-image:linear-gradient(#b50101,#860101);}#ulp-Hzciv34oKZFkTveW .ulp-input,#ulp-Hzciv34oKZFkTveW .ulp-input:hover,#ulp-Hzciv34oKZFkTveW .ulp-input:active,#ulp-Hzciv34oKZFkTveW .ulp-input:focus{border-width: 1px !important; border-radius: 2px !important; border-color:#bc1616;background-color:#ff3233 !important;background-color:rgba(255,50,51,0.3) !important;}#ulp-Hzciv34oKZFkTveW-overlay{background:#{WDT_EDT_BG_COLOR};opacity:0.9;-ms-filter:\"progid:DXImageTransform.Microsoft.Alpha(Opacity='0')\";filter:alpha(opacity=\"0\");}#ulp-Hzciv34oKZFkTveW .ulp-submit-button,#ulp-Hzciv34oKZFkTveW .ulp-submit-button:visited,#ulp-Hzciv34oKZFkTveW .ulp-submit-button:hover,#ulp-Hzciv34oKZFkTveW .ulp-submit-button:active{border-radius: 2px !important;}#ulp-Hzciv34oKZFkTveW .ulp-submit-facebook,#ulp-Hzciv34oKZFkTveW .ulp-submit-facebook:visited{background: #3b5998;border:1px solid #3b5998;background-image:linear-gradient(#324b80,#3b5998);}#ulp-Hzciv34oKZFkTveW .ulp-submit-facebook:hover,#ulp-Hzciv34oKZFkTveW .ulp-submit-facebook:active{background: #324b80;border:1px solid #3b5998;background-image:linear-gradient(#3b5998,#324b80);}#ulp-Hzciv34oKZFkTveW .ulp-submit-google,#ulp-Hzciv34oKZFkTveW .ulp-submit-google:visited{background: #d34836;border:1px solid #d34836;background-image:linear-gradient(#b53e2f,#d34836);}#ulp-Hzciv34oKZFkTveW .ulp-submit-google:hover,#ulp-Hzciv34oKZFkTveW .ulp-submit-google:active{background: #b53e2f;border:1px solid #d34836;background-image:linear-gradient(#d34836,#b53e2f);}#ulp-layer-338,#ulp-layer-338 p,#ulp-layer-338 a,#ulp-layer-338 span,#ulp-layer-338 li,#ulp-layer-338 input,#ulp-layer-338 button,#ulp-layer-338 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-338{z-index:1000002;text-align:left;}#ulp-layer-339,#ulp-layer-339 p,#ulp-layer-339 a,#ulp-layer-339 span,#ulp-layer-339 li,#ulp-layer-339 input,#ulp-layer-339 button,#ulp-layer-339 textarea {font-family:'arial', arial;font-weight:400;color:#000000;}#ulp-layer-339{z-index:1000004;text-align:left;}#ulp-layer-340,#ulp-layer-340 p,#ulp-layer-340 a,#ulp-layer-340 span,#ulp-layer-340 li,#ulp-layer-340 input,#ulp-layer-340 button,#ulp-layer-340 textarea {font-family:'Open Sans', arial;font-weight:100;color:#{WDT_EDT_TITLE_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-340{z-index:1000007;text-align:right;}#ulp-layer-341,#ulp-layer-341 p,#ulp-layer-341 a,#ulp-layer-341 span,#ulp-layer-341 li,#ulp-layer-341 input,#ulp-layer-341 button,#ulp-layer-341 textarea {font-family:'Open Sans', arial;font-weight:100;color:#{WDT_EDT_TEXT_COLOR};text-shadow: #000000 1px 1px 1px;}#ulp-layer-341{z-index:1000007; text-align:justify;}#ulp-layer-342,#ulp-layer-342 p,#ulp-layer-342 a,#ulp-layer-342 span,#ulp-layer-342 li,#ulp-layer-342 input,#ulp-layer-342 button,#ulp-layer-342 textarea {font-family:'Open Sans', arial;font-weight:100;color:#000000;text-shadow: #000000 1px 1px 1px; text-decoration:none;}#ulp-layer-342{z-index:1000007;text-align:left;}#ulp-layer-343,#ulp-layer-343 p,#ulp-layer-343 a,#ulp-layer-343 span,#ulp-layer-343 li,#ulp-layer-343 input,#ulp-layer-343 button,#ulp-layer-343 textarea {font-family:'Open Sans', arial;font-weight:100;color:#ffffff;text-shadow: #000000 1px 1px 1px;}#ulp-layer-343{z-index:1000007;text-align:left;}<\/style>";
strVar += "<div class=\"ulp-overlay\" id=\"ulp-Hzciv34oKZFkTveW-overlay\" style=\"display: block;\"><\/div>";
strVar += "<div class=\"ulp-window\" id=\"ulp-Hzciv34oKZFkTveW\" data-title=\"Not Form - Popup #01\" data-width=\"704\" data-height=\"400\" data-close=\"on\" data-position=\"middle-center\" style=\"width: 704px; height: 400px; top: 50%; left: 50%; margin-left: -352px; margin-top: -200px; display: block;\">";
strVar += "<div class=\"ulp-content\" style=\"width: 704px; height: 400px;\">";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-338\" data-left=\"70\" data-top=\"80\" data-appearance=\"slide-right\" data-appearance-speed=\"1000\" data-appearance-delay=\"0\" data-width=\"332\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 332px; font-size: 14px; left: 70px; top: 80px;\"><img src=\"{WDT_EDT_IMG}\" alt=\"\" border=\"0\">{WDT_COPYRIGHT}";
strVar += "<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-339\" data-left=\"300\" data-top=\"60\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"200\" data-width=\"467\" data-font-size=\"14\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 467px; font-size: 14px; left: 300px; top: 60px;\"><img src=\"http:\/\/witgetservice.com\/wdt\/images\/krut_uvel.png\" alt=\"\"><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-340\" data-left=\"0\" data-top=\"0\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"200\" data-width=\"704\" data-font-size=\"32\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 704px; font-size: 32px; left: 0px; top: 0px;\">{WDT_EDT_W_TITLE}<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-341\" data-left=\"350\" data-top=\"100\" data-appearance=\"slide-left\" data-appearance-speed=\"1000\" data-appearance-delay=\"500\" data-width=\"300\" data-font-size=\"16\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 300px; font-size: 16px; left: 350px; top: 100px;\">{WDT_EDT_W_TEXT}<\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-342\" data-left=\"600\" data-top=\"290\" data-appearance=\"slide-up\" data-appearance-speed=\"1000\" data-appearance-delay=\"1000\" data-width=\"200\" data-font-size=\"24\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 200px; font-size: 24px; left: 600px; top: 290px;\"><a class=\"ulp-buynow-blue\" target=\"_blank\" href=\"{WDT_EDT_URL}\" onclick=\"WdtActionFrmSubmit();\">{WDT_EDT_BTN_TEXT}<\/a><\/div>";
strVar += "<div class=\"ulp-layer\" id=\"ulp-layer-343\" data-left=\"0\" data-top=\"0\" data-appearance=\"slide-down\" data-appearance-speed=\"1000\" data-appearance-delay=\"100\" data-width=\"100\" data-height=\"20\" data-font-size=\"13\" data-scrollbar=\"off\" data-confirmation=\"off\" style=\"width: 100px; height: 20px; font-size: 13px; left: 0px; top: 0px;\"><a href=\"#\" onClick=\"return ulp_self_close();\">{WDT_EDT_CLOSE_TEXT}<\/a><\/div>";
strVar += "<\/div>";
strVar += "<\/div>";
strVar += "<form method=\"post\" id=\"WdtActFrm\" action=\"{WDT_ACTION}\" target=\"widget_iframe\">";
strVar += "<input type=\"hidden\" name=\"wdt_act_pereh\" value=\"1\"\/>";
strVar += "<\/form>";
strVar += "<script>";
strVar += "function WdtActionFrmSubmit(){";
strVar += "	$('#WdtActFrm').submit();";
strVar += "}";
strVar += "<\/script>";
$('#widget_div').html(strVar);