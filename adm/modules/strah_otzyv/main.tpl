<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Дата</strong><br>
<input type="text" name="date" value="{EDT_DATE}" style="width:200px;" readonly="readonly">
<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.date,'dd-mm-yyyy hh:ii',this,true)">
<p><strong>Фото</strong><br>
<input id="photo" type="text" name="photo" value="{EDT_PHOTO}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('photo');" />
<p><strong>Возраст</strong><br>
<input type="text" name="year" value="{EDT_YEAR}">
<p><strong>Имя</strong><br>
<input type="text" name="name" value="{EDT_NAME}">
<p><strong>Отзыв</strong><br>
<textarea name="otzyv" rows="15" cols="80" id="description">{EDT_OTZYV}</textarea>
										
<p><input type="Submit" value="Сохранить" name="edt_item" class="button1">
</form>
