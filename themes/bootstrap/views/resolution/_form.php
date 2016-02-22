<?php
  $box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
  		'title' => $model->isNewRecord ? 'Add Resolution' : 'Update Resolution'.' # '.$model->res_no ,
  		'headerIcon' => 'icon-th-list',
  		// when displaying a table, if we include bootstra-widget-table class
  		// the table will be 0-padding to the box
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
                                                                    ));?>
    <?php echo $form->datepickerRow($model, 'date_passed',array('prepend'=>'<i class="icon-calendar"></i>','options'=>array('format'=>'yyyy-mm-dd'))); ?>                                                            	
	  <?php echo $form->fileFieldRow($model,'reso_file'); ?>
    
  	<div class="form-actions">
  	   <?php
  	

            $this->widget ( 'bootstrap.widgets.TbButton', array (
    			'buttonType' => 'submit',
    			'type' => 'primary',
    			'label' => $model->isNewRecord ? 'Submit' : 'Save',
         'htmlOptions'=>array('confirm'=>'Do you want to continue?')
    	     ));

            $this->widget ( 'bootstrap.widgets.TbButton', array (
          'buttonType' => 'reset',
          'type' => 'warning',
          'label' =>'Reset', 
          'htmlOptions'=>array('style'=>'margin-left:1%;','id'=>'btnReset'),
        ));


  	   ?>
    </div>

  <?php $this->endWidget(); ?>
  </div><!-- form -->
  </div><?php $this->endWidget(); ?>
     <script type="text/javascript">    
        $(document).ready(function(){   
        	if( $("[id*=ctrl_no]").val()==null){ 
        		$.get("themes/bootstrap/views/resolution/_viewDetailsResolution.php",
                      "res_no="+$("[id*=res_no]").val(),
                     function(html){
                         output=html.toString().split("//");
                         $("[id*=subj_matter]").val(output[0]);
                     });
              }else{
        	       $.get("themes/bootstrap/views/resolution/_viewDetails.php",
                      "ctrl_no="+$("[id*=ctrl_no]").val(),
                     function(html){
                         output=html.toString().split("é");
                         $("[id*=subj_matter]").val(output[0]);
                     });
            }
           });
     </script>