<?php
/* @var $this ActivityController */
/* @var $model Activity */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'act_id'); ?>
		<?php echo $form->textField($model,'act_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'act_desc'); ?>
		<?php echo $form->textField($model,'act_desc',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'act_by'); ?>
		<?php echo $form->textField($model,'act_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'act_datetime'); ?>
		<?php echo $form->textField($model,'act_datetime'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->