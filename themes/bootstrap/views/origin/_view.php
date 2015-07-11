<?php
/* @var $this OriginController */
/* @var $data Origin */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('orig_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->orig_id), array('view', 'id'=>$data->orig_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('orig_name')); ?>:</b>
	<?php echo CHtml::encode($data->orig_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('shortname')); ?>:</b>
	<?php echo CHtml::encode($data->shortname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contact_person')); ?>:</b>
	<?php echo CHtml::encode($data->contact_person); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contact_num')); ?>:</b>
	<?php echo CHtml::encode($data->contact_num); ?>
	<br />


</div>