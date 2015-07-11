<?php
/* @var $this ResolutionController */
/* @var $model Resolution */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Resolutions'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Add old Resolution', 'url'=>array('addoldreso'),'visible'=>$role == 'SCR-SYSAD'),
	array('label'=>'List Resolution', 'url'=>array('admin')),
	array('label'=>'For Resolution', 'url'=>array('resolutionList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Resolution', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);
?>


<?php $this->renderPartial('_form', array('model'=>$model,'count'=>$count,'id'=>$id)); ?>