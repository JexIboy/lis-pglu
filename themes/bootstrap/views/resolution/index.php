<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Resolutions',
);

$this->menu=array(
	array('label'=>'Create Resolution', 'url'=>array('create')),
	array('label'=>'Manage Resolution', 'url'=>array('admin')),
);
?>

<h1>Resolutions</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
