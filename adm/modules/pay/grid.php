<?php
include("../../inc/access.php");

$examp = $_REQUEST["q"]; //query number

//echo $_REQUEST["_search"]."R*<br>";

$_REQUEST['page']; // get the requested page
$_REQUEST['rows']; // get how many rows we want to have into the grid
$_REQUEST['sidx']; // get index row - i.e. user click to sort
$_REQUEST['sord']; // get the direction
if(!$sidx) $sidx =1;

$totalrows = isset($_REQUEST['totalrows']) ? $_REQUEST['totalrows']: false;
if($totalrows) {
	$limit = $totalrows;
}

// connect to the database
$db = mysql_pconnect(DB_HOST, DB_LOGIN, DB_PASSWORD)
or die("Connection Error: " . mysql_error());

mysql_select_db(DB_NAME) or die("Error conecting to db.");
$result = mysql_query('SET NAMES utf8;');

$result = mysql_query("SELECT 
			COUNT(id)
			FROM operations 
			WHERE pay_ok = 1");
$row = mysql_fetch_array($result,MYSQL_ASSOC);
$count = $row['count'];
			
if( $count >0 ) {
	$total_pages = ceil($count/$limit);
} else {
	$total_pages = 0;
}
if ($page > $total_pages) $page=$total_pages;
if ($limit<0) $limit = 0;
$start = $limit*$page - $limit; // do not put $limit*($page - 1)
if ($start<0) $start = 0;

$SQL = "SELECT id, title, date FROM articles WHERE page_id = ".$_GET['ch']." ORDER BY date DESC LIMIT $start , $limit";
$SQL = "SELECT 
			operations.id AS id, 
			operations.date  AS date, 
			tarifs.title AS user,
			users.fio AS user,
			operations.amount  AS amount
			FROM operations 
			LEFT OUTER JOIN tarifs ON operations.action_type = tarifs.id
			LEFT OUTER JOIN users ON operations.u_id = users.id
			WHERE operations.pay_ok = 1 
			ORDER BY operations.date DESC 
			LIMIT $start , $limit";
//echo $SQL;
$result = mysql_query( $SQL ) or die("Couldn’t execute query.".mysql_error());
$responce->page = $page;
$responce->total = $total_pages;
$responce->records = $count;
$i=0;
while($row = mysql_fetch_array($result,MYSQL_ASSOC)) {
	$responce->rows[$i]['id']=$row[id];
	
	$responce->rows[$i]['cell']=array($row['id'],$row['date'],$row['user'],$row['tarif'],$row['amount']);
	$i++;
} 
echo json_encode($responce);

?>