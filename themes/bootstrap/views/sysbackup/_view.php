<?php
/* @var $this SysbackupController */
/* @var $data Sysbackup */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('db_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->db_id), array('view', 'id'=>$data->db_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('db_name')); ?>:</b>
	<?php echo CHtml::encode($data->db_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_backed_up')); ?>:</b>
	<?php echo CHtml::encode($data->date_backed_up); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('backed_up_by')); ?>:</b>
	<?php echo CHtml::encode($data->backed_up_by); ?>
	<br />


</div>