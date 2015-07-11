<?php
/*
$this->Widget('ext.highcharts.HighchartsWidget', array(
    'scripts' => array(
   'highcharts-more',   // enables supplementary chart types (gauge, arearange, columnrange, etc.)
   'modules/exporting', // adds Exporting button/menu to chart
      ),
   'options'=>array(
    'chart'=>array(
            'type'=>'line',
             'width'=>1050,
        ),
      'credits' => array('enabled' => false),
      'title' => array('text' => 'Statistical Monthly Resolution Report for Board Members'),
      'xAxis' => array(
         'categories' => $months
      ),
      'yAxis' => array(
         'title' => array('text' => 'No. of Resolution Signed')
      ),
      'series' => $this->series('01')
   ),
   'htmlOptions'=>array(
        //'style'=>'width:70%;'
    ),
));*/


?>
<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
    'title' => 'Yearly Statistical Report' ,
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
$y=array();
 foreach($years as $value){
  array_push($y,$value['reso']);
}
$this->Widget('ext.highcharts.HighchartsWidget', array(
    'scripts' => array(
   'highcharts-more',   // enables supplementary chart types (gauge, arearange, columnrange, etc.)
   'modules/exporting', // adds Exporting button/menu to chart
),
    'htmlOptions'=>array('style'=>'width:70%'),
   'options'=>array(
    'chart'=>array(
            'type'=>'line',
        ),
        'credits' => array('enabled' => false),
      'title' => array('text' => 'Statistical Yearly Resolutions and Ordinances Report'),
      'xAxis' => array(
         'categories' => $y
      ),
      'yAxis' => array(
          'min'=> '0',
            'startOnTick'=> false,
            'allowDecimals'=>false,
         'title' => array('text' => 'No. of Resolutions and Ordinances Passed')
      ),
      'series' => array(
        array('name' => 'Resolutions', 'data' => $years_data), 
        array('name' => 'Ordinances', 'data' => $yOrd), 
     )
   )
));
?>
<?php $this->endWidget(); ?>
