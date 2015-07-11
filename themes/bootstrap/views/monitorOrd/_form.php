<?php
/* @var $this TrackOrdController */
/* @var $model TrackOrd */
/* @var $form CActiveForm */
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Monitor Ordinance' : 'Update Monitor Ordinance'.' # '.$model->monitor_id ,
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
		'id' => 'monitor-ord-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
	<?php if($model->isNewRecord){?>
	<?php echo $form->dropDownListRow($model,'ord_no',CHtml::listData(Ordinance::model()->findAll(),'ord_no','ord_no'),array('empty'=>'----- Choose Ordinance -----'));?>
	<?php }else{?>
	<?php echo $form->textFieldRow($model, 'ord_no',array('readOnly'=>true,'value'=>$model->ord_no)); ?>
	<?php echo $form->textFieldRow($model, 'last_updated',array('readOnly'=>true,'prepend'=>'<i class="icon-calendar"></i>','value'=>$model->last_updated)); ?>
	<?php }?>

	
	<?php echo $form->textAreaRow($model, 'subj_matter', array('readOnly'=>true,'class'=>'span6', 'rows'=>5,'value'=>$model->isNewRecord? :$model->subj_matter)); ?> 

	<?php echo $form->select2Row($model, 'agency_id', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Agency::model()->findAll(),'agency_id','agency_name'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '           ------------ Select Agency ------------',
                                                                    'options' => array(
                                                                    	
                                                                       'maximumSelectionSize'=> 1 ,
                                                                  'width' => '63%'), 
                                                                    ));?>

 	<?php echo $form->dropDownListRow($model,'status',array(0=>'Implemented',1=>'Partially Implemented',2=>'Not Implemented'),array('empty'=>'----- Choose Status -----'));?>                                                                 

	<?php echo $form->datepickerRow($model, 'date_furnished',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->textAreaRow($model, 'action_taken', array('class'=>'span6', 'rows'=>5)); ?> 

	<?php echo $form->textAreaRow($model, 'problems_encountered', array('class'=>'span6', 'rows'=>5)); ?> 

	<?php echo $form->textAreaRow($model, 'recommendation', array('class'=>'span6', 'rows'=>5)); ?> 

	<?php echo $form->datepickerRow($model, 'date_received',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->fileFieldRow($model,'monitor_form'); ?>

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
        $("#MonitorOrd_ord_no").change(function(){
        	$.ajax({
        		url : 'index.php?r=ordinance/getCommDetails',
        		data : {ord_no : $(this).val()},
        		dataType : 'json',
        		success : function (result) {
        			$("#MonitorOrd_subj_matter").val(result.subj_matter);
        		}
        	});
        });
 
      });
</script>