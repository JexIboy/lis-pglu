<?php
/* @var $this CommunicationController */
/* @var $model Communication */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Communication' : 'Update Communication'.' # '.$model->ctrl_no ,
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
		'id' => 'communication-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'ctrl_no',array('class'=>'span2',  'value'=>$model->isNewRecord ? $count : $model->ctrl_no)); ?>
    <?php echo $form->textAreaRow($model, 'subject_matter', array('class'=>'span6', 'rows'=>5)); ?> 

	<?php echo $form->datepickerRow($model, 'date_received',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->select2Row($model,'cat_id', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Category::model()->findAll(array('order'=>'cat_name asc')),'cat_id','cat_name'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '           ------------ Select Category ------------',
                                                                    'options' => array(
                                                                    	
                                                                       'maximumSelectionSize'=> 1 ,
                                                                  'width' => '63%'), 
                                                                    ));?>

	<?php if($model->isNewRecord) {?>
	<?php echo $form->select2Row($model, 'orig_id', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Origin::model()->findAll(array('order'=>'orig_name asc')),'orig_id','orig_name'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '           ------------ Select Origin ------------',
                                                                    'options' => array(
                                                                    	
                                                                       'maximumSelectionSize'=> 1 ,
                                                                  'width' => '63%'), 
                                                                    ));?>
	
	<?php echo $form->datepickerRow($model, 'date_agenda',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->fileFieldRow($model, 'comm_letter');}else{ ?>
	<?php echo $form->dropDownListRow($model,'type_comm',array(0=>'Urgent',1=>'Not Urgent'),array('class'=>'span4','prompt'=>'------ Select Type of Communication ------',)); ?>

	<?php echo $form->select2Row($model, 'orig_id', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Origin::model()->findAll(array('order'=>'orig_name asc')),'orig_id','orig_name'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '           ------------ Select Origin ------------',
                                                                    'options' => array(
                                                                    	
                                                                       'maximumSelectionSize'=> 1 ,
                                                                  'width' => '63%'), 
                                                                    ));?>
	
	<?php echo $form->datepickerRow($model, 'date_agenda',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
	
  <?php echo $form->fileFieldRow($model, 'comm_letter');}?>

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