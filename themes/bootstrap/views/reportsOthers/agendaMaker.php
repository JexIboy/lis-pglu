
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
    $this->renderPartial('agendaForm',array('model'=>$model));
?>
<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Agendas',
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
Yii::app()->clientScript->registerScript('search', "

$('.search-form form').submit(function(){
    $('#comm-ordi-grid').yiiGridView('update', {
        data: $(this).serialize()
    });
    return false;
});
");
$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'comm-ordi-grid',
		'dataProvider' => $model->search(),
        'filter'=>$model,
		'htmlOptions'=>array('style'=>'width:90%; padding:15px'),
                'template'=>"{items}{pager}",
		'columns' => array (
				 array('header'=>'No.','value'=>'$row+1'),
				 array('name'=>'session_no','value'=>'$data->session_no'),
				 array('name'=>'session_type','value'=>'$data->SessionType'),
				 'session_date',
				 array(	'header'=>'Action',
    'class'=>'CButtonColumn',
    'htmlOptions'=>array('style'=>'width:15%; text-align:center;'),
    'template'=>'{view} {print} {delete}',
    'buttons'=>array
    (
        'print' => array
        (
            'label'=>'',
            'imageUrl'=>false,
            'url'=>'Yii::app()->controller->createUrl("reportsOthers/printAgendaMaker",array("id"=>$data->agenda_id))',
            'options'=>array('class'=>'icon-print','title'=>'Print Agenda'),
        ),

        'view' => array
        (
            'label'=>'',
            'imageUrl'=>false,
            'url'=>'Yii::app()->controller->createUrl("reportsOthers/viewAgenda",array("id"=>$data->agenda_id))',
            'options'=>array('class'=>'icon-eye-open','title'=>'View Agenda'),
        ),

        'delete' => array
        (
            'label'=>'',
            'imageUrl'=>false,
            'url'=>'Yii::app()->controller->createUrl("/agenda/delete",array("id"=>$data->agenda_id))',
            'options'=>array('class'=>'icon-folder-close','title'=>'Move to Archive'),
        ),
    )      
		)
		) 
) );
$this->endWidget(); ?>

