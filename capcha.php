<?php
$w = 120;
$h = 35;
$gfx = imagecreatetruecolor($w,$h);
imageantialias($gfx, true);
$white = imagecolorallocate($gfx, 255, 255, 255);

imagefilledrectangle($gfx, 0, 0, $w-1, $h-1, $white);

$str ='';
foreach(range(0, 4) as $r){
	$str.=chr(rand(48,57));
}
$font = 'tahoma.ttf';
$black = imagecolorallocate($gfx, 0, 0, 0);
$pos = $w / strlen($str);
//echo $str."*<br>";
foreach(range(-$h, $w, 5) as $x){
	$shade = rand(50,254);
	$tmpgray = imagecolorallocate($gfx, $shade, $shade, $shade);
	imageline($gfx, $x, 0, $x+$h+rand(0,25), $h-1, $tmpgray);
	imageline($gfx, $x, $h-1, $x+$h+rand(0,25), 0, $tmpgray);
}

foreach(range(0, strlen($str)-1) as $s){
	$shade = rand(0,50);
	$tmpgray = imagecolorallocate($gfx, $shade, $shade, $shade);
	$x_pos = $s*$pos+($pos*0.4);
	//echo $x_pos."*X*<br>";
	$y_pos = rand($h*0.2,$h*0.5);
	//echo $x_pos."*Y*<br>";
	$ugol = rand(-60,60);
	//echo $ugol."*ugol*<br>";
	$size = rand($h/1.5,$h);
	//echo $size."*size*<br>";
	//echo $tmpgray."*tmpgray*<br>";
	/*
	imagettftext($gfx, 
				$size, 
				$ugol, 
				$x_pos, 
				$y_pos, 
				$tmpgray, 
				$font, 
				$str{$s});
	*/
	//echo $str{$s}."*<br>";
	//imagettftext($gfx, 20, 0, 10, 20, $black, $font, $str{$s});
	imagestring($gfx, $size, $x_pos, $y_pos, $str{$s}, $tmpgray);
}



session_name('SID');
@session_start();
$_SESSION['capcha'] = $str;

header('Content-type: image/png');

imagepng($gfx);
?>
