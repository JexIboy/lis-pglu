<?php
/* @var $this ReferralController */
/* @var $model Referral */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Referral' : 'Update Referral'.' # '.$model->ref_id ,
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
		'id' => 'referral-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'ctrl_no',array('class'=>'span2','maxlength'=>50,'readOnly'=>true, 'value'=>$model->isNewRecord?$id:$model->ctrl_no)); ?>

	<?php echo $form->textAreaRow($model, 'subject_matter', array('class'=>'span6', 'rows'=>5)); ?>

	<?php echo $form->datepickerRow($model, 'date_referred',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->select2Row($model, 'lead_committee', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Committee::model()->findAll(array('order'=>'comm_name asc')),'comm_id','comm_name'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '       ------------ Select Lead Committee ------------',
                                                                    'options' => array(
                                                                    	
                                                                       'maximumSelectionSize'=> 1 ,
                                                                  'width' => '63%'), 
                                                                    ));?>

    <?php echo $form->select2Row($model, 'joint_committee', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Committee::model()->findAll(array('order'=>'comm_name asc')),'comm_id','comm_name'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '       ------------ Select Joint Committee ------------',
                                                                    'options' => array(
                                                                    	'width' => '63%'), 
                                                                    ));?>

    <?php echo $form->datepickerRow($model, 'duedate',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
    <?php echo $form->fileFieldRow($model, 'ind_letter'); ?>

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
      $.get("themes/bootstrap/views/referral/_viewDetails.php",
                  "ctrl_no="+$("[id*=ctrl_no]").val(),
                 function(html){
                     output=html.toString().split("//");
                     $("[id*=subject_matter]").val(output[0]);
                 });
        
        
      });
      
</script>