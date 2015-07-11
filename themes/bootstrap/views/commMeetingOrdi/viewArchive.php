<?php
/* @var $this CommMeetingOrdiController */
/* @var $model CommMeetingOrdi */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Committee Meeting'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Committee Meeting', 'url'=>array('admin')),
	array('label'=>'For Committee Meeting', 'url'=>array('commMeetingList'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,)
);

Yii::app()->clientScript->registerScript('viewArchive', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#comm-meeting-ordi-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>




<?php echo CHtml::link('Advanced Search','#',array('class'=>'btn search-button btn-success','style'=>'color:white;')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Search Archived Committee Meeting' ,
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
	'dataProvider'=>$model->viewArchive(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'htmlOptions'=>array('style'=>'width:100%;'),
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		//'meeting_ordi_id',
		array('header'=>'Control No.','name'=>'meeting_ordi_id','type'=>'raw','value'=>'CHtml::link($data->ref->ctrl_no,array("commMeetingOrdi/download","id"=>$data->meeting_ordi_id))'),
		array('header'=>'Subject Matter','value'=>'Communication::model()->findByPK($data->ref->ctrl_no)->subject_matter'),
		array('name'=>'action_taken','value'=>'$data->ActionTaken'),
		'date_meeting',
		/*
		'public_hearing',
		'comm_report',
		'input_by',
		*/
		array(	'header'=>'Action','class'=>'CButtonColumn','template'=>'{viewArchive} {view}',
    		'buttons'=>array(
    				'view'=>array(
    					'label'=>'',
    					'imageUrl'=>false,
    					'options'=>array(
    						'class'=>'icon-search',
    						'title'=>'View'
    						),
    					),
        			'viewArchive' => array(
            			'label'=>'',
            			'imageUrl'=>false,
            			'url'=>'Yii::app()->controller->createUrl("commMeetingOrdi/retrieve",array("id"=>$data->meeting_ordi_id))',
            			'options'=>array('ajax' => array('type' => 'get', 'url'=>'js:$(this).attr("href")', 'success' => 'js:function(data) { $.fn.yiiGridView.update("comm-meeting-ordi-grid")}'),'class'=>'delete icon-circle-arrow-left', 'title'=>'Retrieve'),
        			),
    			)      
		) 
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->



