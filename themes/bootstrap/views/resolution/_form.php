<?php
/* @var $this ResolutionController */
/* @var $model Resolution */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
                                                    		'title' => $model->isNewRecord ? 'Add Resolution' : 'Update Resolution'.' # '.$model->res_no ,
                                                    		'headerIcon' => 'icon-th-list',
                                                    		'htmlOptions' => array (
                                                                				'class' => 'bootstrap-widget-table' ,
                                                                                'style'=>'width:98%;',
                                                    		) 
                                                        ));
?>
<br>
<div class="span8">
<div class="form">

<?php

$form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
                                                        		'id' => 'resolution-form',
                                                        		'type'=>'horizontal',
                                                        		'enableAjaxValidation' => false ,
                                                                'htmlOptions'=>array('enctype'=>'multipart/form-data'),
                                                            ));
?>

	<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
	 
	<?php echo $form->textFieldRow($model,'res_no',array('class'=>'span2',  'value'=>$model->isNewRecord ? $count : $model->res_no)) ?>
    
	<?php if($model->isNewRecord){ echo $form->textFieldRow($model,'ctrl_no',array('class'=>'span2',  'value'=>$model->isNewRecord ? $id : $model->ctrl_no,'readOnly'=>true)); }?>
	
	<?php echo $form->textAreaRow($model, 'subj_matter', array('class'=>'span6', 'rows'=>5,'value'=>$model->isNewRecord? :$model->subj_matter)); ?> 

	<?php echo $form->select2Row($model, 'author', array('asDropDownList' => true, 
                                                        'data' => CHtml::listData(Officials::model()->findAll(array('condition'=>'now() >= start_date and now() <= end_date')),'off_id','Fullname'),    
                                                        'multiple'=> 'multiple',
                                                        'options' => array(
                                                            'width' => '63%',
                                                            'placeholder' => '        ------------ Choose Author ------------',
                                                            'tokenSeparators' => array(',', ' '),), 
                                                        ));
                                                        ?>

    <?php echo $form->datepickerRow($model, 'date_passed',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>                                                            	

	
	<?php echo $form->fileFieldRow($model,'reso_file'); ?>

	<div class="form-actions">

	<?php

        $this->widget ( 'bootstrap.widgets.TbButton', array (
                                            			'buttonType' => 'submit',
                                            			'type'       => 'primary',
                                            			'label'      => $model->isNewRecord ? 'Submit' : 'Save',
                                                        'htmlOptions'=> array('confirm'=>'Do you want to continue?')
	     ));

        $this->widget ( 'bootstrap.widgets.TbButton', array (
                                                          'buttonType'  => 'reset',
                                                          'type'        => 'warning',
                                                          'label'       => 'Reset', 
                                                          'htmlOptions' => array(
                                                                            'style'=>'margin-left:1%;',
                                                                            'id'=>'btnReset'
                                                                        ),
        ));
	?>
</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
</div><?php $this->endWidget(); ?>

<script type="text/javascript">    
    
    $(document).ready(function(){        
        $.ajax({
            url : 'index.php?r=resolution/getCommDetails',
            data : {
                    ctrl_no : $("#Resolution_ctrl_no").val(),
                    res_no : $('#Resolution_res_no').val()
                },
            dataType : 'json',
            success : function (result) {
                $('#Resolution_subj_matter').val(result.subject_matter);
            }
        });
    });
      
</script>