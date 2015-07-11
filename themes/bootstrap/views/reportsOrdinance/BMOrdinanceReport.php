<?php

$this->Widget('ext.highcharts.HighchartsWidget', array(
    'scripts' => array(
   'highcharts-more',   // enables supplementary chart types (gauge, arearange, columnrange, etc.)
   'modules/exporting', // adds Exporting button/menu to chart
      ),
   'options'=>array(
    'chart'=>array(
            'type'=>'line',
             
        ),
      'credits' => array('enabled' => false),
      'title' => array('text' => 'Statistical Monthly Ordinance Report for Board Members'),
      'xAxis' => array(
         'categories' => $months
      ),
      'yAxis' => array(
          'min'=> '0',
            'startOnTick'=> false,
            'allowDecimals'=>false,
         'title' => array('text' => 'No. of Ordinance Signed')
      ),
      'series' => $this->seriesOrd('01')
   ),
   'htmlOptions'=>array(
        'style'=>'width:70%;margin-left:3%;'
    ),
));


?>