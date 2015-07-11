<?php
/* @var $this TrackOrdController */
/* @var $data TrackOrd */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('track_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->track_id), array('view', 'id'=>$data->track_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ord_no')); ?>:</b>
	<?php echo CHtml::encode($data->ord_no); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('agency_id')); ?>:</b>
	<?php echo CHtml::encode($data->agency_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_furnished')); ?>:</b>
	<?php echo CHtml::encode($data->date_furnished); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('remarks')); ?>:</b>
	<?php echo CHtml::encode($data->remarks); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('recommendation')); ?>:</b>
	<?php echo CHtml::encode($data->recommendation); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('problems_encountered')); ?>:</b>
	<?php echo CHtml::encode($data->problems_encountered); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('date_received')); ?>:</b>
	<?php echo CHtml::encode($data->date_received); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('input_by')); ?>:</b>
	<?php echo CHtml::encode($data->input_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('track_form')); ?>:</b>
	<?php echo CHtml::encode($data->track_form); ?>
	<br />

	*/ ?>

</div>