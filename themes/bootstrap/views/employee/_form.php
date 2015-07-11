<?php
/* @var $this EmployeeController */
/* @var $model Employee */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Employee' : 'Update Employee'.' # '.$model->emp_id ,
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
		'id' => 'employee-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'emp_fname',array('class'=>'span3','size'=>50,'maxlength'=>50));?>

	<?php echo $form->textFieldRow($model,'emp_mname',array('class'=>'span3','size'=>50,'maxlength'=>50));?>

	<?php echo $form->textFieldRow($model,'emp_lname',array('class'=>'span3','size'=>50,'maxlength'=>50));?>

	<?php echo $form->dropDownListRow($model,'position',CHtml::listData(Position::model()->findAll(),'pos_id','pos_name'),array('class'=>'span3','prompt'=>'---------- Choose Position ----------'));?>

	<?php echo $form->dropDownListRow($model,'dept_id',CHtml::listData(Department::model()->findAll(),'dept_id','dept_name'),array('class'=>'span3','prompt'=>'---------- Choose Department ----------'));?>

	<?php echo $form->textFieldRow($model,'contact_num',array('class'=>'span3','size'=>50,'maxlength'=>50));?>

	<?php echo $form->textFieldRow($model,'email_add',array('class'=>'span3','size'=>50,'maxlength'=>50));?>

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