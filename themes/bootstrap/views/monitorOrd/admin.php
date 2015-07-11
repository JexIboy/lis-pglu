<?php
/* @var $this TrackOrdController */
/* @var $model TrackOrd */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Reports'=>array('reportsOthers/commReportMonthly'),
	'Monitoring Ordinance'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Monitoring Ordinance', 'url'=>array('admin')),
	array('label'=>'Add Monitoring Ordinance', 'url'=>array('create'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#monitor-ord-grid').yiiGridView('update', {
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


<div class="span9" style="margin-left:0%;">

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Search Agency Action' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',

                                'style'=>'width:120%;',
		) 
) );
?>
<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'monitor-ord-grid',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('name'=>'ord_no','type'=>'raw',
			'value'=>'CHtml::link($data->ord_no,array("monitorOrd/downloadOrdinance","id"=>$data->ord_no))',
			'htmlOptions'=>array('style'=>'width:15%;')),
		array('name'=>'subj_matter','value'=>'$data->subj_matter','htmlOptions'=>array('style'=>'width:25%')),
		array('header'=>'Agency','value'=>'$data->agency->agency_name','htmlOptions'=>array('style'=>'width:20%;')),
		array('header'=>'Status','value'=>'$data->Status','htmlOptions'=>array('style'=>'width:20%;')),
		//'problems_encountered',
		//'recommendation',
		array('name'=>'last_updated','value'=>'$data->last_updated','htmlOptions'=>array('style'=>'width:20%;')),
		/*
		'date_furnished',
		'track_id',
		'date_received',
		'input_by',
		'monitor_form',
		*/
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%; text-align:center;'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,
			'class' => 'bootstrap.widgets.TbButtonColumn' ,'template'=>$role=='SYSAD'? '{view}{update}{delete}':'{view}{update}', 
			'buttons'=>array(
        		'delete' => array(
            		'label'=>'Move to Archive',
        			),
    			), 
		),
	),
));
?>
</div><!-- form -->
<?php $this->endWidget(); ?>



