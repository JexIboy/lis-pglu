<?php
/* @var $this OriginController */
/* @var $model Origin */
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
	<?php echo $form->textFieldRow($model,'orig_id',array('class'=>'span2'));?>

	<?php echo $form->textFieldRow($model,'orig_name',array('class'=>'span4'));?>

	<?php echo $form->textFieldRow($model,'shortname',array('class'=>'span2'));?>

	<?php echo $form->textFieldRow($model,'contact_person',array('class'=>'span4'));?>

	<?php echo $form->textFieldRow($model,'contact_num',array('class'=>'span3'));?>

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