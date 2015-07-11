<?php
/* @var $this OriginController */
/* @var $model Origin */

$this->breadcrumbs=array(
	'Origins'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Origin', 'url'=>array('index')),
	array('label'=>'Add Origin', 'url'=>array('admin')),
);
?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>