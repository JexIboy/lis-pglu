<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Committee Meeting'=>array('index'),
	$model->meeting_reso_id=>array('view','id'=>$model->meeting_reso_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Committee Meeting', 'url'=>array('admin')),
	array('label'=>'For Committee Meeting', 'url'=>array('commMeetingList'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Committee Meeting', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,)
);
?>


<?php $this->renderPartial('_form', array('model'=>$model)); ?>