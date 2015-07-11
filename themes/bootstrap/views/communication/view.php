
<?php
/* @var $this CommunicationController */
/* @var $model Communication */

$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Communications'=>array('index'),
	$model->ctrl_no,
);

$this->menu=array(
	array('label'=>'List Communication', 'url'=>array('admin')),
	array('label'=>'Add Communication', 'url'=>array('create')),
	array('label'=>'Update Communication', 'url'=>array('update', 'id'=>$model->ctrl_no)),
	array('label'=>'Communications for Referral', 'url'=>array('viewTypeComm'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,),
	array('label'=>'Delete Communication', 'url'=>'#','visible'=> $role=='SYSAD'? true:false, 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ctrl_no),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'View Archived Communications', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,)
);
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Communication # '.$model->ctrl_no,
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
        'ctrl_no',
		'subject_matter',
		'date_received',
		array('name'=>'cat_id','value'=>$model->cat->cat_name),
		//array('name'=>'type_comm','value'=>$model->type_comm == 1? 'Not Urgent':'Urgent'),
		array('name'=>'orig_id','value'=>$model->orig->orig_name),
		'date_agenda',
		array('name'=>'input_by','value'=>$model->inputBy->Fullname),
		array('name'=>'comm_letter','type'=>'raw','value'=>CHtml::link($model->comm_letter,array("communication/download","id"=>$model->ctrl_no))),
    ),
));
?>
</div>

<?php $this->endWidget(); ?>

