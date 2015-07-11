<?php
/* @var $this EmployeeController */
/* @var $data Employee */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('emp_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->emp_id), array('view', 'id'=>$data->emp_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('emp_fname')); ?>:</b>
	<?php echo CHtml::encode($data->emp_fname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('emp_mname')); ?>:</b>
	<?php echo CHtml::encode($data->emp_mname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('emp_lname')); ?>:</b>
	<?php echo CHtml::encode($data->emp_lname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('position')); ?>:</b>
	<?php echo CHtml::encode($data->position); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dept_id')); ?>:</b>
	<?php echo CHtml::encode($data->dept_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contact_num')); ?>:</b>
	<?php echo CHtml::encode($data->contact_num); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('email_add')); ?>:</b>
	<?php echo CHtml::encode($data->email_add); ?>
	<br />

	*/ ?>

</div>