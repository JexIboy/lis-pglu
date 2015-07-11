<?php
/* @var $this ReferralController */
/* @var $model Referral */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Committee Meeting'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Committee Meeting', 'url'=>array('admin')),
	array('label'=>'For Committee Meeting', 'url'=>array('commMeetingList')),
	array('label'=>'View Archived Committee Meeting', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,)
);


?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'For Committee Meetings' ,
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
        'id'=>'referral-grid',
	'dataProvider'=>$model->forCommMeetingOrdi(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('name'=>'ctrl_no','value'=>'$data->ctrl_no'),
		//'date_referred',
		array('header'=>'Subject Matter','value'=>'$data->ctrlNo->subject_matter','htmlOptions'=>array('style'=>'width:40%;')),
		array('header'=>'Lead Committee','value'=>'$data->leadCommittee->comm_name'),
		//array('header'=>'Joint Committee','value'=>'$data->Joints'),
		/*
		'ind_letter',
		'input_by',
		*/
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%; text-align:center;'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,
			'class' => 'bootstrap.widgets.TbButtonColumn','template'=>'{commMeeting}', 
			'buttons'=>array(
        		'commMeeting' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("commMeetingOrdi/create",array("id"=>$data->ref_id))',
            						'options'=>array('class'=>'icon-share-alt','title'=>'Add to Committee Meeting'),
        			),
    			), 

		),
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->