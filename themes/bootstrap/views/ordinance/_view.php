<?php
/* @var $this OrdinanceController */
/* @var $data Ordinance */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ord_no')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ord_no), array('view', 'id'=>$data->ord_no)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('meeting_ordi_id')); ?>:</b>
	<?php echo CHtml::encode($data->meeting_ordi_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('author')); ?>:</b>
	<?php echo CHtml::encode($data->author); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('imp_agency')); ?>:</b>
	<?php echo CHtml::encode($data->imp_agency); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ordi_file')); ?>:</b>
	<?php echo CHtml::encode($data->ordi_file); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('input_by')); ?>:</b>
	<?php echo CHtml::encode($data->input_by); ?>
	<br />


</div>