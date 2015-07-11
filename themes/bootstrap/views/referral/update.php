<?php
/* @var $this ReferralController */
/* @var $model Referral */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Referrals'=>array('index'),
	$model->ref_id=>array('view','id'=>$model->ref_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Referral', 'url'=>array('admin')),
	array('label'=>'Communications for Referral','url'=>array('referralList'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Referrals', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,)
);
?>


<?php $this->renderPartial('_form', array('model'=>$model)); ?>