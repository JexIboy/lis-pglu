<?php
/* @var $this CommunicationController */
/* @var $model Communication */
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
                    
                                'style'=>'width:100%;',
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

	<?php echo $form->textFieldRow($model,'ctrl_no'); ?>
	
    <?php echo $form->textFieldRow($model,'subject_matter'); ?>

	<?php echo $form->datepickerRow($model, 'date_received',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->dropDownListRow($model,'cat_id',CHtml::listData(Category::model()->findAll(),'cat_id','cat_name'),array('class'=>'span4','prompt'=>'------ Select Category  ------')); ?>

	<?php echo $form->dropDownListRow($model,'type_comm',array(0=>'Urgent',1=>'Not Urgent'),array('class'=>'span4','prompt'=>'------ Select Type of Communication  ------')); ?>

	<?php echo $form->dropDownListRow($model,'orig_id',CHtml::listData(Origin::model()->findAll(),'orig_id','orig_name'),array('class'=>'span4','prompt'=>'------ Select Origin  ------')); ?>

	<?php echo $form->datepickerRow($model, 'date_agenda',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

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