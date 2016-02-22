<?php
/* @var $this OrdinanceController */
/* @var $model Ordinance */
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

	<?php echo $form->dropDownListRow($model,'ord_no',CHtml::listData(Ordinance::model()->findAll(),'ord_no','ord_no'),array('class'=>'span3','empty'=>'Choose Ordinance Number')); ?>
    

	
	<?php echo $form->dropDownListRow($model,'meeting_ordi_id',$model->isNewRecord ? CHtml::listData(CommMeetingOrdi::model()->findAll(array('condition'=>'comm_meeting_stat=1 and ord_remark=0')),'meeting_ordi_id','ControlNumber')  : CHtml::listData(CommMeetingOrdi::model()->findAll(),'meeting_ordi_id','ControlNumber'),array('class'=>'span3','empty'=>$model->isNewRecord ?'------ Select Control No.   ------' : $model->meetingOrdi->ControlNumber)); ?>

	<?php echo $form->textFieldRow($model, 'subj_matter', array('class'=>'span4')); ?> 

	<?php echo $form->select2Row($model, 'author', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Officials::model()->findAll(''),'off_id','Fullname'),    
                                                                  
                                                                  'multiple'=> 'multiple',
                                                                 
                                                                    'options' => array(
                                                                       
                                                                  'width' => '40%',
                                                                  'placeholder' => '        ------------ Choose Author ------------',
                                                                  'tokenSeparators' => array(',', ' '),), 
                                                                    ));?>

    <?php echo $form->select2Row($model, 'imp_agency', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Agency::model()->findAll(),'agency_id','agency_name'),    
                                                                  'multiple'=> 'multiple',
                                                                 
                                                                    'options' => array(
                                                                       
                                                                  'width' => '40%',
                                                                  'placeholder' => '        ------------ Choose Agency ------------',
                                                                  'tokenSeparators' => array(',', ' '),), 
                                                                    ));?>

	<?php echo $form->datepickerRow($model, 'date_passed',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>


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