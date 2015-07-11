<?php
/* @var $this OrdinanceController */
/* @var $model Ordinance */
/* @var $form CActiveForm */
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
                                                    		'title'       => $model->isNewRecord ? 'Add Ordinance' : 'Update Ordinance'.' # '.$model->ord_no ,
                                                    		'headerIcon'  => 'icon-th-list',
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
                                                                ));
?>

<p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

<?php echo $form->errorSummary($model); ?>

<?php echo $form->textFieldRow($model,'ord_no',array(
                                                'class'=>'span2',
                                                'value'=>$model->isNewRecord ? $count : $model->ord_no,
                                                )); ?>

<?php if($model->isNewRecord) { ?>

<?php echo $form->textFieldRow($model,'meeting_ordi_id',array(
                                                            'class'   => 'span2',
                                                            'value'   => $model->isNewRecord ? $id : $model->ord_no,
                                                            'readOnly'=> true
                                                        )); ?>

<?php } ?>	

<?php echo $form->textAreaRow($model, 'subj_matter', array(
                                                        'class'=>'span6',
                                                        'rows'=>5,
                                                        'value'=>$model->isNewRecord? :$model->subj_matter,
                                                    )); ?> 

<?php echo $form->select2Row($model, 'author', array('asDropDownList'   => true, 
                                                    'data'                => CHtml::listData(Officials::model()->findAll(array('condition'=>'now() >= start_date and now() <= end_date')),'off_id','Fullname'),    
                                                    'multiple'            => 'multiple',
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
                                                        'buttonType'  => 'submit',
                                                        'type'        => 'primary',
                                                        'label'       => $model->isNewRecord ? 'Submit' : 'Save',
                                                        'htmlOptions' => array(
                                                                            'confirm' =>'Do you want to continue?'
                                                                        )
                                                        ));

        $this->widget ( 'bootstrap.widgets.TbButton', array (
                                                        'buttonType' => 'reset',
                                                        'type'       => 'warning',
                                                        'label'      =>'Reset', 
                                                        'htmlOptions'=> array(
                                                                            'style'=>'margin-left:1%;'
                                                                        ),
                                                        ));
    ?>
</div>

<?php $this->endWidget(); ?>

<?php $this->endWidget(); ?>

</div><!-- form -->
</div>
<script type="text/javascript" >    
    
    $(document).ready(function(){
        $.ajax({
            url : 'index.php?r=ordinance/getCommDetails',
            data : {
                    meeting_ordi_id : $("#Ordinance_meeting_ordi_id").val(),
                    ord_no : $("#Ordinance_ord_no").val()
                },
            dataType : 'json',
            success : function (result) {
                $("#Ordinance_meeting_ordi_id").val(result.ctrl_no);
                $("#Ordinance_subj_matter").val(result.subject_matter);
            }
        });   
    });
</script>