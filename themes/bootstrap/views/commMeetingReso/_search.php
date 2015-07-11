<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
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
    <?php echo $form->dropDownListRow($model,'meeting_reso_id',CHtml::listData(CommMeetingReso::model()->findAll(),'meeting_reso_id','meeting_reso_id'), array('class'=>'span3', 'value'=>'',));?>

	<?php echo $form->dropDownListRow($model,'ref_id',CHtml::listData(Referral::model()->findAll(array('condition'=>'referral_stat=0')),'ref_id','ctrl_no'),array('class'=>'span3'));?>

	<?php echo $form->dropDownListRow($model,'action_taken',array(0=>'Pending',1=>'Approved',2=>'Return to Origin'),array('class'=>'span3'));?>

	<?php echo $form->datepickerRow($model, 'date_meeting',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
	
	<?php echo $form->datepickerRow($model, 'comm_report',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
	


	<br/>
<br/>
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