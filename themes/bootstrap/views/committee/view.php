<?php
/* @var $this CommitteeController */
/* @var $model Committee */

$this->breadcrumbs=array(
	'Committees'=>array('index'),
	$model->comm_id,
);

$this->menu=array(
	array('label'=>'List Committee', 'url'=>array('index')),
	array('label'=>'Add Committee', 'url'=>array('create')),
	array('label'=>'Update Committee', 'url'=>array('update', 'id'=>$model->comm_id)),
	array('label'=>'Delete Committee', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->comm_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Committee', 'url'=>array('admin')),
);
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Committee # '.$model->comm_id,
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
        'comm_id',
		'comm_name',
		'shortname',
		array('name'=>'chairman','value'=>$model->chairman0->Fullname),
		array('name'=>'v_chairman','value'=>$model->vChairman->Fullname),
		array('name'=>'members','value'=>$model->CMembers)
    ),
));
?>
</div>

<?php $this->endWidget(); ?>
