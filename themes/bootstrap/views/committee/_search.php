<?php
/* @var $this CommitteeController */
/* @var $model Committee */
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

    <?php echo $form->textFieldRow($model,'comm_id',array('size'=>50,'maxlength'=>50));?>

	<?php echo $form->textFieldRow($model,'comm_name',array('size'=>200,'maxlength'=>200,'class'=>'span4'));?>

	<?php echo $form->textFieldRow($model,'shortname',array('size'=>50,'maxlength'=>50));?>

	<?php echo $form->dropDownListRow($model,'chairman',CHtml::listData(Officials::model()->findAll(array('condition'=>'start_date <= now() and end_date >= now()')),'off_id','Fullname'),
														array('prompt'=>'---------- Choose Chairman ----------','class'=>'span4'));?>

	<?php echo $form->dropDownListRow($model,'v_chairman',CHtml::listData(Officials::model()->findAll(array('condition'=>'start_date <= now() and end_date >= now()')),'off_id','Fullname'),
														array('prompt'=>'---------- Choose Vice Chairman ----------','class'=>'span4'));?>

	<?php echo $form->select2Row($model, 'members', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Officials::model()->findAll(array('condition'=>'start_date <= now() and end_date >= now()')),'off_id','Fullname'),    
                                                                  'multiple'=> 'multiple',
                                                                  'class'=>'span4',
                                                                  'options' => array(
                                                                  'placeholder' => '        ------------ Choose Members ------------',
                                                                  'tokenSeparators' => array(',', ' '),), 
                                                                    ));?>
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