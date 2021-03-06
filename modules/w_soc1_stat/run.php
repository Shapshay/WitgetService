<?php
	# SETTINGS #############################################################################
	$moduleName = "w_soc1_stat";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "s_row" => $prefix . "s_row.tpl",
	));
	# MAIN #################################################################################
	
	if(!isset($_GET['u'])){
		$tpl->parse("META_LINK", ".".$moduleName."html");
		$sql = "SELECT 
					widgets.*,
					u_w_options.id AS w_id,
					pages.id AS page_id,
					pages.parent_id AS w_parent_id
				FROM u_w_options
				LEFT OUTER JOIN widgets ON u_w_options.w_id = widgets.id
				LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
				WHERE u_w_options.u_id = ".U_BASE_ID." AND widgets.folder = '".getItemCHPU(getPageParentID(PAGE_ID), 'pages')."'
				LIMIT 1";
		$result = db_query($sql);
		if(db_num_rows($result) > 0){
			$row = db_fetch_array($result);
			$url = '/'.getItemCHPU($row['w_parent_id'], 'pages').'/'.getItemCHPU($row['page_id'], 'pages').'/';
			$tpl->assign("WDT_URL", $url);
			
			
			$tpl->assign("W_ID", $row['id']);
			$tpl->assign("WDT_TITLE", $row['title']);
			$tpl->assign("WDT_PREVIEW", $row['preview']);
			
			// social
			$sql3 = "SELECT * FROM stat_soc_sharing WHERE u_id = ".U_BASE_ID." AND w_id = '".$row['id']."' ORDER BY date DESC";
			$result3 = db_query($sql3);
			$i = 1;
			if(db_num_rows($result3) > 0){
				while ($row3 = db_fetch_array($result3)) { 
					$tpl->assign("STAT_NUM", $i);
					$tpl->assign("V_STAT_DAYS", $row3['date']);
					$tpl->assign("SHAR_STAT_VK", $row3['vk']);
					$tpl->assign("SHAR_STAT_F", $row3['f']);
					$tpl->assign("SHAR_STAT_MAIL", $row3['mail']);
					$tpl->assign("SHAR_STAT_OK", $row3['ok']);
					$tpl->assign("SHAR_STAT_T", $row3['t']);
					
					$tpl->parse("STAT_ROWS", "." .$moduleName. "s_row");
					$i++;
				}
				
			}
			else{
				$tpl->assign("STAT_ROWS", '<tr><td colspan="6" style="color:#FF0000" align="center">Данных необнаружено !</td></tr>');
			}
			
			// visitors
			$sql3 = "SELECT date, SUM(views) AS v, COUNT(id) AS c FROM stat WHERE u_id = ".U_BASE_ID." AND w_id = '".$row['id']."' GROUP BY date";
			$result3 = db_query($sql3);
			$days = '';
			$v_count = '';
			$c_count = '';
			if(db_num_rows($result3) > 0){
				while ($row3 = db_fetch_array($result3)) { 
					$days.= "'".date("d-m-Y",strtotime($row3['date']))."', ";
					$v_count.= $row3['v'].', ';
					$c_count.= $row3['c'].', ';
				}
				$tpl->assign("V_STAT_DAYS", substr($days, 0, -2));
				$tpl->assign("V_STAT_V", substr($v_count, 0, -2));
				$tpl->assign("V_STAT_C", substr($c_count, 0, -2));
			}
			else{
				$tpl->assign("V_STAT_DAYS", 0);
				$tpl->assign("V_STAT_V", 0);
				$tpl->assign("V_STAT_C", 0);
			}
			
			// browsers
			$sql3 = "SELECT browser, COUNT(id) AS c FROM stat WHERE u_id = ".U_BASE_ID." AND w_id = '".$row['id']."' GROUP BY browser";
			$result3 = db_query($sql3);
			$browser = '';
			$c_count = '';
			if(db_num_rows($result3) > 0){
				while ($row3 = db_fetch_array($result3)) { 
					$browser.= "'".$row3['browser']."', ";
					$c_count.= $row3['c'].', ';
				}
				$tpl->assign("STAT_BROWSERS", substr($browser, 0, -2));
				$tpl->assign("STAT_B_C", substr($c_count, 0, -2));
			}
			else{
				$tpl->assign("STAT_BROWSERS", 0);
				$tpl->assign("STAT_B_C", 0);
			}
			
			$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
		}
		else{
			$tpl->assign(strtoupper($moduleName), "");
		}
	}
	else{
		$agent = $_SERVER['HTTP_USER_AGENT'];
		$uri = $_SERVER['REQUEST_URI'];
		$ip = $_SERVER['REMOTE_ADDR'];
		$ref = $_SERVER['HTTP_REFERER'];
		if($ref == ""){
			$ref = "None";
		}
		$U = SuperSaveStr($_GET['u']);
		$sql = "SELECT id FROM users WHERE uniq = '".$U."' LIMIT 1";
		//echo $sql.'<br>';
		$browser = getBrowser();
		//print_r($browser);
		$result = db_query($sql);
		$row = db_fetch_array($result);
		$U_BASE_ID = $row['id'];
		$sql = "SELECT 
					widgets.*,
					u_w_options.id AS w_id,
					pages.id AS page_id,
					pages.parent_id AS w_parent_id
				FROM u_w_options
				LEFT OUTER JOIN widgets ON u_w_options.w_id = widgets.id
				LEFT OUTER JOIN pages ON widgets.folder = pages.chpu
				WHERE u_w_options.u_id = ".$U_BASE_ID." AND widgets.folder = '".getItemCHPU(getPageParentID(PAGE_ID), 'pages')."'
				LIMIT 1";
		$result = db_query($sql);
		if(db_num_rows($result) > 0){
			$row = db_fetch_array($result);
			$w_id = $row['id'];
			$domen = parse_url($ref);
			$visitor_id = seIPtoSiteStatID($ip, $w_id, $U_BASE_ID, $domen['host'], $browser['userAgent']);
			if($visitor_id==0){
				$sql = "INSERT INTO stat SET 
						ip = '".$ip."',
						w_id = '".$row['id']."',
						u_id = '".$U_BASE_ID."',
						ref = '".$ref."',
						browser = '".$browser['name'] . " " . $browser['version']."',
						os = '".$browser['platform']."',
						agent = '".$agent."',
						site = '".$domen['host']."',
						views = '1',
						date = NOW()";
				db_query($sql);
			}
			else{
				$sql = "UPDATE stat SET 
						views = views + 1
						WHERE id = ".$visitor_id;
				db_query($sql);
			}
		}
		$tpl->assign(strtoupper($moduleName), "");
	}
?>