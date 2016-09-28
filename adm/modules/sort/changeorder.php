<?php
/**
 * Скрипт изменяет порядок записей.
 *
 * @author Стаценко Владимир
 * @link http://www.simplecoding.org/
 */
try {
	//проверяем полученные данные
	if (!isset($_POST['neworder']) || count($_POST['neworder']) > 5000) {
		throw new Exception('Недопустимые данные');
	}
	//подключаемся к БД
	include("../../inc/access.php");
	$db = mysql_pconnect(DB_HOST, DB_LOGIN, DB_PASSWORD)
		or die("Connection Error: " . mysql_error());
	mysql_select_db(DB_NAME) or die("Error conecting to db.");
	$result = mysql_query('SET NAMES utf8;');
	//создаём запрос на обновление
	
	//преобразовываем строку в JSON формате в массив объектов
	$neworder = stripslashes($_POST['neworder']);
	$data = json_decode($neworder);
	if (null == $data) {
		//throw new Exception('Недопустимый формат');
		throw new Exception($_POST['neworder']);
	}
	//обновляем записи
	foreach ($data as $note) {
		$result = mysql_query('UPDATE pages SET sortfield='.$note->order.' WHERE group_id = 1 AND id='.substr($note->id, 5));
	}
	$dbh = null;
	//отправляем отчет браузеру
	echo json_encode(array('status'=>'OK'));
} catch(Exception $e) {
	echo json_encode(array('status'=>'ERR', 'mes'=>'Ошибка: '.$e->getMessage()));
}
