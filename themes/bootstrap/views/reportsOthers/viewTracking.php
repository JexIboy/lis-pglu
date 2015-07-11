
<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Resolutions',
);

$this->menu=array(
    array('label'=>'Create Resolution', 'url'=>array('create')),
    array('label'=>'Manage Resolution', 'url'=>array('admin')),
);
?>
<?php

$this->menu=array(
        array('label'=>'Monthly Committee Reports', 'url'=>array('reportsOthers/commReportMonthly')),
        array('label'=>'Yearly Committee Reports', 'url'=>array('reportsOthers/commReportYearly')),
        //array('label'=>'Agenda Maker', 'url'=>array('reportsOthers/agendaMaker')),
        array('label'=>'Monitor Ordinances', 'url'=>array('monitorOrd/index')),
        array('label'=>'Track Communications', 'url'=>array('reportsOthers/viewTracking')),
);
?>
<?php

Yii::app()->clientScript->registerScript('search', "

$('.search-form form').submit(function(){
	$('#track-communication-for-resolution-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});

$('.search-form form').submit(function(){
	$('#track-communication-for-ordinance-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");

?>
<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Track Communications for Resolution',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                'style'=>'width:126%; text-align:center;',
		),
               		
		
)
 );
?>

<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'track-communication-for-resolution-grid',
		'dataProvider' => $forResolution->forResolution(),
		'filter'=>Communication::model(),
		'htmlOptions'=>array('style'=>'padding:15px','style'=>'width:100%;'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array('name'=>'ctrl_no','value'=>'$data->ctrl_no','htmlOptions'=>array('style'=>'width:10%;'),),
				array('header'=>'Agenda Date','value'=>'$data->date_agenda'),
				array('header'=>'Origin','filter' => CHtml::listData(Origin::model()->findAll(),'orig_id','orig_name'),'value'=>'$data->orig->orig_name'),
				array('name'=>'subject_matter','value'=>'$data->subject_matter','htmlOptions'=>array('style'=>'width:20%;'),),
				array('header'=>'Date Referred','value'=>' $data->getReferral($data->ctrl_no)'),
				array('header'=>'Date Meeting/s','value'=>'$data->getCommMeetings($data->ctrl_no)'),
				array('header'=>'Action Taken','value'=>'$data->getActionTaken($data->ctrl_no)'),
				array('header'=>'Date Reported','value'=>'$data->getCommReport($data->ctrl_no)'),
				array('header'=>'Ordinance/Resolution No.','value'=>'$data->getTitle($data->ctrl_no)'),
                               
				
		) 
) );
?>



<?php $this->endWidget();?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Track Communications for Ordinance',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                'style'=>'width:126%; text-align:center;',
		),
               		
		
)
 );
?>

<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'track-communication-for-ordinance-grid',
		'dataProvider' => $forOrdinance->forOrdinance(),
		'filter'=>$forOrdinance,
		'htmlOptions'=>array('style'=>'padding:15px','style'=>'width:100%;'),
                'template'=>"{items}{pager}",
		'columns' => array (
				'ctrl_no',
				array('header'=>'Agenda Date','value'=>'$data->date_agenda'),
				array('header'=>'Origin','value'=>'$data->orig->orig_name'),
				array('header'=>'Subject Matter','value'=>'$data->subject_matter'),
				array('header'=>'Date Referred','value'=>' $data->getReferral($data->ctrl_no)'),
				array('header'=>'Date Meeting/s','value'=>'$data->getCommMeetings($data->ctrl_no)'),
				array('header'=>'Action Taken','value'=>'$data->getActionTaken($data->ctrl_no)'),
				array('header'=>'Date Reported','value'=>'$data->getCommReport($data->ctrl_no)'),
				array('header'=>'Ordinance/Resolution No.','value'=>'$data->getTitle($data->ctrl_no)'),
                               
				
		) 
) );
?>



<?php $this->endWidget();?>