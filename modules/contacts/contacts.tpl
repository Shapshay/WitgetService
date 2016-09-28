<div class="block-content contacts-block">
        
            <h1 class="as_h2">Контактная информация 
</h1>
            <div class="inner-margin">
        
        <table class="member-site-list profile-list">
            <tr>
                <td width="35%">Название:</td>
                <td>
                    {COMPANY}
                </td>
            </tr>
            <tr>
                <td width="35%">Контактное лицо:</td>
                <td>
                    {CONTACT}
                </td>
            </tr>
            <tr>
                <td width="35%">Адрес:</td>
                <td>
                    {ADRES}
                </td>
            </tr>
            <tr>
                <td width="35%">Телефон:</td>
                <td>
                    <span class="b-company-info__number tel ">{PHONE}</span>
                </td>
            </tr>
            <tr>
                <td width="35%">Skype:</td>
                <td>
                    {SKYPE}
                </td>
            </tr>
            <tr>
                <td width="35%">E-mail:</td>
                <td>
                   {EMAIL}
                </td>
            </tr>
            <tr>
                <td>Время работы:</td>
                <td>
    
            <a class="js-link-blue " href="javascript:;" onclick="hideShowDiv('raspis');">График работы</a>
    
    
    <!--noindex-->
                <div style="display: none; width: 333px; position:absolute; z-index:600;" id="raspis" class="modal info-popup">

                    <table class="schedule">

                        <tr>
                            <th>День</th>
                            <th>Время работы</th>
                            <th>Перерыв</th>
                        </tr>

                        

                            <tr class="work-day">
                                <td>Понедельник</td>
                                <td>
                                        9:00&nbsp;&mdash;&nbsp;19:00
                                </td>
                                <td>
                                        13:00&nbsp;&mdash;&nbsp;14:00
                                </td>
                            </tr>

                        

                            <tr class="work-day">
                                <td>Вторник</td>
                                <td>
                                        9:00&nbsp;&mdash;&nbsp;19:00
                                </td>
                                <td>
                                        13:00&nbsp;&mdash;&nbsp;14:00
                                </td>
                            </tr>

                        

                            <tr class="work-day">
                                <td>Среда</td>
                                <td>
                                        9:00&nbsp;&mdash;&nbsp;19:00
                                </td>
                                <td>
                                        13:00&nbsp;&mdash;&nbsp;14:00
                                </td>
                            </tr>

                        

                            <tr class="work-day">
                                <td>Четверг</td>
                                <td>
                                        9:00&nbsp;&mdash;&nbsp;19:00
                                </td>
                                <td>
                                        13:00&nbsp;&mdash;&nbsp;14:00
                                </td>
                            </tr>

                        

                            <tr class="work-day">
                                <td>Пятница</td>
                                <td>
                                        9:00&nbsp;&mdash;&nbsp;19:00
                                </td>
                                <td>
                                        13:00&nbsp;&mdash;&nbsp;14:00
                                </td>
                            </tr>

                        

                            <tr class="">
                                <td>Суббота</td>
                                <td>
                                        Выходной
                                </td>
                                <td>
                                </td>
                            </tr>

                        

                            <tr class="">
                                <td>Воскресенье</td>
                                <td>
                                        Выходной
                                </td>
                                <td>
                                </td>
                            </tr>


                    </table>

                    <div class="schedule-time-zone-remark">
                        * Время указано для региона: Казахстан, Алматы
                    </div>
                </div>
            <!--/noindex-->
    
    


    
 </td>
            </tr>
        </table>
        </div>
    </div>
	
<div class="block-content contacts-block-map">
    <a name='map'></a>
    
    
    <div class="as_h2">
        Местоположение компании на Яндекс.Картах
    
</div>
    
    <div class="inner-margin">
	<script type="text/javascript">
window.onload=function ()
{
var map = new YMaps.Map(document.getElementById('YMapsID'));

var geocoder = new YMaps.Geocoder('{{MAP}}');

YMaps.Events.observe(geocoder, geocoder.Events.Load, function (geocoder)
{
map.setCenter(geocoder.get(0).getGeoPoint(),15);

map.openBalloon(map.getCenter(), '<strong>{COMPANY}</strong>');
});

}
</script> 
        
        <div id="YMapsID" style="width:670px;height:400px" class="block-content no-border">
        </div>
    </div>
    

</div>