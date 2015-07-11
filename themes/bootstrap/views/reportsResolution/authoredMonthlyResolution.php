<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Resolutions',
);


$this->menu=array(
		array('label'=>'Resolution Report', 'url'=>array('/reportsResolution/index')),
        array('label'=>'Monthly Authored Resolution Report', 'url'=>array('/reportsResolution/authoredMonthlyResolution')),
        array('label'=>'Yearly Authored Resolution Report', 'url'=>array('/reportsResolution/authoredYearlyResolution')),
        
);
?>

<?php $this->renderPartial('searchAuthoredMonthlyResolution',array(
	'auth_name'=>$auth_name,'month'=>$month,'year'=>$year
)); ?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Monthly Authored Resolution Report',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'headerButtons' => array(
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'url'=>Yii::app()->controller->createUrl("reportsResolution/printAuthoredResolutionMonthly",array("model"=>$year.",".$month.','.$auth_name)),
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
		'id' => 'authored-monthly-resolution-grid',
		'dataProvider' => $dataProvider,
		'htmlOptions'=>array('style'=>'padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array('name'=>'res_no','type'=>'raw','value'=>'CHtml::link($data->res_no,array("resolution/download","id"=>$data->res_no))'),
                 'subj_matter',
                 'date_passed',)
                               
				
		) 
) ;
?>


<?php $this->endWidget(); ?>

