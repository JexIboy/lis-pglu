<?php
/* @var $this OriginController */
/* @var $model Origin */

$this->breadcrumbs=array(
	'Origins'=>array('index'),
	$model->orig_id=>array('view','id'=>$model->orig_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Origin', 'url'=>array('index')),
	array('label'=>'Add Origin', 'url'=>array('create')),
	array('label'=>'View Origin', 'url'=>array('view', 'id'=>$model->orig_id)),
	array('label'=>'Manage Origin', 'url'=>array('admin')),
);
?>


<?php $this->renderPartial('_form', array('model'=>$model)); ?>