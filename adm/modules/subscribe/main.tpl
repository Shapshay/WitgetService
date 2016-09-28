<p><font color="#CC0000"><strong>В базе {USER_COUNT} пользователей!!!</strong></font>
{SEND_HIDE1}<p><font color="#FF0000"><strong>Отправлено {SEND_RESULT} писем!!!</strong></font>{SEND_HIDE2}
<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Шаблон</strong><br>
<select name="shablon">
<option value="shablon1">Шаблон по умолчанию</option>
</select>
<p><strong>Тема рассылки</strong><br>
<input type="text" name="theme" value="{EDT_THEME}">
<p><strong>Текст рассылки</strong><br>
<textarea name="about" rows="15" cols="80" id="about">{EDT_ABOUT}</textarea>
<p><strong>Пробный емаил</strong><br>
<input type="text" name="email1" />
<p><input type="Submit" value="Тест" name="test_send" class="button1">
<p><input type="Submit" value="Отправить" name="ssend" class="button1">
</form>
