
<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Resolutions',
);

$this->menu=array(
    array('label'=>'Create Resolution', 'url'=>array('create')),
    array('label'=>'Manage Resolution', 'url'=>array('admin')),
);
?>
<?php
$this->menu=array(
        array('label'=>'Ordinance History Report', 'url'=>array('reportsOrdinance/historyOrdinance')),
        //array('label'=>'Monthly Ordinance Report', 'url'=>array('reportsOrdinance/monthlyOrdinance')),
        array('label'=>'Ordinance Report', 'url'=>array('reportsOrdinance/yearlyOrdinance')),
        array('label'=>'Authored Ordinance Report', 'url'=>array('reportsOrdinance/authoredYearlyOrdinance')),
);
?>

<?php $this->renderPartial('searchYearlyOrdinance',array(
	'fiscal'=>$fiscal
)); ?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $start_year.' to '.$end_year,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'headerButtons' => array(
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'url'=>Yii::app()->controller->createUrl("reportsOrdinance/printYearlyOrdinance",array("start_year"=>$start_year,"end_year"=>$end_year)),
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
		'id' => 'yearly-ordinance-grid',
		'dataProvider' => $dataProvider,
		'htmlOptions'=>array('style'=>'padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array('name'=>'ord_no','type'=>'raw','value'=>'CHtml::link($data->ord_no,array("ordinance/download","id"=>$data->ord_no))','htmlOptions'=>array('style'=>'width:15%;')),
                'subj_matter',
                array('header'=>'Author','value'=>'$data->Author'),
                   'date_passed'              
				
		) 
) );

?>


<?php $this->endWidget(); ?>

