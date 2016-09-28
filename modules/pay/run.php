<?
	# SETTINGS #############################################################################
	
	$moduleName = "pay";
	
	$prefix = "./modules/".$moduleName."/";
	
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "fail" => $prefix . "fail.tpl",
			$moduleName . "mail" => $prefix . "mail.tpl",
			$moduleName . "success" => $prefix . "success.tpl",
	));
	# SETTINGS ##############################################################################

	$_sendTo = META_EMAIL;				// E-mail ����������
	$_sendFrom = $_sendTo;								// E-mail �����������
	$_mailSubject = getval("REG_EMAIL_SUBJECT");		// ���� ������
	$_mailFrom = "WitgetService.com";		// ������� ������

	# MAIN #################################################################################
	
	if(isset($_GET['t'])){
		$t = SuperSaveInt($_GET['t']);
		if($t==1||$t==2||$t==3){
			$result = db_query("SELECT * FROM tarifs WHERE id = '".$t."' LIMIT 1");
			$row = db_fetch_array($result);
			
			$uniq_order = uniqid('o_', true);
			db_query("INSERT INTO operations SET uniq = '".$uniq_order."', date = NOW(), u_id = '".U_BASE_ID."', action_type = ".$t.", amount = ".$row['cost']);
			$result2 = db_query("SELECT * FROM operations WHERE uniq = '".$uniq_order."' LIMIT 1");
			$row2 = db_fetch_array($result2);
			
			$mrh_login = "witgetservice.com";
			$mrh_pass1 = "D3NuY7zD4Z1JpA7kFjbY";
			
			// номер заказа
			// number of order
			$inv_id = $row2['id'];
			
			// описание заказа
			// order description
			$inv_desc = "Оплата тарифа ".$row['title']." на WitgetService.com";
			
			// сумма заказа
			// sum of order
			$out_summ = $row['cost'];
			
			// тип товара
			// code of goods
			$shp_item = $t;
			
			// предлагаемая валюта платежа
			// default payment e-currency
			$in_curr = "RUR";
			
			// язык
			// language
			$culture = "ru";
			
			// формирование подписи
			// generate signature
			$crc  = md5("$mrh_login:$out_summ:$inv_id:$mrh_pass1:Shp_item=$shp_item");
			
			$tpl->assign("MRCH_LOGIN", $mrh_login);
			$tpl->assign("OUT_SUM", $out_summ);
			$tpl->assign("INV_ID", $inv_id);
			$tpl->assign("INV_DESC", $inv_desc);
			$tpl->assign("SCR", $crc);
			$tpl->assign("SHP_ITEM", $shp_item);
			$tpl->assign("IN_CURR", $in_curr);
			$tpl->assign("CULTURE", $culture);
			$tpl->assign("PAY_TARIF", $row['title']);
			if($row['tech']==1){
				$tech = 'ЕСТЬ';
			}
			else{
				$tech = 'НЕТ';
			}
			if($row['copyright']==1){
				$copyright = 'ЕСТЬ';
			}
			else{
				$copyright = 'НЕТ';
			}
			
			$table_info = '<table class="pay_info_tab">
					<tr>
					<td>КОЛИЧЕСТВО ВИДЖЕТОВ</td>
					<td>'.$row['w_count'].'</td>
					</tr>
					<tr>
					<td>КОЛИЧЕСТВО САЙТОВ</td>
					<td>'.$row['s_count'].'</td>
					</tr>
					<tr>
					<td>ТЕХ. ПОДДЕРЖКА</td>
					<td>'.$tech.'</td>
					</tr>
					<tr>
					<td>УБРАТЬ КОПИРАЙТ</td>
					<td>'.$copyright.'</td>
					</tr>
					</table>';
			$tpl->assign("PAY_TARIF_INFO", $table_info);
		}
		
		switch($t){
			// TARIF BASIC
			case 1:
				//$tpl->parse(strtoupper($moduleName), ".".$moduleName . "fail");
				$tpl->parse(strtoupper($moduleName), $moduleName);
			break;
			
			// TARIF MIDDLE
			case 2:
			
				$tpl->parse(strtoupper($moduleName), $moduleName);
			break;
			
			// TARIF PREMIUM
			case 3:
			
				$tpl->parse(strtoupper($moduleName), $moduleName);
			break;
			
			// RESULT
			case 444:
				// регистрационная информация (пароль #2)
				// registration info (password #2)
				$mrh_pass2 = "YjDBcPOOUnk2m8H9Q65e";
				
				//установка текущего времени
				//current date
				$tm=getdate(time()+9*3600);
				$date="$tm[year]-$tm[mon]-$tm[mday] $tm[hours]:$tm[minutes]:$tm[seconds]";
				
				// чтение параметров
				// read parameters
				$out_summ = $_REQUEST["OutSum"];
				$inv_id = $_REQUEST["InvId"];
				$shp_item = $_REQUEST["Shp_item"];
				$crc = $_REQUEST["SignatureValue"];
				
				$crc = strtoupper($crc);
				
				$my_crc = strtoupper(md5("$out_summ:$inv_id:$mrh_pass2:Shp_item=$shp_item"));
				
				// проверка корректности подписи
				// check signature
				if ($my_crc !=$crc)
				{
				  echo "bad sign\n";
				  exit();
				}
				
				db_query("UPDATE operations SET date = NOW(), u_id = '".U_BASE_ID."', pay_ok = 1 WHERE id = '".$inv_id."' LIMIT 1");
				
				db_query("UPDATE users SET amount_date = DATE_ADD(NOW(), INTERVAL 1 MONTH), schet = schet + '".$out_summ."' WHERE id = '".U_BASE_ID."' LIMIT 1");
				
				$tpl->parse(strtoupper($moduleName), ".".$moduleName . "success");
			break;
			
			// RESULT SUCCESS
			case 777:
				// регистрационная информация (пароль #1)
				// registration info (password #1)
				$mrh_pass1 = "D3NuY7zD4Z1JpA7kFjbY";
				
				// чтение параметров
				// read parameters
				$out_summ = $_REQUEST["OutSum"];
				$inv_id = $_REQUEST["InvId"];
				$shp_item = $_REQUEST["Shp_item"];
				$crc = $_REQUEST["SignatureValue"];
				
				$crc = strtoupper($crc);
				
				$my_crc = strtoupper(md5("$out_summ:$inv_id:$mrh_pass1:Shp_item=$shp_item"));
				
				$tpl->assign("ORDER_NUM", $inv_id);
				
				// проверка корректности подписи
				// check signature
				if ($my_crc != $crc)
				{
				  echo "bad sign\n";
				  exit();
				}
				
				db_query("UPDATE users SET amount_date = DATE_ADD(NOW(), INTERVAL 1 MONTH), schet = schet + '".$out_summ."' WHERE id = '".U_BASE_ID."' LIMIT 1");
				
				$tpl->parse(strtoupper($moduleName), ".".$moduleName . "success");
			break;
			
			// RESULT FAIL
			case 999:
				$inv_id = $_REQUEST["InvId"];
				$tpl->assign("ORDER_NUM", $_REQUEST["InvId"]);
				$tpl->parse(strtoupper($moduleName), ".".$moduleName . "fail");
			break;
			
			// ALL OTHER
			default:
				
				$tpl->parse(strtoupper($moduleName), $moduleName);
			break;
		}
		
		
	}
	else{
		$tpl->assign(strtoupper($moduleName), 'Ошибка запроса !');
	}
	
	
	
	
	
	//$tpl->parse(strtoupper($moduleName), ".".$moduleName . "kab");
	
	
?>
