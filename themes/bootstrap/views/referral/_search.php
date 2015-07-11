<?php
/* @var $this ReferralController */
/* @var $model Referral */
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
                    
                                'style'=>'width:853px;',
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
    <?php echo $form->textFieldRow($model,'ref_id');?>

	<?php echo $form->dropDownListRow($model,'ctrl_no',CHtml::listData(Communication::model()->findAll(array('condition'=>'date_agenda >= '.date('Y-m-d'))),'ctrl_no','ctrl_no'),array('class'=>'span4','prompt'=>'------ Select Control Number  ------')); ?>

	<?php echo $form->datepickerRow($model, 'date_referred',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>

	<?php echo $form->dropDownListRow($model,'lead_committee',CHtml::listData(Committee::model()->findAll(),'comm_id','comm_name'),array('class'=>'span4','prompt'=>'------ Select Lead Committee  ------')); ?>

	<?php echo $form->select2Row($model, 'joint_committee', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Committee::model()->findAll(),'comm_id','comm_name'),    
                                                                  'multiple'=> 'multiple',
                                                                 
                                                                    'options' => array(
                                                                       
                                                                  'width' => '50%',
                                                                  'placeholder' => '        ------------ Choose Joint Committee ------------',
                                                                  'tokenSeparators' => array(',', ' '),), 
                                                                    ));?>

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