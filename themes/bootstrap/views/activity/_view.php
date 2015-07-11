<?php
/* @var $this ActivityController */
/* @var $data Activity */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('act_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->act_id), array('view', 'id'=>$data->act_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('act_desc')); ?>:</b>
	<?php echo CHtml::encode($data->act_desc); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('act_by')); ?>:</b>
	<?php echo CHtml::encode($data->act_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('act_datetime')); ?>:</b>
	<?php echo CHtml::encode($data->act_datetime); ?>
	<br />


</div>