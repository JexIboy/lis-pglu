<?php
/* @var $this ResolutionController */
/* @var $data Resolution */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('res_no')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->res_no), array('view', 'id'=>$data->res_no)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ctrl_no')); ?>:</b>
	<?php echo CHtml::encode($data->ctrl_no); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('author')); ?>:</b>
	<?php echo CHtml::encode($data->author); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('reso_file')); ?>:</b>
	<?php echo CHtml::encode($data->reso_file); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('input_by')); ?>:</b>
	<?php echo CHtml::encode($data->input_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date_passed')); ?>:</b>
	<?php echo CHtml::encode($data->date_passed); ?>
	<br />


</div>