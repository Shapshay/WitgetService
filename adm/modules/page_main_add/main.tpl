
<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Название страницы</strong><br>
<input type="text" name="title">
<p><strong>Иконка раздела</strong><br>
<input id="page_icon" type="text" name="page_icon" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('page_icon');" />
<p><strong>Краткое описание</strong><br>
<textarea name="description" rows="15" cols="80" id="description"></textarea>
<p><strong>Страница дизайна</strong><br>
<select name="stemplate">
{TPL_ROWS}
</select>
<p><strong>Модуль отображения</strong><br>
<select name="content">
{CONTENT_ROWS}
</select>
<p><input type="Submit" value="Создать" name="add_page" class="button1">
</form>
