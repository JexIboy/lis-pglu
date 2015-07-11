<?php
/* @var $this OrdinanceController */
/* @var $model Ordinance */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Ordinances'=>array('index'),
	$model->ord_no=>array('view','id'=>$model->ord_no),
	'Update',
);

$this->menu=array(
	array('label'=>'List Ordinance', 'url'=>array('admin')),
	array('label'=>'For Ordinance','url'=>array('ordinanceList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Ordinance', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);
?>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>