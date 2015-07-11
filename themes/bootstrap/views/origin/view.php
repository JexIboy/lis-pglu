<?php
/* @var $this OriginController */
/* @var $model Origin */

$this->breadcrumbs=array(
	'Origins'=>array('index'),
	$model->orig_id,
);

$this->menu=array(
	array('label'=>'List Origin', 'url'=>array('index')),
	array('label'=>'Add Origin', 'url'=>array('create')),
	array('label'=>'Update Origin', 'url'=>array('update', 'id'=>$model->orig_id)),
	array('label'=>'Delete Origin', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->orig_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Origin', 'url'=>array('admin')),
);
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Origin # '.$model->orig_id,
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
        'orig_id',
		'orig_name',
		'shortname',
		'contact_person',
		'contact_num',
    ),
));
?>
</div>

<?php $this->endWidget(); ?>
