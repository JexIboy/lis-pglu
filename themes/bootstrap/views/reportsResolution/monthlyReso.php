<div style="margin-left:0%;">
<?php
$y=array();
 foreach($years as $value){
  array_push($y,$value['reso']);
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
      'title' => array('text' => 'Statistical Yearly Resolution Report'),
      'xAxis' => array(
         'categories' => $y
      ),
      'yAxis' => array(
          'min'=> '0',
            'startOnTick'=> false,
            'allowDecimals'=>false,
         'title' => array('text' => 'No. of Resolution Passed')
      ),
      'series' => array(
         array('name' => 'No. of Resolutions', 'data' => $years_data),    
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
        'title' => array('text' => 'Statistical Monthly Resolution Report for the Year '.date('Y')),
      'xAxis' => array(
         'categories' => $months
      ),
      'yAxis' => array(
          'min'=> '0',
            'startOnTick'=> false,
            'allowDecimals'=>false,
         'title' => array('text' => 'No. of Resolutions Passed')
      ),
      'series' => array(
         array('name' => 'No. of Resolutions', 'data' => $months_data),     
     )
   )
));
?>
</div>