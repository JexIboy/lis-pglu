<?php
/* @var $this AgencyController */
/* @var $model Agency */
/* @var $form CActiveForm */
?>
<script type="text/javascript">    
$(document).ready(function() {
    var text_max = 500;
    $('#textarea_feedback').html(text_max + ' characters remaining');

    $("[id*=a_answer]").keyup(function() {
        var text_length = $("[id*=a_answer]").val().length;
        var text_remaining = text_max - text_length;

        $('#textarea_feedback').html(text_remaining + ' characters remaining');
    });
});
</script>
<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' =>'Reply/Comment',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:95%;',
		) 
) );
?>
<br>
<div class="form">

<?php

$form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
		'id' => 'add-answer-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data','style'=>'margin-left:0%;'),
) );
?>

	<p class="note" id="requiredation" style="margin-left:3%;">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($modelAnswer); ?>

	<?php echo $form->textFieldRow($modelAnswer,'a_name',array('class'=>'span2')); ?>
	<?php echo $form->textFieldRow($modelAnswer,'a_email',array('class'=>'span2')); ?>
    
    <?php echo $form->textAreaRow($modelAnswer, 'a_answer', array('maxLength'=>500,'class'=>'span3', 'rows'=>7,'hint'=>'<span style="color:red;">*</span> Maximum of 500 Characters Only
	 																							&nbsp; <div id="textarea_feedback"></div>')); ?> 

	<div class="form-actions">
	<?php
	
        $this->widget ( 'bootstrap.widgets.TbButton', array (
			'buttonType' => 'submit',
			'type' => 'primary',
			'label' => 'Submit',

	));
        $this->widget ( 'bootstrap.widgets.TbButton', array (
			'buttonType' => 'reset',
			'type' => 'warning',
			'label' => 'Reset',
			'htmlOptions'=>array('style'=>'margin-left:1%')
	));


	?>
</div>

<?php $this->endWidget(); ?>



</div><!-- form -->
<?php $this->endWidget(); ?>
