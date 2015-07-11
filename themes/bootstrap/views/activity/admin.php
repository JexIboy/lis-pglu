<?php
/* @var $this ActivityController */
/* @var $model Activity */

$this->breadcrumbs=array(
	'Activities'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Activity', 'url'=>array('index')),
	//array('label'=>'Create Activity', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#activity-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>



<?php 

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Search Activity' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:98%;',
		) 
) );
?>
<div class="span8">
<?php

$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'activity-grid',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('name'=>'act_id','value'=>'$data->act_id','htmlOptions'=>array('style'=>'width:10%;')),
		array('name'=>'act_desc','value'=>'$data->act_desc','htmlOptions'=>array('style'=>'width:40%;')),
		array('name'=>'act_by','value'=>'$data->actBy->emp->Fullname','htmlOptions'=>array('style'=>'width:25%;')),
		array('name'=>'act_datetime','value'=>'$data->act_datetime','htmlOptions'=>array('style'=>'width:25%;')),
	),
));
?>


</div><!-- form -->
<?php $this->endWidget();  ?>

