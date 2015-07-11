<?php
/* @var $this OriginController */
/* @var $model Origin */

$this->breadcrumbs=array(
	'Origins'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Origin', 'url'=>array('index')),
	array('label'=>'Add Origin', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#origin-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>


<?php echo CHtml::link('Advanced Search','#',array('class'=>'btn search-button btn-success','style'=>'color:white;')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Search Origin' ,
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
        'id'=>'origin-grid',
	'type'=>'striped bordered condensed',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		//'orig_id',
		'orig_name',
		'shortname',
		'contact_person',
		'contact_num',
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:70px;'),
			'class' => 'bootstrap.widgets.TbButtonColumn' 
		),
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->
