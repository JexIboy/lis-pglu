<?php
$model= new resolution;
/* @var $this ResolutionController */
/* @var $model Resolution */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Resolutions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Resolution', 'url'=>array('admin')),
	array('label'=>'For Resolution', 'url'=>array('resolutionList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Resolution', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);
?>


<?php $this->renderPartial('_form2', array('model'=>$model)); ?>