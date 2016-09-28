<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>Дата комментария</strong><br>
										<input type="text" name="date" value="{EDT_DATE}" style="width:200px;" readonly="readonly">
										<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.date,'dd-mm-yyyy hh:ii',this,true)">
										<p><strong>art_id</strong><br>
										<input type="text" name="art_id" value="{EDT_ART_ID}">
										<p><strong>Имя</strong><br>
										<input type="text" name="name" value="{EDT_NAME}">
										<p><strong>Комментарий</strong><br>
										<textarea name="comment" rows="15" cols="80" id="comment">{EDT_COMMENT}</textarea>
										<p><strong>Показывать</strong><br>
										<input type="checkbox" value="1" name="view" {VIEW_CHECK}/>
										
<p><input type="Submit" value="Сохранить" name="edt_item" class="button1">
</form>
