<?php
/* @var $this SysbackupController */
/* @var $model Sysbackup */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'db_id'); ?>
		<?php echo $form->textField($model,'db_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'db_name'); ?>
		<?php echo $form->textField($model,'db_name',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'date_backed_up'); ?>
		<?php echo $form->textField($model,'date_backed_up'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'backed_up_by'); ?>
		<?php echo $form->textField($model,'backed_up_by',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->