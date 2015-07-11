<?php
/* @var $this CommMeetingResoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Comm Meeting Resos',
);

$this->menu=array(
	array('label'=>'Create CommMeetingReso', 'url'=>array('create')),
	array('label'=>'Manage CommMeetingReso', 'url'=>array('admin')),
);
?>

<h1>Comm Meeting Resos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
