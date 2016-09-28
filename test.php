<?php
error_reporting (E_ALL);
ini_set("display_errors", "1");
date_default_timezone_set ("Asia/Almaty");
//phpinfo();
//echo md5('WdT2015AdM');
// ЧПУ категорий


//$wdt_option['bg_color'] = '707070';
//$wdt_option['w_color'] = '000000';
//$wdt_option['w_title'] = 'Хранители леса';
//$wdt_option['title_color'] = 'e8990f';
//$wdt_option['w_text'] = 'Казахстан, Алматы,<br> Райымбека д.127, 3 этаж<br> +7 (727) 350-60-20';
//$wdt_option['text_color'] = 'e8990f';
//$wdt_option['btn_text'] = 'ИГРАТЬ';
//$wdt_option['btn_text2'] = 'Загрузка...';
//$wdt_option['btn_color1'] = 'e8990f';
//$wdt_option['btn_color2'] = 'cd870e';
//$wdt_option['img'] = 'http://witgetservice.com/wdt/images/ikon.jpg';
//$wdt_option['url'] = 'http://vk.com/app4649729_-87598829?loc=club87598829&mid=-87598829';
//$wdt_option['video'] = 'http://www.youtube.com/embed/qq2DIhBJMJ4';

//$wdt_option['inp_place1'] = 'Введите имя...';
//$wdt_option['inp_place2'] = 'Введите e-mail...';

//$wdt_option['url'] = '//www.youtube.com/embed/mUlvUhMhiFk';
//$wdt_option['form_color'] = 'f4d00b';


//$wdt_option['btn_color3'] = '090ff0';
//$wdt_option['btn_color4'] = '080dc5';

/*



$wdt_option['inp_place1'] = 'Введите имя...';
$wdt_option['inp_place2'] = 'Введите e-mail...';


$wdt_option['w_text'] = 'ПОРЕКОМЕНДУЙТЕ НАС!';


$wdt_option['btn_color5'] = '336faf';
$wdt_option['btn_color6'] = '5b81ab';

$wdt_option['soc_title'] = 'WitgetService.com';
$wdt_option['soc_img'] = 'http://witgetservice.com/wdt/images/soc_img.png';
$wdt_option['soc_desc'] = 'Сервис виджетов для Вашего сайта на любой случай.';
*/


//$wdt_option['btn_text3'] = 'Ждите результата';

//$wdt_option['btn_color3'] = 'e4a004';
//$wdt_option['btn_color4'] = 'FFB304';
//$wdt_option['inp_place3'] = 'Введите телефон...';
//$wdt_option['inp_place4'] = 'Введите Гос.Номер...';
//$wdt_option['inp_place5'] = 'Введите номер тех.паспорта...';
//$wdt_option['coap_success'] = 'Обработка запроса занимает до 30 секунд.';









//$wdt_option['url'] = '//www.youtube.com/embed/mUlvUhMhiFk';






//
//
//$wdt_option['img'] = 'http://witgetservice.com/wdt/images/business03.jpg';

//$wdt_option['soc_title'] = 'WitgetService.com';
//$wdt_option['soc_img'] = 'http://witgetservice.com/wdt/images/soc_img.png';
//$wdt_option['soc_desc'] = 'Сервис виджетов для Вашего сайта на любой случай.';


//
//$wdt_option['w_radius'] = '0';
//$wdt_option['w_location'] = 'center';
//
//
//

//$wdt_option['btn_text'] = 'ОТПРАВИТЬ СООБЩЕНИЕ';
//$wdt_option['btn_text2'] = 'ОТПРАВКА...';
//
//$wdt_option['inp_place1'] = 'Введите Ваше имя...';
//$wdt_option['inp_place2'] = 'Введите Ваш e-mail...';
//$wdt_option['inp_place3'] = 'Введите Ваше сообщение...';
//$wdt_option['map_title'] = 'АвтоклубКазахстана';
//$wdt_option['map_adres'] = 'Алматы, Райымбека, 127';
//$wdt_option['map_success'] = 'Спасибо. Наш менеджер свяжется с Вами в ближайшее время.';
//$wdt_option['msg_theme'] = 'Письмо с сервиса WitgetService.com';

//$wdt_option['close_text'] = 'закрыть';

//
//$wdt_option['url'] = 'http://www.apple.com/macbook-pro/';

//$wdt_option['inp_place'] = 'Ваш email';


//$wdt_option['start_time'] = '1000';
//$wdt_option['speed'] = '1000';



//header("Content-Type: text/html;charset=utf-8");
//$result = preg_replace_callback('/\\\u([0-9a-fA-F]{4})/', create_function('$_m', 'return mb_convert_encoding("&#" . intval($_m[1], 16) . ";", "UTF-8", "HTML-ENTITIES");'),json_encode($wdt_option));
//echo $result;
echo date("Y-m-d H:i",strtotime("+15 days"));
//echo "<p>";
//print_r(json_decode($result));
?>
