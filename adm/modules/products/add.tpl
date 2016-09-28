<form method="post" enctype="multipart/form-data" name="s_s">
<p><strong>В наличии</strong><br>
<input type="checkbox" value="1" name="status"/>
<p><strong>Категория продукции</strong><br>
<select name="cat_id">
{CATEGORY_ROWS}
</select>
<p><strong>Название</strong><br>
<input type="text" name="title">
<p><strong>Артикул</strong><br>
<input type="text" name="artikul">
<p><strong>Фото</strong><br>
<input id="icon" type="text" name="icon" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('icon');" />
<p><strong>Фото2</strong><br>
<input id="icon2" type="text" name="icon2" style="width:320px;"/>
<input type="button" value="Загрузить" onclick="load_elfinder('icon2');" />
<p><strong>Цена</strong><br>
<input type="text" name="cost">
<p>&nbsp;<br />
<h3>Магазины</h3> 
<hr size="1" width="80%" color="#0000FF" align="left" />
<input type="checkbox" name="maincheck" id="maincheck"/> ОТМЕТИТЬ ВСЕ
<hr size="1" width="80%" color="#0000FF" align="left" />
{MAGAZ_ROWS}
<p><input type="Submit" value="Сохранить" name="add_item" class="button1">
</form>
