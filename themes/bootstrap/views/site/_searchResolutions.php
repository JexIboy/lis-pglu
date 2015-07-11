<?php
/* @var $this ResolutionController */
/* @var $model Resolution */
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
                    
                                'style'=>'width:100%; margin-left:11%;',
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
    ?>

	<?php echo $form->textFieldRow($model,'res_no',array('class'=>'span2')); ?>
    
	
	<?php echo $form->textAreaRow($model, 'subj_matter', array('class'=>'span6', 'rows'=>5)); ?> 

	<?php echo $form->select2Row($model, 'author', array('asDropDownList' => true, 
                                                                  'data' => CHtml::listData(Officials::model()->findAll(array('condition'=>'now() >= start_date and now() <= end_date')),'off_id','Fullname'),    
                                                                  'multiple'=> 'multiple',
                                                                 
                                                                    'options' => array(
                                                                       
                                                                  'width' => '63%',
                                                                  'placeholder' => '        ------------ Choose Author ------------',
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