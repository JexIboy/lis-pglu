<?php
/* @var $this CommitteeController */
/* @var $model Committee */

$this->breadcrumbs=array(
	'Committees'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Committee', 'url'=>array('index')),
	array('label'=>'Add Committee', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#committee-grid').yiiGridView('update', {
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
		'title' => 'Search Committee' ,
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
        'id'=>'committee-grid',
	'type'=>'striped bordered condensed',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'htmlOptions'=>array('style'=>'width:100%;'),
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		//array('name'=>'comm_id','value'=>'$data->comm_id','htmlOptions'=>array('style'=>'width:10%;')),
		'comm_name',
		//'shortname',
		array('header'=>'Chairman','value'=>'$data->chairman0->Fullname'),
		//array('header'=>'Vice Chairman','value'=>'$data->vChairman->Fullname'),
		//'members',
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%;'),
			'class' => 'bootstrap.widgets.TbButtonColumn' 
		),
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->


