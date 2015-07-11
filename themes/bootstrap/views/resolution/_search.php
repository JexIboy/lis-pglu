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

	<?php echo $form->dropDownListRow($model,'res_no',CHtml::listData(Resolution::model()->findAll(),'res_no','res_no'),array('class'=>'span3','empty'=>'Choose Resolution No.')); ?>
    

	<?php echo $form->textFieldRow($model, 'subj_matter', array('class'=>'span4')); ?> 

	<?php echo $form->select2Row($model, 'author', array('asDropDownList' => true, 
                                                                  'data' =>  CHtml::listData(Officials::model()->findAll(array('condition'=>'now() >= start_date')),'off_id','Fullname'),    
                                                                  'multiple'=> 'multiple',
                                                                  'data-placeholder'=> '       ------------ Select Author ------------',
                                                                    'options' => array(
                                                                  'width' => '40%'), 
                                                                    ));?>
    <?php echo $form->datepickerRow($model, 'date_passed',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>                                                            	

	<div class="form-actions">
	<?php
	
$this->widget ( 'bootstrap.widgets.TbButton', array (
			'buttonType' => 'submit',
			'type' => 'primary',
			'label' => 'Search' ,
			'icon'=> 'icon-search icon-white'
	));


	?>
             </div>
</div>

<?php $this->endWidget(); ?>
    <?php $this->endWidget(); ?>

</div><!-- form -->