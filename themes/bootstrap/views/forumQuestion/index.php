<?php
/* @var $this ForumQuestionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Forum Questions',
);

$this->menu=array(
	array('label'=>'Create ForumQuestion', 'url'=>array('create')),
	array('label'=>'Manage ForumQuestion', 'url'=>array('admin')),
);
?>

<h1>Forum Questions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
