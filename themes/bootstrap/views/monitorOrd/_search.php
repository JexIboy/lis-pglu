<?php
/* @var $this TrackOrdController */
/* @var $model TrackOrd */
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
    <?php echo $form->dropDownListRow($model,'monitor_id',CHtml::listData(MonitorOrd::model()->findAll(),'monitor_id','monitor_id'),array('empty'=>'--- Choose ID. ---'));?>
	<?php echo $form->dropDownListRow($model,'ord_no',CHtml::listData(Ordinance::model()->findAll(),'ord_no','ord_no'),array('empty'=>'----- Choose Ordinance -----'));?>
	<?php echo $form->textFieldRow($model, 'subj_matter', array('class'=>'span4')); ?> 
	<?php echo $form->select2Row($model, 'agency_id', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Agency::model()->findAll(),'agency_id','agency_name'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '           ------------ Select Agency ------------',
                                                                    'options' => array(
                                                                    	
                                                                       'maximumSelectionSize'=> 1 ,
                                                                  'class' => 'span4'), 
                                                                    ));?>

	<?php echo $form->datepickerRow($model, 'date_furnished',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->dropDownListRow($model,'status',array(0=>'Implemented',1=>'Partially Implemented',2=>'Not Implemented'),array('empty'=>'----- Choose Status -----'));?>                                                                 

	<?php echo $form->textFieldRow($model, 'action_taken', array('class'=>'span4')); ?> 

	<?php echo $form->textFieldRow($model, 'recommendation', array('class'=>'span4')); ?> 

	<?php echo $form->textFieldRow($model, 'problems_encountered', array('class'=>'span4')); ?> 

	<?php echo $form->datepickerRow($model, 'date_received',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>


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
