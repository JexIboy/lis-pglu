<?php
/* @var $this TrackOrdController */
/* @var $model TrackOrd */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Reports'=>array('reportsOthers/commReportMonthly'),
	'Monitoring Ordinance '=>array('index'),
	$model->monitor_id,
);

$this->menu=array(
	array('label'=>'List Monitoring Ordinance', 'url'=>array('index')),
	array('label'=>'Add Monitoring Ordinance', 'url'=>array('create'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'Update Monitoring Ordinance', 'url'=>array('update', 'id'=>$model->monitor_id)),
	array('label'=>'Delete Monitoring Ordinance', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->monitor_id),'confirm'=>'Are you sure you want to delete this item?')),
	
);
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Monitoring Ordinance ID # '.$model->monitor_id,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%;',
		) 
) );
?>
<br>
<div class="span8">
<?php 

$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'attributes'=>array(
        'monitor_id',
		array('name'=>'ord_no','type'=>'raw',
			'value'=>CHtml::link($model->ord_no,array("monitorOrd/downloadOrdinance","id"=>$model->ord_no)),),
		'subj_matter',
		array('name'=>'agency_id','value'=>$model->agency->agency_name),
		'date_furnished',
		array('name'=>'status','value'=>$model->Status),
		'action_taken',
		'recommendation',
		'problems_encountered',
		'date_received',
		array('name'=>'monitor_form','type'=>'raw','value'=>CHtml::link($model->monitor_form,array("monitorOrd/download","id"=>$model->monitor_id))),
		array('name'=>'input_by','value'=>$model->inputBy->Fullname),
		'last_updated',
    ),
));
?>
</div>

<?php $this->endWidget(); ?>



