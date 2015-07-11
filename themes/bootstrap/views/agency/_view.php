<?php
/* @var $this AgencyController */
/* @var $data Agency */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('agency_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->agency_id), array('view', 'id'=>$data->agency_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('agency_name')); ?>:</b>
	<?php echo CHtml::encode($data->agency_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('shortname')); ?>:</b>
	<?php echo CHtml::encode($data->shortname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('address')); ?>:</b>
	<?php echo CHtml::encode($data->address); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contact_person')); ?>:</b>
	<?php echo CHtml::encode($data->contact_person); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('contact_num')); ?>:</b>
	<?php echo CHtml::encode($data->contact_num); ?>
	<br />


</div>