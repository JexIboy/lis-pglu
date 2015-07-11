
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
        array('label'=>'Agenda Maker', 'url'=>array('reportsOthers/agendaMaker')),
        array('label'=>'Monitor Ordinances', 'url'=>array('monitorOrd/index')),
        array('label'=>'Track Communications', 'url'=>array('reportsOthers/viewTracking')),
);
?>
<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		//'id' => 'agenda-maker-grid',
		'title' => 'Communications',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; text-align:center;',
		),
               		
		
)
 );
?>

<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'comm-grid',
		'dataProvider' => $communication,
		'htmlOptions'=>array('style'=>'width:90%; padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array (	'header' => 'Control No.','value' => '$data->ctrl_no','htmlOptions'=>array('width'=>'20%')),
                array (	'header' => 'Subject Matter','value' => '$data->subject_matter','htmlOptions'=>array('width'=>'60%')),
                array (	'header' => 'Date Received','value' => '$data->date_received','htmlOptions'=>array('width'=>'20%')),
                               
				
		) 
) );
$this->endWidget(); ?>
<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Committee Reports for Resolutions',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; text-align:center;',
		),
               		
		
)
 );
?>

<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'comm-reso-grid',
		'dataProvider' => $resoMeeting,
		'htmlOptions'=>array('style'=>'width:90%; padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array (	'header' => 'Control No.','value' => '$data->ControlNumber','htmlOptions'=>array('width'=>'20%')),
               array (	'header' => 'Subject Matter','value' => '$data->CommDetails->subject_matter','htmlOptions'=>array('width'=>'60%')),
                array (	'header' => 'Date Received','value' => '$data->getCommDetails()->date_received','htmlOptions'=>array('width'=>'20%')),
                               
				
		) 
) );
$this->endWidget(); ?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Committee Reports for Ordinances',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; text-align:center;',
		),
               		
		
)
 );
?>

<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'comm-ordi-grid',
		'dataProvider' => $ordMeeting,
		'htmlOptions'=>array('style'=>'width:90%; padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array (	'header' => 'Control No.','value' => '$data->ControlNumber','htmlOptions'=>array('width'=>'20%')),
               array (	'header' => 'Subject Matter','value' => '$data->CommDetails->subject_matter','htmlOptions'=>array('width'=>'60%')),
                array (	'header' => 'Date Received','value' => '$data->getCommDetails()->date_received','htmlOptions'=>array('width'=>'20%')),
                               
				
		) 
) );
$this->endWidget(); ?>