<?php
	# SETTINGS #############################################################################
	$moduleName = "faq";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "faq_row" => $prefix . "faq_row.tpl",
	));
	# MAIN #################################################################################
	if(isset($_POST['question'])){
		$question = SuperSaveStr2($_REQUEST['question']);
		$faq_name = SuperSaveStr2($_REQUEST['faq_name']);
		$sql = "INSERT INTO faq SET 
						page_id = '".$_GET['menu']."',
						name = '".$faq_name."',
						u_id = '".U_BASE_ID."',
						question = '".br2nl($question)."',
						view = '0',
						date = NOW()";
		db_query($sql);
		$tpl->assign("FAQ_RESULT", '<script>
			swal("ОК", "Ваш вопрос отправлен администрации сервиса", "success");
			setTimeout(function(){window.location = \'/suport\';}, 3000);
			</script>');
	}
	else{
		$tpl->assign("FAQ_RESULT", '');
	}
	$sql = "SELECT * FROM faq WHERE view = 1 ORDER BY date DESC";
	$result = db_query($sql);
	if (db_num_rows($result) > 0) {
		$i = 1;
		while ($row = db_fetch_array($result)) {
			$tpl->assign("QUESTION", $row['question']);
			$tpl->assign("ANSVER", $row['answer']);
			$tpl->assign("ANSWER_ID", $row['id']);
			
			$tpl->parse("FAQ_ROWS", ".".$moduleName."faq_row");
			$i++;
		}
	}
	else{
		$tpl->assign("FAQ_ROWS", '');
	}
	
	$tpl->parse(strtoupper($moduleName), $moduleName);
	
?>