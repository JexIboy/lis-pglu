<?php
/* @var $this TrackOrdController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Track Ords',
);

$this->menu=array(
	array('label'=>'Create TrackOrd', 'url'=>array('create')),
	array('label'=>'Manage TrackOrd', 'url'=>array('admin')),
);
?>

<h1>Track Ords</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
