<?php
/* @var $this EmployeeController */
/* @var $model Employee */

$this->breadcrumbs=array(
	'Employees'=>array('index'),
	$model->emp_id,
);

$this->menu=array(
	array('label'=>'List Employee', 'url'=>array('index')),
	array('label'=>'Create Employee', 'url'=>array('create')),
	array('label'=>'Update Employee', 'url'=>array('update', 'id'=>$model->emp_id)),
	array('label'=>'Delete Employee', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->emp_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Employee', 'url'=>array('admin')),
);
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Employee # '.$model->emp_id,
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
        'emp_id',
		'emp_fname',
		'emp_mname',
		'emp_lname',
		array('name'=>'position','value'=>$model->position0->pos_name),
		array('name'=>'dept_id','value'=>$model->dept->dept_name),
		'contact_num',
		'email_add',
    ),
));
?>
</div>

<?php $this->endWidget(); ?>
