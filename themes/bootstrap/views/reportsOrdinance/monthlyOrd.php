<div style="margin-left:0%;">
<?php
$y=array();
 foreach($years as $value){
  array_push($y,$value['ord']);
}
$this->Widget('ext.highcharts.HighchartsWidget', array(
    'scripts' => array(
   'highcharts-more',   // enables supplementary chart types (gauge, arearange, columnrange, etc.)
   'modules/exporting', // adds Exporting button/menu to chart
),
    'htmlOptions'=>array(
        'style'=>'width:99%;margin-left:3%;'
    ),
   'options'=>array(
    'chart'=>array(
            'type'=>'line',
        ),
        'credits' => array('enabled' => false),
      'title' => array('text' => 'Statistical Yearly Ordinance Report'),
      'xAxis' => array(
         'categories' => $y
      ),
      'yAxis' => array(
          'min'=> '0',
            'startOnTick'=> false,
            'allowDecimals'=>false,
         'title' => array('text' => 'No. of Ordinance Passed')
      ),
      'series' => array(
         array('name' => 'No. of Ordinance', 'data' => $years_data),    
     )
   )
));
?>
<br/>

<?php
$this->Widget('ext.highcharts.HighchartsWidget', array(
    'scripts' => array(
   'highcharts-more',   // enables supplementary chart types (gauge, arearange, columnrange, etc.)
   'modules/exporting', // adds Exporting button/menu to chart
),
'htmlOptions'=>array(
        'style'=>'width:99%;margin-left:3%;'
    ),
   'options'=>array(
    'chart'=>array(
            'type'=>'line',
        ),
        'credits' => array('enabled' => false),
        'title' => array('text' => 'Statistical Monthly Ordinance Report for the Year '.date('Y')),
      'xAxis' => array(
         'categories' => $months
      ),
      'yAxis' => array(
          'min'=> '0',
            'startOnTick'=> false,
            'allowDecimals'=>false,
         'title' => array('text' => 'No. of Ordinance Passed')
      ),
      'series' => array(
         array('name' => 'No. of Ordinance', 'data' => $months_data),     
     )
   )
));
?>
</div>