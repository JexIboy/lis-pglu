<?php
/* @var $this ForumQuestionController */
/* @var $model ForumQuestion */

$this->breadcrumbs=array(
	'Forum Questions'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ForumQuestion', 'url'=>array('index')),
	array('label'=>'Create ForumQuestion', 'url'=>array('create')),
	array('label'=>'View ForumQuestion', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage ForumQuestion', 'url'=>array('admin')),
);
?>

<h1>Update ForumQuestion <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>