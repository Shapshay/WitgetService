<!-- elFinder -->
<link rel="stylesheet" href="inc/elfinder/css/elfinder.css" type="text/css" media="screen" title="no title" charset="utf-8">
<script src="inc/elfinder/js/jquery-ui-1.8.13.custom.min.js" type="text/javascript" charset="utf-8"></script>
<script src="inc/elfinder/js/elfinder.min.js" type="text/javascript" charset="utf-8"></script>
<script src="inc/elfinder/js/i18n/elfinder.ru.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">
 function load_elfinder($id) {
    $('<div />').elfinder({
       url : 'inc/elfinder/connectors/php/connector.php',
       lang : 'ru',
       dialog : { width : 900, modal : true },
       editorCallback : function(url) {
          document.getElementById($id).value = url; 
       }
    })
10 }
</script>
