<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Дата</strong><br>
<input type="text" name="date" value="{SS_DATE_NOW}" style="width:200px;" readonly="readonly">
<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.date,'dd-mm-yyyy hh:ii',this,true)">
<p><strong>Фото</strong><br>
<input id="photo" type="text" name="photo" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('photo');" />
<p><strong>Возраст</strong><br>
<input type="text" name="year">
<p><strong>Имя</strong><br>
<input type="text" name="name">
<p><strong>Отзыв</strong><br>
<textarea name="otzyv" rows="15" cols="80" id="description"></textarea>
<p><input type="Submit" value="Сохранить" name="add_item" class="button1">
</form>
