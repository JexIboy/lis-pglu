<?php
/* @var $this CommitteeController */
/* @var $data Committee */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('comm_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->comm_id), array('view', 'id'=>$data->comm_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comm_name')); ?>:</b>
	<?php echo CHtml::encode($data->comm_name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('shortname')); ?>:</b>
	<?php echo CHtml::encode($data->shortname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('chairman')); ?>:</b>
	<?php echo CHtml::encode($data->chairman); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('v_chairman')); ?>:</b>
	<?php echo CHtml::encode($data->v_chairman); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('members')); ?>:</b>
	<?php echo CHtml::encode($data->members); ?>
	<br />


</div>