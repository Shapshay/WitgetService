<!-- jGrid -->
<link rel="stylesheet" type="text/css" media="screen" href="inc/grid/themes/custom-theme/jquery-ui-1.8.17.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="inc/grid/themes/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="inc/grid/themes/ui.multiselect.css" />
<style>

/*Splitter style */


#LeftPane {
	/* optional, initial splitbar position */
	overflow: auto;
}
/*
 * Right-side element of the splitter.
*/

#RightPane {
	padding: 2px;
	overflow: auto;
}
.ui-tabs-nav li {position: relative;}
.ui-tabs-selected a span {padding-right: 10px;}
.ui-tabs-close {display: none;position: absolute;top: 3px;right: 0px;z-index: 800;width: 16px;height: 14px;font-size: 10px; font-style: normal;cursor: pointer;}
.ui-tabs-selected .ui-tabs-close {display: block;}
.ui-layout-west .ui-jqgrid tr.jqgrow td { border-bottom: 0px none;}
.ui-datepicker {z-index:1200;}
</style>
<script src="inc/grid/js/jquery-1.7.1.js" type="text/javascript"></script>
<script src="inc/grid/js/jquery-ui-1.8.2.custom.min.js" type="text/javascript"></script>
<script src="inc/grid/js/jquery.layout.js" type="text/javascript"></script>
<script src="inc/grid/js/i18n/grid.locale-ru.js" type="text/javascript"></script>
<script type="text/javascript">
	$.jgrid.no_legacy_api = true;
	$.jgrid.useJSON = true;
</script>
<script src="inc/grid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="inc/grid/js/jquery.tablednd.js" type="text/javascript"></script>
<script src="inc/grid/js/jquery.contextmenu.js" type="text/javascript"></script>
<script src="inc/grid/js/ui.multiselect.js" type="text/javascript"></script>

<script type="text/javascript">
jQuery(document).ready(function(){
var lastSel;
jQuery("#toolbar").jqGrid({
	url:'modules/sites/grid.php',
	datatype: "json",
	height: 300,
	width: 800,
   	colNames:['ID','Дата','Название сайта','Пользователь'],
   	colModel:[
		{name:'id',index:'id', width:25, sorttype:"int"},
		{name:'date',index:'date', width:100, align:'center', sorttype:"text"},
		{name:'domen',index:'domen', width:400, align:'center', sorttype:"text"},
		{name:'user',index:'folder', width:350, align:'center', sorttype:"text"}
   	],
   	rowNum:25,
	rowTotal: 2000,
	rowList : [25,50,100],
	loadonce:true,
   	mtype: "POST",
	rownumbers: false,
	rownumWidth: 40,
	gridview: true,
   	pager: '#ptoolbar',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "asc",
	caption: "Сайты"
});

jQuery("#toolbar").jqGrid('navGrid','#ptoolbar',{del:false,add:false,edit:false,search:true});
jQuery("#toolbar").jqGrid('filterToolbar',{stringResult: true,searchOnEnter : false});
});

</script>
<!-- jGrid -->