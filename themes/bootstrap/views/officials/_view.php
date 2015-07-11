<?php
/* @var $this OfficialsController */
/* @var $data Officials */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('off_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->off_id), array('view', 'id'=>$data->off_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('emp_id')); ?>:</b>
	<?php echo CHtml::encode($data->emp_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('start_date')); ?>:</b>
	<?php echo CHtml::encode($data->start_date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('end_date')); ?>:</b>
	<?php echo CHtml::encode($data->end_date); ?>
	<br />


</div>