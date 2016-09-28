<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>В наличии</strong><br>
<input type="checkbox" value="1" name="status" {STATUS_CHECK}/>
<p><strong>Дата создания</strong><br>
<input type="text" name="date" value="{EDT_DATE}" style="width:200px;" readonly="readonly">
<input type="button" value="{STR_SELECT}" onclick="displayCalendar(document.s_s.date,'dd-mm-yyyy hh:ii',this,true)">
<p><strong>Категория продукции</strong><br>
<select name="cat_id">
{CATEGORY_ROWS}
</select>
<p><strong>Название</strong><br>
<input type="text" name="title" value="{EDT_TITLE}">
<p><strong>Артикул</strong><br>
<input type="text" name="artikul" value="{EDT_ARTIKUL}">
<p><strong>Фото</strong><br>
<input id="icon" type="text" name="icon" value="{EDT_ICON}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('icon');" />
<p><strong>Фото2</strong><br>
<input id="icon2" type="text" name="icon2" value="{EDT_ICON2}" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('icon2');" />
<p><strong>Цена</strong><br>
<input type="text" name="cost" value="{EDT_COST}">
<p>&nbsp;<br />
<h3>Магазины</h3> 
<hr size="1" width="80%" color="#0000FF" align="left" />
<input type="checkbox" name="maincheck" id="maincheck"/> ОТМЕТИТЬ ВСЕ
<hr size="1" width="80%" color="#0000FF" align="left" />
{MAGAZ_ROWS}
<p><input type="Submit" value="Сохранить" name="edt_item" class="button1">
</form>
