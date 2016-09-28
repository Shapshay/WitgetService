<?php
	# SETTINGS #############################################################################
	$moduleName = "create_modul";
	$prefix = "./modules/".$moduleName."/";
	$tpl->define(array(
			$moduleName => $prefix . $moduleName.".tpl",
			$moduleName . "main" => $prefix . "main.tpl",
			$moduleName . "html" => $prefix . "html.tpl",
			$moduleName . "fields" => $prefix . "fields.tpl",
			$moduleName . "t_row" => $prefix . "t_row.tpl",
			$moduleName . "result" => $prefix . "result.tpl",
	));
	# MAIN #################################################################################
	error_reporting (E_ALL);
	ini_set("display_errors", 1);
	echo 'Y';
	if(isset($_POST['action'])){
		switch($_POST['action']){
			// выбор полей таблицы
			case 'sel_table':
				$tpl->parse("META_LINK", ".".$moduleName."html");
				
				//echo substr(sprintf('%o', fileperms('modules')), -4).'*';
				
				$sql = "SHOW COLUMNS FROM ".$_POST['t_name'];
				$i = 1;
				$result2 = db_query($sql);
				while($row2 = db_fetch_array($result2)){
					if($row2[0]!='id'){
						$tpl->assign("F_NAME", $row2[0]);
						$tpl->assign("F_NUM", $i);
						$tpl->assign("F_TABLE", $_POST['t_name']);
						
						$tpl->parse("TABLE_ROWS", ".".$moduleName."t_row");
						$i++;
					}
				}
				
				$tpl->parse(strtoupper($moduleName), ".".$moduleName."fields");
			break;
			// создание папки и файлов модуля
			case 'sel_rows':
				echo '-Y1';
				$tpl->parse("META_LINK", ".".$moduleName."html");
				
				$modulename = SuperSaveGETStr($_POST['modul']);

				if (file_exists('modules/'.$modulename)) {
					$tpl->assign("M_RESULT_ERR", "Модуль '$modulename' уже существует !");
					$tpl->assign("M_RESULT_OK", '');
				} else {
					echo '-Y2';
					if($modulename==''){
						$tpl->assign("M_RESULT_ERR", "Название модуля неможет быть пустым !");
						$tpl->assign("M_RESULT_OK", '');
					}
					else{
						mkdir('modules/'.$modulename, 0777);
						
						$run = file_get_contents('modules/create_modul/tpl_run.tpl', true);
						$run = str_replace('{MODUL_NAME}',$modulename,$run);
						$run = str_replace('{MODUL_TABLE_NAME}',$_POST['f_table'],$run);
						
						$modul_table_fields = '';
						$modul_edt_fields = '';
						$modul_grid_fields1 = '';
						$modul_grid_fields2 = '';
						$modul_grid_php_fields1 = '';
						$modul_grid_php_fields2 = '';
						$add_ff_fields = '';
						$edt_ff_fields = '';
						$html_area = '';
						
						foreach($_POST['f_add'] as $num){
							//echo $_POST['ff_name'][$num].' = '.$_POST['f_type'][$num].' = '.$_POST['f_name'][$num].'<br>';
							$modul_table_fields.= $_POST['f_name'][$num].' = \'".$_POST[\''.$_POST['f_name'][$num].'\']."\', 
								';
							if($_POST['f_type'][$num]!='checkbox'){
								$modul_edt_fields.= '$tpl->assign("EDT_'.strtoupper($_POST['f_name'][$num]).'", $row[\''.$_POST['f_name'][$num].'\']);
									';
								$modul_grid_fields2.= '{name:\''.$_POST['f_name'][$num].'\',index:\''.$_POST['f_name'][$num].'\', width:60, align:\'center\', editable:true, edittype:"checkbox", formatter:\'checkbox\',formatoptions:{disabled: true}},
								';
							}
							else{
								$modul_edt_fields.= 'if($row[\''.$_POST['f_name'][$num].'\']==1){
											$tpl->assign("'.strtoupper($_POST['f_name'][$num]).'_CHECK", \' checked="checked"\');
										}
										else{
											$tpl->assign("'.strtoupper($_POST['f_name'][$num]).'_CHECK", \'\');
										}
									';
								$modul_grid_fields2.= '{name:\''.$_POST['f_name'][$num].'\',index:\''.$_POST['f_name'][$num].'\', width:120, align:\'center\', sorttype:"text"},
								';
							}
							$modul_grid_fields1.= '\''.$_POST['ff_name'][$num].'\',';
							
							$modul_grid_php_fields1.= $_POST['f_name'][$num].',';
							$modul_grid_php_fields2.= '$row[\''.$_POST['f_name'][$num].'\'],';
							
							switch($_POST['f_type'][$num]){
								case 'text':
									$add_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="text" name="'.$_POST['f_name'][$num].'">
										';
									$edt_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="text" name="'.$_POST['f_name'][$num].'" value="{EDT_'.strtoupper($_POST['f_name'][$num]).'}">
										';
								break;
								case 'textarea':
									$add_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<textarea name="'.$_POST['f_name'][$num].'" rows="15" cols="80" id="'.$_POST['f_name'][$num].'"></textarea>
										';
									$edt_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<textarea name="'.$_POST['f_name'][$num].'" rows="15" cols="80" id="'.$_POST['f_name'][$num].'">{EDT_'.strtoupper($_POST['f_name'][$num]).'}</textarea>
										';
									$html_area.= '<script type="text/javascript" charset="utf-8">
										$().ready(function() {
											$(\'#elFinder a\').hover(
													function () {
														$(\'#elFinder a\').animate({
															\'background-position\' : \'0 -45px\'
														}, 300);
													},
													function () {
														$(\'#elFinder a\').delay(400).animate({
															\'background-position\' : \'0 0\'
														}, 300);
													}
												);
								
											$(\'#elFinder a\').delay(800).animate({\'background-position\' : \'0 0\'}, 300);
											var opts = {
												cssClass : \'el-rte\',
												lang     : \'ru\',
												height   : 450,
												width   : 800,
												fmAllow   : true,
												toolbar  : \'complete\',
												cssfiles : [\'inc/elrte/css/elrte-inner.css\'],
												fmOpen : function(callback) {
													$(\'<div id="myelfinder2" />\').elfinder({
														url : \'inc/elfinder/connectors/php/connector.php\',
														lang : \'ru\',
														dialog : { width : 900, modal : true, title : \'elFinder - file manager for web\' },
														closeOnEditorCallback : true,
														editorCallback : callback
													})
												}
											}
											$(\'#'.$_POST['f_name'][$num].'\').elrte(opts);
										})
									</script>
									';
								break;
								case 'date':
									$add_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="text" name="'.$_POST['f_name'][$num].'" value="{SS_DATE_NOW}" style="width:200px;" readonly="readonly">
										<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.'.$_POST['f_name'][$num].',\'dd-mm-yyyy hh:ii\',this,true)">
										';
									$edt_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="text" name="'.$_POST['f_name'][$num].'" value="{EDT_'.strtoupper($_POST['f_name'][$num]).'}" style="width:200px;" readonly="readonly">
										<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.'.$_POST['f_name'][$num].',\'dd-mm-yyyy hh:ii\',this,true)">
										';
								break;
								case 'file':
									$add_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input id="'.$_POST['f_name'][$num].'" type="text" name="'.$_POST['f_name'][$num].'" style="width:320px;"/>
										<input type="button" value="Загрузить" onclick="load_elfinder(\''.$_POST['f_name'][$num].'\');" />
										';
									$edt_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input id="'.$_POST['f_name'][$num].'" type="text" name="'.$_POST['f_name'][$num].'" value="{EDT_'.strtoupper($_POST['f_name'][$num]).'}" style="width:320px;"/>
										<input type="button" value="Загрузить" onclick="load_elfinder(\''.$_POST['f_name'][$num].'\');" />
										';
								break;
								case 'checkbox':
									$add_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="checkbox" value="1" name="'.$_POST['f_name'][$num].'"/>
										';
									$edt_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="checkbox" value="1" name="'.$_POST['f_name'][$num].'" {'.strtoupper($_POST['f_name'][$num]).'_CHECK}/>
										';
								break;
								default:
									$add_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="text" name="'.$_POST['f_name'][$num].'">
										';
									$edt_ff_fields.= '<p><strong>'.$_POST['ff_name'][$num].'</strong><br>
										<input type="text" name="'.$_POST['f_name'][$num].'" value="{EDT_'.strtoupper($_POST['f_name'][$num]).'}">
										';
								break;
							}
							$add_ff_fields.= '';
						}
						$modul_table_fields = substr($modul_table_fields, 0, -12);
						$modul_grid_fields1 = substr($modul_grid_fields1, 0, -1);
						$modul_grid_fields2 = substr($modul_grid_fields2, 0, -10);
						$modul_grid_php_fields1 = substr($modul_grid_php_fields1, 0, -1);
						$modul_grid_php_fields2 = substr($modul_grid_php_fields2, 0, -1);
						
						$run = str_replace('{MODUL_TABLE_FIELDS}',$modul_table_fields,$run);
						$run = str_replace('{MODUL_EDT_FIELDS_VALUES}',$modul_edt_fields,$run);
						$fp = fopen('modules/'.$modulename.'/run.php', "w");
						fwrite($fp, $run);
						fclose($fp);
						chmod('modules/'.$modulename.'/run.php', 0777);
						
						$start = file_get_contents('modules/create_modul/tpl_start.tpl', true);
						$fp = fopen('modules/'.$modulename.'/'.$modulename.'.tpl', "w");
						fwrite($fp, $start);
						fclose($fp);
						chmod('modules/'.$modulename.'/'.$modulename.'.tpl', 0777);
						
						$grid_tpl = file_get_contents('modules/create_modul/tpl_grid.tpl', true);
						$grid_tpl = str_replace('{MODUL_TABLE_NAME}',$_POST['f_table'],$grid_tpl);
						$grid_tpl = str_replace('{MODUL_GRID_FIELDS1}',$modul_grid_fields1,$grid_tpl);
						$grid_tpl = str_replace('{MODUL_GRID_FIELDS2}',$modul_grid_fields2,$grid_tpl);
						$grid_tpl = str_replace('{MODUL_TITLE}',$_POST['title'],$grid_tpl);
						$fp = fopen('modules/'.$modulename.'/grid.tpl', "w");
						fwrite($fp, $grid_tpl);
						fclose($fp);
						chmod('modules/'.$modulename.'/grid.tpl', 0777);
						
						$info_tpl = file_get_contents('modules/create_modul/tpl_info.tpl', true);
						$info_tpl = str_replace('{MODUL_TABLE_NAME}',$_POST['f_table'],$info_tpl);
						$info_tpl = str_replace('{MODUL_TITLE}',$_POST['title'],$info_tpl);
						$fp = fopen('modules/'.$modulename.'/info.xml', "w");
						fwrite($fp, $info_tpl);
						fclose($fp);
						chmod('modules/'.$modulename.'/info.xml', 0777);
						
						$tpl_grid_php = file_get_contents('modules/create_modul/tpl_grid_php.tpl', true);
						$tpl_grid_php = str_replace('{MODUL_TABLE_NAME}',$_POST['f_table'],$tpl_grid_php);
						$tpl_grid_php = str_replace('{MODUL_GRID_PHP_FIELDS1}',$modul_grid_php_fields1,$tpl_grid_php);
						$tpl_grid_php = str_replace('{MODUL_GRID_PHP_FIELDS2}',$modul_grid_php_fields2,$tpl_grid_php);
						$fp = fopen('modules/'.$modulename.'/grid.php', "w");
						fwrite($fp, $tpl_grid_php);
						fclose($fp);
						chmod('modules/'.$modulename.'/grid.php', 0777);
						
						$tpl_add = file_get_contents('modules/create_modul/tpl_add.tpl', true);
						$tpl_add = str_replace('{MODUL_ADD_FF_FIELDS}',$add_ff_fields,$tpl_add);
						$fp = fopen('modules/'.$modulename.'/add.tpl', "w");
						fwrite($fp, $tpl_add);
						fclose($fp);
						chmod('modules/'.$modulename.'/add.tpl', 0777);
						
						$tpl_html = file_get_contents('modules/create_modul/tpl_html.tpl', true);
						$tpl_html = str_replace('{MODUL_HTML_AREA}',$html_area,$tpl_html);
						$fp = fopen('modules/'.$modulename.'/html.tpl', "w");
						fwrite($fp, $tpl_html);
						fclose($fp);
						chmod('modules/'.$modulename.'/html.tpl', 0777);
						
						$main_tpl = file_get_contents('modules/create_modul/tpl_main.tpl', true);
						$main_tpl = str_replace('{MODUL_EDT_FF_FIELDS}',$edt_ff_fields,$main_tpl);
						$fp = fopen('modules/'.$modulename.'/main.tpl', "w");
						fwrite($fp, $main_tpl);
						fclose($fp);
						chmod('modules/'.$modulename.'/main.tpl', 0777);
						
						$tpl->assign("M_RESULT_OK", "Модуль '$modulename' успешно создан.");
						$tpl->assign("M_RESULT_ERR", '');
					}
				}
				
				
				$tpl->parse(strtoupper($moduleName), ".".$moduleName."result");
			break;
			default:
				$tpl->parse("META_LINK", ".".$moduleName."html");
				$sql = "SHOW TABLES";
				$result = db_query($sql);
				if (db_num_rows($result) > 0) {
					$t_row = '';
					while($row = db_fetch_array($result)){
						$t_row.='<option value="'.$row[0].'">'.$row[0].'</option>';
					}
					$tpl->assign("TABLE_ROWS", $t_row);
				}
				else{
					$tpl->assign("TABLE_ROWS", '');
				}
				$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
			break;
		}
	}
	else{
		$tpl->parse("META_LINK", ".".$moduleName."html");
		
		$sql = "SHOW TABLES";
		$result = db_query($sql);
		if (db_num_rows($result) > 0) {
			$t_row = '';
			while($row = db_fetch_array($result)){
				$t_row.='<option value="'.$row[0].'">'.$row[0].'</option>';
			}
			$tpl->assign("TABLE_ROWS", $t_row);
		}
		else{
			$tpl->assign("TABLE_ROWS", '');
		}
		$tpl->parse(strtoupper($moduleName), ".".$moduleName."main");
	}
?>