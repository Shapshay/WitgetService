<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Дата</strong><br>
<input type="text" name="date" value="{EDT_DATE}" style="width:200px;" readonly="readonly">
<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.date,'dd-mm-yyyy hh:ii',this,true)">
<p><strong>Название новости</strong><br>
<input type="text" name="title" value="{EDT_TITLE}">
<p><strong>TITLE</strong><br>
<input type="text" name="meta_title" value="{EDT_META_TITLE}">
<p><strong>KEYWORDS</strong><br>
<input type="text" name="meta_key" value="{EDT_META_KEY}">
<p><strong>DESCRIPTION</strong><br>
<input type="text" name="meta_desc" value="{EDT_META_DESC}">
<p><strong>Картинка</strong><br>
{EDT_ICON}<br />
<input id="icon" type="text" name="icon" value="{EDT_ICON}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('icon');" />
<p><strong>Краткое описание</strong><br>
<textarea name="description" rows="15" cols="80" id="description">{EDT_DESC}</textarea>
<p><strong>Полное описание</strong><br>
<textarea name="content" rows="15" cols="80" id="content">{EDT_CONTENT}</textarea>
<p><input type="Submit" value="Сохранить" name="edt_art" class="button1">
</form>
