<tr>
<td align="left">
{SITE_TITLE}
</td>
<td>
{SITE_STAT}
</td>
<td>
<form method="post" id="VerSiteFrm{SITE_ID}">
<p><button type="button" class="set_btn_def" onclick="VerSiteF({SITE_ID});">Проверить код</button></p>
<input type="hidden" name="VerSite" value="{SITE_ID}" />
</form>
</td>
<td>
<form method="post" id="DelSiteFrm{SITE_ID}">
<p><button type="button" class="set_btn_del" onclick="DelSiteF({SITE_ID});">Удалить</button></p>
<input type="hidden" name="DelSite" value="{SITE_ID}" />
</form>
</td>
</tr>