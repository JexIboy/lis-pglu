<?php
/* @var $this ForumQuestionController */
/* @var $model ForumQuestion */

$this->breadcrumbs=array(
	'Forum Questions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ForumQuestion', 'url'=>array('index')),
	array('label'=>'Manage ForumQuestion', 'url'=>array('admin')),
);
?>

<h1>Create ForumQuestion</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>