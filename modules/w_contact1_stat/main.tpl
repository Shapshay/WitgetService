{META_LINK}
<div class="settings_wdt_title">{WDT_TITLE}</div>
<div class="settings_view">
<div><img src="{WDT_PREVIEW}" /></div>
<p><a href="{WDT_URL}" class="set_btn_view" target="_blank" class="set_btn_view">Просмотр</a></p>
</div>
<div class="settings_form">
<table id="stat_table" class="display" width="600">
<thead>
<th width="50">№</th>
<th>E-mail</th>
</thead>
<tbody>
{STAT_ROWS}
</tbody>
</table>
<div align="center" style="cursor:pointer;" onclick="SaveExcel();">
<img src="images/excel.png" /><br />Скачать в Excel
</div>

<p><strong>Посетители и просмотры</strong><br /><div class="ct-chart3" style="width: 600px; height: 400px;"></div></p>
<script>
var chart = new Chartist.Line('.ct-chart3', {
  labels: [{V_STAT_DAYS}],
  series: [
    [{V_STAT_V}],
    [{V_STAT_C}]/*,
    [5,  3, 4, 5, 6, 3, 3, 4, 5, 6, 3, 4],
    [3,  4, 5, 6, 7, 6, 4, 5, 6, 7, 6, 3]*/
  ]
}, {
  low: 0,
  plugins: [
    Chartist.plugins.ctPointLabels({
      textAnchor: 'middle'
    })
  ]
});

// Let's put a sequence number aside so we can use it in the event callbacks
var seq = 0,
  delays = 40,
  durations = 500;

// Once the chart is fully created we reset the sequence
chart.on('created', function() {
  seq = 0;
});

// On each drawn element by Chartist we use the Chartist.Svg API to trigger SMIL animations
chart.on('draw', function(data) {
  seq++;

  if(data.type === 'line') {
    // If the drawn element is a line we do a simple opacity fade in. This could also be achieved using CSS3 animations.
    data.element.animate({
      opacity: {
        // The delay when we like to start the animation
        begin: seq * delays + 1000,
        // Duration of the animation
        dur: durations,
        // The value where the animation should start
        from: 0,
        // The value where it should end
        to: 1
      }
    });
  } else if(data.type === 'label' && data.axis === 'x') {
    data.element.animate({
      y: {
        begin: seq * delays,
        dur: durations,
        from: data.y + 100,
        to: data.y,
        // We can specify an easing function from Chartist.Svg.Easing
        easing: 'easeOutQuart'
      }
    });
  } else if(data.type === 'label' && data.axis === 'y') {
    data.element.animate({
      x: {
        begin: seq * delays,
        dur: durations,
        from: data.x - 100,
        to: data.x,
        easing: 'easeOutQuart'
      }
    });
  } else if(data.type === 'point') {
    data.element.animate({
      x1: {
        begin: seq * delays,
        dur: durations,
        from: data.x - 10,
        to: data.x,
        easing: 'easeOutQuart'
      },
      x2: {
        begin: seq * delays,
        dur: durations,
        from: data.x - 10,
        to: data.x,
        easing: 'easeOutQuart'
      },
      opacity: {
        begin: seq * delays,
        dur: durations,
        from: 0,
        to: 1,
        easing: 'easeOutQuart'
      }
    });
  } else if(data.type === 'grid') {
    // Using data.axis we get x or y which we can use to construct our animation definition objects
    var pos1Animation = {
      begin: seq * delays,
      dur: durations,
      from: data[data.axis.units.pos + '1'] - 30,
      to: data[data.axis.units.pos + '1'],
      easing: 'easeOutQuart'
    };

    var pos2Animation = {
      begin: seq * delays,
      dur: durations,
      from: data[data.axis.units.pos + '2'] - 100,
      to: data[data.axis.units.pos + '2'],
      easing: 'easeOutQuart'
    };

    var animations = {};
    animations[data.axis.units.pos + '1'] = pos1Animation;
    animations[data.axis.units.pos + '2'] = pos2Animation;
    animations['opacity'] = {
      begin: seq * delays,
      dur: durations,
      from: 0,
      to: 1,
      easing: 'easeOutQuart'
    };

    data.element.animate(animations);
  }
});

// For the sake of the example we update the chart every time it's created with a delay of 10 seconds
/*
chart.on('created', function() {
  if(window.__exampleAnimateTimeout) {
    clearTimeout(window.__exampleAnimateTimeout);
    window.__exampleAnimateTimeout = null;
  }
  window.__exampleAnimateTimeout = setTimeout(chart.update.bind(chart), 12000);
});
*/
</script>


<p><strong>Браузеры</strong><br /><div class="ct-chart2" style="width: 600px; height: 400px;"></div></p>
<script>
var data = {
  labels: [{STAT_BROWSERS}],
  series: [{STAT_B_C}]
};

var sum = function(a, b) { return a + b };

var options = {
  labelInterpolationFnc: function(value) {
  	//alert(value[1]);
    return value[0];
  }
};

var responsiveOptions = [
  ['screen and (min-width: 640px)', {
    chartPadding: 30,
    labelOffset: 200,
    labelDirection: 'explode',
    labelInterpolationFnc: function(value) {
      return value;
    }
  }],
  ['screen and (min-width: 1024px)', {
    labelOffset: 100,
    chartPadding: 20
  }]
];

new Chartist.Pie('.ct-chart2', data, options, responsiveOptions);
</script>
</div>
<div class="clear"></div>