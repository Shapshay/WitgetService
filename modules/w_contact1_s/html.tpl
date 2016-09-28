<!-- ���������� HTML-�������� -->
<link rel="stylesheet" type="text/css" href="wdt/css/sm.css" media="screen" />
<link href='http://fonts.googleapis.com/css?family=Raleway:300,700' rel='stylesheet' type='text/css'>
<style type="text/css">
#container h2,p{text-align:center}
.demo-lb,.manualLabel{color:#fff}
.demo-lb,.manualLabel,h1{display:block;font-weight:700!important;text-align:center}
body{position:relative;width:100%;height:100%;margin:0;padding:0;border:0;outline:0;font-weight:400;font-style:normal;font-size:100%;vertical-align:baseline;line-height:normal;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
.manualLabel{margin:0 10px;width:200px;height:52px;line-height:52px;font-size:12px;background:#000;cursor:pointer;text-transform:uppercase;opacity:.4;display:inline-block;}
.manualLabel:hover{opacity:1}
p{font-size:13px!important}
.demo-lb{bottom:-1px;border-radius:0 0 4px 4px;width:100%;background:#4570ac;font-size:22px!important;padding:10px!important;margin-top:30px!important}
.demo-lb,.manualLabel,h1,h2,p,.window a.docs{font-family:Raleway,sans-serif!important}
.demo-lb:hover{background:#396197}
h1{font-size:30px!important;border-bottom:solid 1px #ddd!important;padding-bottom:24px!important;margin-bottom:24px!important;color:#333}
#container{text-align:center;bottom:0;height:340px;left:0;margin:auto;position:fixed;right:0;top:0;width:800px}
#container p{font-size:13px!important;line-height:18px;padding-bottom:20px}
#container h2{font-size:18px;font-weight:200}
.window a.docs{position: absolute;bottom:26px;left:0;right:0;text-align:center;display:inline-block;font-weight:700;color:#999;font-size:12px;}
#window a.docs:hover{color:#000;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="wdt/js/jquery.slick-modals.min.js"></script>
<script>
// Plugin invoke
$(document).ready(function () {
    $("#popup-1").slickModals({
        // Functionality
        popupType: "delayed",
        delayTime: 1000,
        exitTopDistance: 40,
        scrollTopDistance: 400,
        setCookie: true,
        cookieDays: 0,
        cookieTriggerClass: "setCookie-1",
        cookieName: "slickModal-1",

        // Overlay options
        overlayBg: true,
        overlayBgColor: "rgba({WDT_EDT_BG_COLOR},0.95)",
        overlayTransition: "ease",
        overlayTransitionSpeed: "0.4",

        // Background effects
        bgEffect: "scale",
        blurBgRadius: "2px",
        scaleBgValue: "0.9",

        // Window options
        windowWidth: "560px",
        windowHeight: "300px",
        windowLocation: "{WDT_EDT_W_LOCATION}",
        windowTransition: "ease",
        windowTransitionSpeed: "0.4",
        windowTransitionEffect: "rotateIn",
        windowShadowOffsetX: "0",
        windowShadowOffsetY: "0",
        windowShadowBlurRadius: "20px",
        windowShadowSpreadRadius: "0",
        windowShadowColor: "rgba(0,0,0,0)",
        windowBackground: "rgba({WDT_EDT_W_COLOR},1)",
        windowRadius: "{WDT_EDT_W_RADIUS}px",
        windowMargin: "0",
        windowPadding: "0",

        // Close and reopen button
        closeButton: "icon",
        reopenClass: "openSlickModal-1",
    });
	InitTimer = setTimeout(function () {
            $('#ModalBtn').click();
        },
        1000);
	
});
function RangeChange(range,span){
	if(span=='radius'){
		$('#'+span).html($('#'+range).val());
	}
	else{
		$('#'+span).html($('#'+range).val()/100);
	}
	
}
function DelWdt(){
	swal({   
		 title: "Вы уверенны, что хотите удалить виджет?",   
		 text: "Все настройки так же будут удалены!",   
		 type: "warning",   
		 showCancelButton: true,   
		 confirmButtonColor: "#DD6B55",   
		 confirmButtonText: "Да, удалить!",   
		 closeOnConfirm: false 
		 }, 
		 function(){   
		 	$('#WdtDelFrm').submit();
	});
}
function DefWdt(){
	swal({   
		 title: "Вы уверенны, что хотите сбросить настройки?",   
		 text: "Все настройки будут установлены поумолчанию!",   
		 type: "warning",   
		 showCancelButton: true,   
		 confirmButtonColor: "#DD6B55",   
		 confirmButtonText: "Да, сбросить!",   
		 closeOnConfirm: false 
		 }, 
		 function(){   
		 	$('#DefWdtFrm').submit();
	});
}
</script>
<script src="inc/jscolor.min.js"></script>
<script>
function update(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str').value = picker.toRGBString().replace('rgb(', '').replace(')', '');
}
function update2(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str2').value = picker.toRGBString().replace('rgb(', '').replace(')', '');
}
function update3(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str3').value = picker.toHEXString();
}
function update4(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str4').value = picker.toHEXString();
}
function update5(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str5').value = picker.toHEXString();
}
</script>
<!-- ���������� HTML-�������� -->