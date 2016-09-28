<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Дата</strong><br>
<input type="text" name="date" value="{SS_DATE_NOW}" style="width:200px;" readonly="readonly">
<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.date,'dd-mm-yyyy hh:ii',this,true)">
<p><strong>Название статьи</strong><br>
<input type="text" name="title">
<p><strong>TITLE</strong><br>
<input type="text" name="meta_title">
<p><strong>KEYWORDS</strong><br>
<input type="text" name="meta_key">
<p><strong>DESCRIPTION</strong><br>
<input type="text" name="meta_desc">
<p><strong>Картинка</strong><br>
<input id="icon" type="text" name="icon" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('icon');" />
<p><strong>Видео (ссылка Youtube)</strong><br>
<input type="text" name="video">
<p><strong>Краткое описание</strong><br>
<textarea name="description" rows="15" cols="80" id="description"></textarea>
<p><strong>Полное описание</strong><br>
<textarea name="content" rows="15" cols="80" id="content"></textarea>
<p><input type="Submit" value="Сохранить" name="add_art" class="button1">
</form>
