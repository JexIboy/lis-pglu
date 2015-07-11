<?php
/* @var $this AgencyController */
/* @var $model Agency */

$this->breadcrumbs=array(
	'Agencies'=>array('index'),
	$model->agency_id,
);

$this->menu=array(
	array('label'=>'List Agency', 'url'=>array('index')),
	array('label'=>'Create Agency', 'url'=>array('create')),
	array('label'=>'Update Agency', 'url'=>array('update', 'id'=>$model->agency_id)),
	array('label'=>'Delete Agency', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->agency_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Agency', 'url'=>array('admin')),
);
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Communication # '.$model->agency_id,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:98%;',
		)   
) );
?>
<br>
<div class="span8">
<?php 

$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'attributes'=>array(
        'agency_id',
		'agency_name',
		'shortname',
		'address',
		'contact_person',
		'contact_num',
    ),
));
?>
</div>

<?php $this->endWidget(); ?>

