<?php
/* @var $this ReferralController */
/* @var $model Referral */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Referrals'=>array('index'),
	$model->ref_id,
);

$this->menu=array(
	array('label'=>'List Referral', 'url'=>array('admin')),
	array('label'=>'Communications for Referral','url'=>array('referralList'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,),
	array('label'=>'Update Referral', 'url'=>array('update', 'id'=>$model->ref_id)),
	array('label'=>'Delete Referral', 'url'=>'#','visible'=> $role=='SYSAD'? true:false, 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ref_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'View Archived Referrals', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,)
);
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Referral # '.$model->ref_id,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:98%;',
		)   
) );
?>
<br>
<div class="span8">
<?php 

$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'attributes'=>array(
        'ref_id',
		'ctrl_no',
		'date_referred',
		 array('name'=>'lead_committee','value'=>$model->leadCommittee->comm_name),
		array('name'=>'joint_committee','value'=>$model->JointsView),
		array('name'=>'ind_letter','type'=>'raw','value'=>CHtml::link($model->ind_letter,array("referral/download","id"=>$model->ref_id))),
		array('name'=>'input_by','value'=>$model->inputBy->Fullname),
    ),
));
?>
</div>

<?php $this->endWidget(); ?>
