<script type="text/javascript">    
$(document).ready(function() {
    var text_max = 500;
    $('#textarea_feedback').html(text_max + ' characters remaining');

    $("[id*=detail]").keyup(function() {
        var text_length = $("[id*=detail]").val().length;
        var text_remaining = text_max - text_length;

        $('#textarea_feedback').html(text_remaining + ' characters remaining');
    });
});
</script>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Create Topic' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'margin-left:25%;width:70%;',
		) 
) );
?>
<br>
<div class="span7">
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


	<?php echo $form->textFieldRow($model,'topic',array('class'=>'span5'));?>

	 <?php echo $form->textAreaRow($model, 'detail', array('maxLength'=>500,'class'=>'span5', 'rows'=>7,'hint'=>'<span style="color:red;">*</span> Maximum of 500 Characters Only
	 																							&nbsp; <div id="textarea_feedback"></div>')); ?> 
	
	<?php echo $form->textFieldRow($model,'name',array('class'=>'span2'));?>
	<?php echo $form->textFieldRow($model,'email',array('class'=>'span2'));?>

	<div class="form-actions">
	<?php
	

        $this->widget ( 'bootstrap.widgets.TbButton', array (
			'buttonType' => 'submit',
			'type' => 'primary',
			'label' => $model->isNewRecord ? 'Submit' : 'Save',
     'htmlOptions'=>array('confirm'=>'Do you want to continue?')
	     ));

        $this->widget ( 'bootstrap.widgets.TbButton', array (
      'buttonType' => 'reset',
      'type' => 'warning',
      'label' =>'Reset', 
      'htmlOptions'=>array('style'=>'margin-left:1%;'),
    ));


	?>
</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
</div>
<?php $this->endWidget(); ?>






