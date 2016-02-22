<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
/* @var $form CActiveForm */

?>

<div class="form">

<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Committee Meeting' : 'Update Committee Meeting'.' # '.$model->meeting_reso_id ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:98%;',
		) 
) );
?>
<br>
<div class="span8">
<div class="form">

<?php

$form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
		'id' => 'comm-meeting-reso-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'ref_id',array('class'=>'span2','maxlength'=>50,'readOnly'=>true, 'value'=>$model->isNewRecord? $id: $model->ref_id)); ?>

	<?php echo $form->textAreaRow($model, 'subject_matter', array('class'=>'span6', 'rows'=>5,'readOnly'=>true,)); ?>

	<?php echo $form->dropDownListRow($model,'action_taken',array(0=>'Pending',1=>'Approved',2=>'Return to Origin'),array('class'=>'span3'));?>

	<?php echo $form->datepickerRow($model, 'date_meeting',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
	<?php
	if($model->isNewRecord){}else{ ?>
	<?php echo $form->datepickerRow($model, 'comm_report',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
    <?php echo $form->fileFieldRow($model, 'comm_rep_file'); ?>
	<?php } ?>
	
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
</div>
<script type="text/javascript">    
    
    $(document).ready(function(){
    	$.get("themes/bootstrap/views/commMeetingReso/_viewDetails.php",
                  "ref_id="+$("[id*=ref_id]").val(),
                 function(html){
                     output=html.toString().split("é");
                     $("[id*=subject_matter]").val(output[0]);
                     $("[id*=ref_id]").val(output[1]);
                 });
        
        
      });
      
</script>