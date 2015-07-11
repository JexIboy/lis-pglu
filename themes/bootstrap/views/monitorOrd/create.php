<?php
/* @var $this TrackOrdController */
/* @var $model TrackOrd */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Reports'=>array('reportsOthers/commReportMonthly'),
	'Monitoring Ordinance'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Monitoring Ordinance', 'url'=>array('index')),
	array('label'=>'Add Monitoring Ordinance', 'url'=>array('create'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);
?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>