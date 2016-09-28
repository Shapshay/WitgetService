<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Показывать</strong><br>
<input type="checkbox" value="1" name="view" {VIEW_CHECK}/>
<p><strong>Название виджета</strong><br>
<input type="text" name="title" value="{EDT_TITLE}">
<p><strong>Категория виджета</strong><br>
<select name="cat_id">
{CATEGORY_ROWS}
</select>
<p><strong>Превью</strong><br>
<input id="preview" type="text" name="preview" value="{EDT_PREVIEW}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('preview');" />
<p><strong>Скриншот</strong><br>
<input id="img" type="text" name="img" value="{EDT_IMG}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('img');" />
<p><strong>Папка</strong><br>
<input type="text" name="folder" value="{EDT_FOLDER}">
										
<p><input type="Submit" value="Сохранить" name="edt_item" class="button1">
</form>
