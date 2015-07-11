<?php 


$this->beginWidget(
    'bootstrap.widgets.TbModal',
    array('id' => 'myModal')
); ?>
 
    <div class="modal-header">
        <a class="close" data-dismiss="modal">&times;</a>
        <h4>Insert Committee Report</h4>
    </div>
 
    <div class="modal-body">
        <?php
$form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
        'id' => 'add-comm-report-form',
        'type'=>'horizontal',
        'enableAjaxValidation' => false ,
        'htmlOptions'=>array('enctype'=>'multipart/form-data'),
) );
?>

    <p class="note" id="requiredation">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>
    <?php echo $form->datepickerRow($model, 'comm_report',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>
    <?php echo $form->fileFieldRow($model, 'comm_rep_file'); ?>
    </div>
 
    
    <div class="form-actions">
    <?php
    
        $this->widget ( 'bootstrap.widgets.TbButton', array (
            'buttonType' => 'submit',
            'type' => 'primary',
            'label' => $model->isNewRecord ? 'Create' : 'Save',
            'htmlOptions'=>array('style'=>'margin-left:40%;') 
    ));


    ?>
</div>

<?php $this->endWidget(); ?>
 
<?php $this->endWidget(); ?>