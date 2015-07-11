<?php
/* @var $this CommunicationController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Communications',
);

$this->menu=array(
	array('label'=>'Add Communication', 'url'=>array('create')),
	array('label'=>'Manage Communication', 'url'=>array('admin')),
);
?>

<h1>Communications</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
