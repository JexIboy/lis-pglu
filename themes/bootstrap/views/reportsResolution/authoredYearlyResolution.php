
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

<?php $this->renderPartial('searchAuthoredYearlyResolution',array(
	'auth_name'=>$auth_name,'year'=>$year
)); ?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Yearly Authored Resolution Report',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'headerButtons' => array(
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'url'=>Yii::app()->controller->createUrl("reportsResolution/printAuthoredResolutionYearly",array("model"=>$year.','.$auth_name)),
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
		'id' => 'authored-yearly-resolution-grid',
		'dataProvider' => $dataProvider,
		'htmlOptions'=>array('style'=>'padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array('name'=>'res_no','type'=>'raw','value'=>'CHtml::link($data->res_no,array("resolution/download","id"=>$data->res_no))'),
                'subj_matter',
                'date_passed',
                               
				
		) 
) );
?>


<?php $this->endWidget(); ?>

