<?php
/* @var $this CommitteeController */
/* @var $model Committee */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Committee' : 'Update Committee'.' # '.$model->comm_id ,
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
		'id' => 'committee-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'comm_name',array('size'=>200,'maxlength'=>200,'class'=>'span4'));?>

	<?php echo $form->textFieldRow($model,'shortname',array('size'=>50,'maxlength'=>50));?>

	<?php echo $form->dropDownListRow($model,'chairman',CHtml::listData(Officials::model()->findAll(array('condition'=>'start_date <= now() and end_date >= now()')),'off_id','Fullname'),
														array('prompt'=>'---------- Choose Chairman ----------','class'=>'span3'));?>

	<?php echo $form->dropDownListRow($model,'v_chairman',CHtml::listData(Officials::model()->findAll(array('condition'=>'start_date <= now() and end_date >= now()')),'off_id','Fullname'),
														array('prompt'=>'---------- Choose Vice Chairman ----------','class'=>'span3'));?>

	<?php echo $form->select2Row($model, 'members', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Officials::model()->findAll(array('condition'=>'start_date <= now() and end_date >= now()')),'off_id','Fullname'),    
                                                                  'multiple'=> 'multiple',
                                                                  //'class'=>'span4',
                                                                  'options' => array(
                                                                  'placeholder' => '----- Choose Members -----',
                                                                  'tokenSeparators' => array(',', ' '),), 
                                                                    ));?>

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