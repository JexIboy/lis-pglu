
<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Monthly Resolution Report',
);

$this->menu=array(
         array('label'=>'Resolution History Report', 'url'=>array('/reportsResolution/historyResolution')),
        array('label'=>'Monthly Resolution Report', 'url'=>array('/reportsResolution/monthlyResolution')),
        array('label'=>'Fiscal Resolution Report', 'url'=>array('/reportsResolution/yearlyResolution')),
        array('label'=>'Authored Resolutions', 'url'=>array('/reportsResolution/authoredYearlyResolution')),)
?>

<?php $this->renderPartial('searchMonthlyResolution',array(
	'month'=>$month,'year'=>$year,
)); ?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'For the Month of '.$month.' - '.$year,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'headerButtons' => array(
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'url'=>Yii::app()->controller->createUrl("reportsResolution/printMonthlyResolution",array("model"=>$year."-".$month)),
					  'label' => 'Print Result',
					  'visible'=>isset($_POST['searchButton']) ? true:false,
					  'htmlOptions'=>array('id'=>'printButton',)
					  
					  
		), ),
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; text-align:center;',
		),
               		
		
)
 );
?>

<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'monthly-resolution-grid',
		'dataProvider' => $dataProvider,
		'htmlOptions'=>array('style'=>'padding:15px'),
        'template'=>"{items}{pager}",
		'columns' => array (
				array('name'=>'res_no','type'=>'raw','value'=>'CHtml::link($data->res_no,array("resolution/download","id"=>$data->res_no))'),
                array('name'=>'subj_matter'),
                array('header'=>'Author','value'=>'$data->Author','htmlOptions'=>array('style'=>'width:30%;')),
                'date_passed' 
                ),
				
		)) ;
?>


<?php $this->endWidget(); ?>

