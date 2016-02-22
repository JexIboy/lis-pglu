<?php
/* @var $this AgencyController */
/* @var $model Agency */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
        'title' => 'Agenda Maker',
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
        'id' => 'agenda-form',
        'type'=>'horizontal',
        'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

    <p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <?php echo $form->textFieldRow($model,'session_no',array('class'=>'span1'));?>

    <?php echo $form->dropDownListRow($model,'session_type',array(0=>'Regular Session',1=>'Special Session'));?>

    <?php echo $form->textFieldRow($model,'sp_batch_no',array('class'=>'span1'));?>

    <?php //echo $form->textAreaRow($model, 'subject_matter', array('class'=>'span6', 'rows'=>5)); ?> 

    <?php echo $form->timepickerRow(
            $model,
            'session_time',
            array(
                'class' => 'input-small',
            )
        ); ?>

    <?php echo $form->datepickerRow($model, 'session_date',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

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