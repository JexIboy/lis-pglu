<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Ordinances',
);
/* @var $this OrdinanceController */
/* @var $model Ordinance */
$this->menu=array(
	array('label'=>'Search Resolutions', 'url'=>array('site/resolutions')),
	array('label'=>'Search Ordinances', 'url'=>array('site/ordinances'))
		);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#ordinances-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Ordinances' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:105%;',
		) 
) );
?>
<div class="span8">
<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'ordinances-grid',
	'dataProvider'=>$model->search(),
	'htmlOptions'=>array('style'=>'width:105%;'),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		'ord_no',
		array('name'=>'subj_matter','value'=>'$data->subj_matter','htmlOptions'=>array('style'=>'width:50%;')),
		array('header'=>'Author','value'=>'$data->Author','htmlOptions'=>array('style'=>'width:35%;')),
		array('header'=>'First Reading','value'=>'$data->firstreading','htmlOptions'=>array('style'=>'width:12%;')),
		array('header'=>'Second Reading','value'=>'$data->secondreading','htmlOptions'=>array('style'=>'width:12%;')),
		array('header'=>'Third Reading','value'=>'$data->thirdreading','htmlOptions'=>array('style'=>'width:12%;')),
		'date_passed',
		//'input_by',
		
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->
