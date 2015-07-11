<?php
/* @var $this CommitteeController */
/* @var $model Committee */

$this->breadcrumbs=array(
	'Committees'=>array('index'),
	$model->comm_id=>array('view','id'=>$model->comm_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Committee', 'url'=>array('index')),
	array('label'=>'Add Committee', 'url'=>array('create')),
	array('label'=>'View Committee', 'url'=>array('view', 'id'=>$model->comm_id)),
	array('label'=>'Manage Committee', 'url'=>array('admin')),
);
?>


<?php $this->renderPartial('_form', array('model'=>$model)); ?>