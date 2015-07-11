<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
    'title' => 'Statistical Monthly Report' ,
    'headerIcon' => 'icon-th-list',
    // when displaying a table, if we include bootstra-widget-table class
    // the table will be 0-padding to the box
    'htmlOptions' => array (
        'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%;',
    ) 
) );
?>
<?php

$this->Widget('ext.highcharts.HighchartsWidget', array(
    'scripts' => array(
   'highcharts-more',   // enables supplementary chart types (gauge, arearange, columnrange, etc.)
   'modules/exporting', // adds Exporting button/menu to chart
),
'htmlOptions'=>array('style'=>'width:70%; margin-left:0%;'),
   'options'=>array(
    'chart'=>array(
            'type'=>'line',
        ),
        'credits' => array('enabled' => false),
        'title' => array('text' => 'Monthly Statistical Resolutions and Ordinances Report for the Year '.date('Y')),
      'xAxis' => array(
         'categories' => $months
      ),
      'yAxis' => array(
         'min'=> '0',
            'startOnTick'=> false,
            'allowDecimals'=>false,
         'title' => array('text' => 'No. of Resolutions and Ordinances Passed')
      ),
      'series' => array(
         array('name' => 'Resolutions', 'data' => $months_data),
         array('name' => 'Ordinances', 'data' => $months_dataOrd),     
     )
   )
));
?>
<?php $this->endWidget(); ?>