<?php
/* @var $this OfficialsController */
/* @var $model Officials */

$this->breadcrumbs=array(
	'Officials'=>array('index'),
	$model->off_id=>array('view','id'=>$model->off_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Officials', 'url'=>array('index')),
	array('label'=>'Create Officials', 'url'=>array('create')),
	array('label'=>'View Officials', 'url'=>array('view', 'id'=>$model->off_id)),
	array('label'=>'Manage Officials', 'url'=>array('admin')),
);
?>


<?php $this->renderPartial('_form', array('model'=>$model)); ?>