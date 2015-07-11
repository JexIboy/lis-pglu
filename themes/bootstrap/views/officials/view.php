<?php
/* @var $this OfficialsController */
/* @var $model Officials */

$this->breadcrumbs=array(
	'Officials'=>array('index'),
	$model->off_id,
);

$this->menu=array(
	array('label'=>'List Officials', 'url'=>array('index')),
	array('label'=>'Create Officials', 'url'=>array('create')),
	array('label'=>'Update Officials', 'url'=>array('update', 'id'=>$model->off_id)),
	array('label'=>'Delete Officials', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->off_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Officials', 'url'=>array('admin')),
);
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Official # '.$model->off_id,
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
        'off_id',
		array('name'=>'name','value'=>$model->emp->Fullname),
		'start_date',
		'end_date',
		array('label'=>'Email Address','value'=>$model->emp->email_add),
		array('label'=>'Contact Number','value'=>$model->emp->contact_num),
    ),
));
?>
</div>

<?php $this->endWidget(); ?>