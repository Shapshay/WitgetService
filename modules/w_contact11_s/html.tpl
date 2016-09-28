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
<script>
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
    document.getElementById('rgb-str').value = picker.toHEXString().replace('#', '');
}
function update2(picker) {
    document.getElementById('rgb-str2').value = picker.toHEXString().replace('#', '');
    //document.getElementById('rgb-str2').value = picker.toRGBString().replace('rgb(', '').replace(')', '');
}
function update3(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str3').value = picker.toHEXString().replace('#', '');
}
function update32(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str32').value = picker.toHEXString().replace('#', '');
}
function update33(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str33').value = picker.toHEXString().replace('#', '');
}
function update34(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str34').value = picker.toHEXString().replace('#', '');
}
function update4(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str4').value = picker.toHEXString().replace('#', '');
}
function update5(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str5').value = picker.toHEXString().replace('#', '');
}
function update51(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str51').value = picker.toHEXString().replace('#', '');
}
function update52(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str52').value = picker.toHEXString().replace('#', '');
}
function update53(picker) {
    //document.getElementById('hex-str').value = picker.toHEXString();
    document.getElementById('rgb-str53').value = picker.toHEXString().replace('#', '');
}
</script>
<script>
$(function(){
    var wrapper = $( ".file_upload" ),
        inp = wrapper.find( "input" ),
        btn = wrapper.find( "button" ),
        lbl = wrapper.find( "div" );

    btn.focus(function(){
        inp.focus()
    });
    // Crutches for the :focus style:
    inp.focus(function(){
        wrapper.addClass( "focus" );
    }).blur(function(){
        wrapper.removeClass( "focus" );
    });

    var file_api = ( window.File && window.FileReader && window.FileList && window.Blob ) ? true : false;

    inp.change(function(){
        var file_name;
        if( file_api && inp[ 0 ].files[ 0 ] ) 
            file_name = inp[ 0 ].files[ 0 ].name;
        else
            file_name = inp.val().replace( "C:\\fakepath\\", '' );

        if( ! file_name.length )
            return;

        if( lbl.is( ":visible" ) ){
            lbl.text( file_name );
            btn.text( "Выбрать" );
        }else
            btn.text( file_name );
    }).change();

});
$( window ).resize(function(){
    $( ".file_upload input" ).triggerHandler( "change" );
});
</script>
<!-- ���������� HTML-�������� -->