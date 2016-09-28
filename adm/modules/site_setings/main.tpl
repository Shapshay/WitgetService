
<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Название сайта</strong><br>
<input type="text" name="company" value='{EDT_COMPANY}'>
<p><strong>Логотип</strong><br>
<input id="logo" type="text" name="logo" value="{EDT_LOGO}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('logo');" />
<p><strong>Слоган сайта</strong><br>
<input type="text" name="slogan" value='{EDT_SLOGAN}'>
<p><strong>E-mail</strong><br>
<input type="text" name="email" value="{EDT_EMAIL}">
<p><strong>Адрес</strong><br>
<input type="text" name="adress" value="{EDT_ADRESS}">
<p><strong>Время работы</strong><br>
<input type="text" name="jtime" value="{EDT_JTIME}">
<p><strong>Телефон</strong><br>
<input type="text" name="phone" value="{EDT_PHONE}">
<p><strong>Краткое описание (для поисковых систем)</strong><br>
<input type="text" name="meta_desc" value='{EDT_DESC}'>
<p><strong>Ключевые слова (для поисковых систем)</strong><br>
<input type="text" name="meta_key" value='{EDT_KEYS}'>
<p><strong>Тема дизайна</strong><br>
<select name="tpl_group_id">
{THEME_ROWS}
</select>

<p><input type="Submit" value="Сохранить" name="edt_s_s" class="button1">
</form>
