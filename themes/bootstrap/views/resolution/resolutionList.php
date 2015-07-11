<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Committee Meeting'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Add old Resolution', 'url'=>array('addoldreso'),'visible'=>$role == 'SYSAD' ?true:false,),
	array('label'=>'List Resolution', 'url'=>array('index')),
	array('label'=>'For Resolution','url'=>array('resolutionList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Resolution', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);
?>



<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'For Resolutions' ,
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
        'id'=>'comm-meeting-reso-grid',
	'dataProvider'=>$model->forResolution(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		//'meeting_reso_id',
		'ctrl_no',
		array('header'=>'Subject Matter','value'=>'$data->ctrlNo->subject_matter'),
		/*
		'comm_rep_file',
		'comm_meeting_stat',
		*/
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%; text-align:center;','visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
			'class' => 'bootstrap.widgets.TbButtonColumn' ,'template'=>'{resolution}', 
			'buttons'=>array(
        		'resolution' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("resolution/create",array("id"=>$data->ctrl_no))',
            						'options'=>array('class'=>'icon-share-alt','title'=>'Add Resolution'),
        			),
    			), 
		),
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->
