<?php
/* @var $this CommMeetingOrdiController */
/* @var $data CommMeetingOrdi */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('meeting_ordi_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->meeting_ordi_id), array('view', 'id'=>$data->meeting_ordi_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ref_id')); ?>:</b>
	<?php echo CHtml::encode($data->ref_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('action_taken')); ?>:</b>
	<?php echo CHtml::encode($data->action_taken); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_meeting')); ?>:</b>
	<?php echo CHtml::encode($data->date_meeting); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('public_hearing')); ?>:</b>
	<?php echo CHtml::encode($data->public_hearing); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comm_report')); ?>:</b>
	<?php echo CHtml::encode($data->comm_report); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('input_by')); ?>:</b>
	<?php echo CHtml::encode($data->input_by); ?>
	<br />


</div>