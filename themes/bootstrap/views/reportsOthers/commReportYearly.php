

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

<?php $this->renderPartial('searchCommReportYearly',array(
	'comm_name'=>$comm_name,
        'year'=>$year
)); ?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Committee Resolution Report',
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
		'id' => 'comm-report-yearly-grid',
		'dataProvider' => $dataProviderReso,
		'htmlOptions'=>array('style'=>'padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array('header'=>'Control No.','value'=>'$data->ControlNumber'),
				array('header'=>'Subject Matter','value'=>'$data->ref->ctrlNo->subject_matter', 'htmlOptions'=>array('style'=>'width:50%;'),),
				'comm_report',
				'ActionTaken'
                               
				
		) 
) );
?>



<?php $this->endWidget();?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Committee Ordinance Report',
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
		'id' => 'comm-report-yearly-grid',
		'dataProvider' => $dataProviderOrd,
		'htmlOptions'=>array('style'=>'padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				array('header'=>'Control No.','value'=>'$data->ControlNumber'),
				array('header'=>'Subject Matter','value'=>'$data->ref->ctrlNo->subject_matter'),
				'comm_report',
				'ActionTaken'
                               
				
		) 
) );
?>



<?php $this->endWidget();?>

