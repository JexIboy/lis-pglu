<?php
/* @var $this EmployeeController */
/* @var $model Employee */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Advanced Search'  ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                    
                                'style'=>'width:98%;',
		) 
) );
?>
<br>
<div class="span8">
<div class="wide form">

<?php
    $form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
		'action'=>Yii::app()->createUrl($this->route),
                'method'=>'get',
                ));
    CHtml::$afterRequiredLabel = '';
    ?>
    <?php echo $form->textFieldRow($model,'emp_id',array('class'=>'span2','size'=>50,'maxlength'=>50));?>

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
			'label' => 'Search' 
	));


	?>
             </div>
</div>

<?php $this->endWidget(); ?>
    <?php $this->endWidget(); ?>

</div><!-- form -->