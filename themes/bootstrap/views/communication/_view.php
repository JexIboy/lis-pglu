<?php
/* @var $this CommunicationController */
/* @var $data Communication */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ctrl_no')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ctrl_no), array('view', 'id'=>$data->ctrl_no)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('subject_matter')); ?>:</b>
	<?php echo CHtml::encode($data->subject_matter); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_received')); ?>:</b>
	<?php echo CHtml::encode($data->date_received); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cat_id')); ?>:</b>
	<?php echo CHtml::encode($data->cat_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('orig_id')); ?>:</b>
	<?php echo CHtml::encode($data->orig_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('input_by')); ?>:</b>
	<?php echo CHtml::encode($data->input_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comm_letter')); ?>:</b>
	<?php echo CHtml::encode($data->comm_letter); ?>
	<br />


</div>