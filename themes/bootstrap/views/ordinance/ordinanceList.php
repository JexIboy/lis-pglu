<?php
/* @var $this CommMeetingOrdiController */
/* @var $model CommMeetingOrdi */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Committee Meeting'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Add old Ordinance', 'url'=>array('addoldordi'),'visible'=>$role == 'SYSAD' ?true:false,),
	array('label'=>'List Ordinance', 'url'=>array('index')),
	array('label'=>'For Ordinance', 'url'=>array('ordinanceList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Ordinance', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);

?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'For Ordinances' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%;',
		) 
) );
?>
<div class="span8">
<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'comm-meeting-ordi-grid',
	'dataProvider'=>$model->forOrdinance(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'htmlOptions'=>array('style'=>'width:100%;'),
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		//'meeting_ordi_id',
		array('header'=>'Control No.','name'=>'ref_id','value'=>'$data->ref->ctrl_no'),
		array('header'=>'Subject Matter','value'=>'Communication::model()->findByPK($data->ref->ctrl_no)->subject_matter'),
		array('header'=>'Action Taken','value'=>'$data->ActionTaken'),
		array('header'=>'Date Meeting','value'=>'$data->date_meeting=="0000-00-00" ? "" : $data->date_meeting'),
		array('header'=>'Public Hearing','value'=>'$data->public_hearing=="0000-00-00" ? "" : $data->public_hearing'),
		/*
		'public_hearing',
		'comm_report',
		'input_by',
		*/
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%; text-align:center;'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,
			'class' => 'bootstrap.widgets.TbButtonColumn','template'=>'{ordinance}',  
			'buttons'=>array(
        		'ordinance' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("ordinance/create",array("id"=>$data->meeting_ordi_id))',
            						'options'=>array('class'=>'icon-share-alt','title'=>'Add Ordinance'),
        			),
    			), 
		),
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->



