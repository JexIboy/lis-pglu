<?php
/* @var $this CommunicationController */
/* @var $model Communication */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Communications'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Communication', 'url'=>array('admin')),
	array('label'=>'Add Communication', 'url'=>array('create'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,),
	array('label'=>'Communications for Referral', 'url'=>array('viewTypeComm'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Communications', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,)
);
?>


<?php $this->renderPartial('_form', array('model'=>$model,'count'=>$count)); ?>