<?php
/* @var $this OrdinanceController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Ordinances',
);

$this->menu=array(
	array('label'=>'Create Ordinance', 'url'=>array('create')),
	array('label'=>'Manage Ordinance', 'url'=>array('admin')),
);
?>

<h1>Ordinances</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
