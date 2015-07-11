<?php
/* @var $this CommMeetingOrdiController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Comm Meeting Ordis',
);

$this->menu=array(
	array('label'=>'Create CommMeetingOrdi', 'url'=>array('create')),
	array('label'=>'Manage CommMeetingOrdi', 'url'=>array('admin')),
);
?>

<h1>Comm Meeting Ordis</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
