<?php
/* @var $this ReferralController */
/* @var $model Referral */
/* @var $form CActiveForm */
?>

<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Committee Meeting' : 'Update Committee Meeting'.' # '.$model->meeting_ordi_id ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:853px;',
		) 
) );
?>
<br>
<div class="span8">
<div class="form">

<?php

$form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
		'id' => 'comm-meeting-ordi-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'ref_id',array('class'=>'span2','maxlength'=>50, 'value'=>$model->isNewRecord? $id: $model->ref_id)); ?>

	<?php echo $form->textAreaRow($model, 'subject_matter', array('class'=>'span6', 'rows'=>5)); ?>

	<?php echo $form->dropDownListRow($model,'action_taken',array(0=>'Pending',1=>'Approved',2=>'Return to Origin'),array('class'=>'span3','empty'=>'Choose an Action'));?>

	<?php echo $form->datepickerRow($model, 'date_meeting',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
	<?php echo $form->datepickerRow($model, 'public_hearing',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
    
	<?php if($model->isNewRecord){}else{?>
	<?php if(empty($model->comm_report)){}else{?>
	
    <?php echo $form->datepickerRow($model, 'comm_report',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
    <?php echo $form->fileFieldRow($model, 'comm_rep_file'); ?>
	<?php }} ?>
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

<?php $this->endWidget(); ?>

</div><!-- form -->
</div>
<script type="text/javascript">    
    
	$(document).ready(function(){
		$.ajax({
			url  : 'index.php?r=commMeetingOrdi/getCommDetails',
			data : {ref_id : $("[id*=ref_id]").val()},
			dataType : 'json',
			success : function (result) {
				$("#CommMeetingOrdi_subject_matter").val(result.subject_matter);
	            $("#CommMeetingOrdi_ref_id").val(result.ref_id);
			}
		});     
	    
	});
      
</script>