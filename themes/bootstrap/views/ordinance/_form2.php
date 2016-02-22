<?php
/* @var $this OrdinanceController */
/* @var $model Ordinance */
/* @var $form CActiveForm */
?>

<?php
$model=new Ordinance;
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => $model->isNewRecord ? 'Add Old Ordinance' : 'Update Ordinance'.' # '.$model->ord_no ,
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
		'id' => 'ordinance-form',
		'type'=>'horizontal',
		'enableAjaxValidation' => false ,
                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'ord_no',array('class'=>'span2',  'value'=>'','placeholder'=>'000 - 0000')); ?>
    
  <?php echo $form->textAreaRow($model, 'subj_matter', array('class'=>'span6', 'rows'=>5,'value'=>'')); ?> 

	<?php echo $form->select2Row($model, 'author', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Officials::model()->findAll(array('condition'=>'now() >= start_date')),'off_id','Fullname'),    
                                                                  'multiple'=> 'multiple',
                                                                 
                                                                    'options' => array(
                                                                       
                                                                  'width' => '63%',
                                                                  'placeholder' => '        ------------ Choose Author ------------',
                                                                  'tokenSeparators' => array(',', ' '),), 
                                                                    ));?>

    <?php echo $form->select2Row($model, 'imp_agency', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Agency::model()->findAll(),'agency_id','agency_name'),    
                                                                  'multiple'=> 'multiple',
                                                                 
                                                                    'options' => array(
                                                                       
                                                                  'width' => '63%',
                                                                  'placeholder' => '        ------------ Choose Agency ------------',
                                                                  'tokenSeparators' => array(',', ' '),), 
                                                                    ));?>
  <?php echo $form->textFieldRow($model,'amend',array('class'=>'span2',  'value'=>'')); ?>
  <?php echo $form->datepickerRow($model, 'firstreading',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
	<?php echo $form->datepickerRow($model, 'secondreading',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
  <?php echo $form->datepickerRow($model, 'thirdreading',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
  <?php echo $form->datepickerRow($model, 'date_passed',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
  <?php echo $form->fileFieldRow($model,'ordi_file'); ?>

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
      'htmlOptions'=>array('style'=>'margin-left:1%;','id'=>'btnReset'),
    ));
  ?>
</div>

<?php $this->endWidget(); ?>


</div><!-- form -->
</div>
<?php $this->endWidget(); ?>
