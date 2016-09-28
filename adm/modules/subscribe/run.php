<?php
	# SETTINGS #############################################################################
	$moduleName = "subscribe";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "shablon1" => $prefix . "shablon1.tpl",
	));
	# MAIN #################################################################################
	
	$tpl->parse("META_LINK", ".".$moduleName."html");
	
	if(isset($_POST['test_send'])){
		if(isset($_POST['email1'])){
			$_sendFrom = 'noreply@mirchasov.kz';
			$_mailFrom = 'MirChasov.kz';
			$tpl->assign("SUBSCRIBE_TEXT", $_POST['about']);
			$post_id = getNewPostID();
			$sql = "INSERT INTO posts SET 
							post_id = '".$post_id."',
							otpr = '1',
							theme = '".$_POST['theme']."',
							date = NOW()";
			db_query($sql);
			$tpl->assign("POST_ID", $post_id);
			$tpl->assign("U_EMAIL", $_POST['email1']);
			$tpl->parse("TEMP", $moduleName . $_POST['shablon']);
			sendMail($_POST['email1'], $_POST['theme'], $tpl->fetch("TEMP"), $_mailFrom, $_sendFrom);
			$tpl->assign("EDT_ABOUT", $_POST['about']);
			$tpl->assign("EDT_THEME", $_POST['theme']);
			$tpl->assign("SEND_RESULT", 1);
			$tpl->assign("SEND_HIDE1", '');
			$tpl->assign("SEND_HIDE2", '');
		}
	}
	else{
		if(isset($_POST['ssend'])){
			$total_send = 0;
			$result77 = db_query("SELECT email FROM users WHERE post = 1");
			$_mailSubject = $_POST['theme'];		// Тема письма
			$tpl->assign("SUBSCRIBE_TEXT", $_POST['about']);
			$post_id = getNewPostID();
			$tpl->assign("POST_ID", $post_id);
			$tpl->assign("U_EMAIL", $_POST['email1']);
			$tpl->parse("TEMP", $moduleName . $_POST['shablon']);
			while ($row77 = db_fetch_array($result77)) {
				$_sendTo = $row77['email'];					// E-mail получателя
				$_sendFrom = 'noreply@mirchasov.kz';
				$_mailFrom = 'MirChasov.kz';
				sendMail($_sendTo, $_mailSubject, $tpl->fetch("TEMP"), $_mailFrom, $_sendFrom);
				$total_send++;
			}
			$sql = "INSERT INTO posts SET 
							post_id = '".$post_id."',
							otpr = '".$total_send."',
							theme = '".$_mailSubject."',
							date = NOW()";
			db_query($sql);
			$tpl->assign("SEND_RESULT", $total_send);
			$tpl->assign("SEND_HIDE1", '');
			$tpl->assign("SEND_HIDE2", '');
		}
		else{
			$tpl->assign("SEND_RESULT", '');
			$tpl->assign("SEND_HIDE1", '<!--');
			$tpl->assign("SEND_HIDE2", ' -->');
		}
		$tpl->assign("EDT_ABOUT", '');
		$tpl->assign("EDT_THEME", '');
	}
	
	
	$tpl->assign("USER_COUNT", getUserCount());
	
	$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
?>