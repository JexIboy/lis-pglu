<?php
/* @var $this ForumQuestionController */
/* @var $model ForumQuestion */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Topic' : 'Update Topic'.' # '.$model->id ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:100%;',
		) 
) );
?>
<br>
<div class="span8">
<div class="form">

<?php

$form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
		'id' => 'forum-question-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textAreaRow($model, 'topic', array('class'=>'span6', 'rows'=>5)); ?>

	<?php echo $form->textAreaRow($model, 'detail', array('class'=>'span6', 'rows'=>5)); ?>

	<?php echo $form->textFieldRow($model,'name',array('class'=>'span6')); ?>

	<?php echo $form->textFieldRow($model,'email',array('class'=>'span6')); ?>
	
	<div class="form-actions">
	<?php
	
        $this->widget ( 'bootstrap.widgets.TbButton', array (
			'buttonType' => 'submit',
			'type' => 'primary',
			'label' => $model->isNewRecord ? 'Submit' : 'Save' 
	));


	?>
</div>

<?php $this->endWidget(); ?>

<?php $this->endWidget(); ?>

</div><!-- form -->
</div>