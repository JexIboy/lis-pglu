<?php
/* @var $this SysbackupController */
/* @var $model Sysbackup */

$this->breadcrumbs=array(
	'Sysbackups'=>array('index'),
	$model->db_id,
);

$this->menu=array(
	array('label'=>'List Sysbackup', 'url'=>array('index')),
	array('label'=>'Create Sysbackup', 'url'=>array('create')),
	array('label'=>'Update Sysbackup', 'url'=>array('update', 'id'=>$model->db_id)),
	array('label'=>'Delete Sysbackup', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->db_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Sysbackup', 'url'=>array('admin')),
);
?>

<h1>View Sysbackup #<?php echo $model->db_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'db_id',
		'db_name',
		'date_backed_up',
		'backed_up_by',
	),
)); ?>
