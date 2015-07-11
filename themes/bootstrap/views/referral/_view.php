<?php
/* @var $this ReferralController */
/* @var $data Referral */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ref_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ref_id), array('view', 'id'=>$data->ref_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ctrl_no')); ?>:</b>
	<?php echo CHtml::encode($data->ctrl_no); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_referred')); ?>:</b>
	<?php echo CHtml::encode($data->date_referred); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('lead_committee')); ?>:</b>
	<?php echo CHtml::encode($data->lead_committee); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('joint_committee')); ?>:</b>
	<?php echo CHtml::encode($data->joint_committee); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ind_letter')); ?>:</b>
	<?php echo CHtml::encode($data->ind_letter); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('input_by')); ?>:</b>
	<?php echo CHtml::encode($data->input_by); ?>
	<br />


</div>