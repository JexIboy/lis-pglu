<?php
/* @var $this AgencyController */
/* @var $model Agency */

$this->breadcrumbs=array(
	'Agencies'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Agency', 'url'=>array('index')),
	array('label'=>'Create Agency', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#agency-grid').yiiGridView('update', {
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
		'title' => 'Search Agency' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%;',
		) 
) );
?>
<div class="span8">
<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'agency-grid',
	'type'=>'striped bordered condensed',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		//'agency_id',
		'agency_name',
		'shortname',
		'address',
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
