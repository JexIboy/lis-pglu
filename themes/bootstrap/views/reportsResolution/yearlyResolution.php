<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Yearly Resolution',
);
$this->menu=array(
        array('label'=>'Resolution History Report', 'url'=>array('/reportsResolution/historyResolution')),
        array('label'=>'Monthly Resolution Report', 'url'=>array('/reportsResolution/monthlyResolution')),
        array('label'=>'Fiscal Resolution Report', 'url'=>array('/reportsResolution/yearlyResolution')),
        array('label'=>'Authored Resolutions', 'url'=>array('/reportsResolution/authoredYearlyResolution')),
);
?>
<?php $this->renderPartial('searchYearlyResolution',array(
	'fiscal'=>$fiscal
)); ?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' =>'Yearly Report for FY. ' .$start_year.' to '.$end_year,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'headerButtons' => array(
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'url'=>Yii::app()->controller->createUrl("reportsResolution/printYearlyResolution",array("start_year"=>$start_year,"end_year"=>$end_year)),
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
		'id' => 'yearly-resolution-grid',
		'dataProvider' => $dataProvider,
		'htmlOptions'=>array('style'=>'padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array('name'=>'res_no','type'=>'raw','value'=>'CHtml::link($data->res_no,array("resolution/download","id"=>$data->res_no))'),
                'subj_matter',
                array('header'=>'Author','value'=>'$data->Author','htmlOptions'=>array('style'=>'width:25%;')),
                array('name'=>'date_passed','value'=>'$data->date_passed','htmlOptions'=>array('style'=>'width:15%;')),
                                 
				
		) 
) );

?>


<?php $this->endWidget(); ?>