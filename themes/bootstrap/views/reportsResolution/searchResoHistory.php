<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Choose Resolution No. :'  ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; margin-top:1%;',
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
    <label>Resolution No.</label>
    <?php
$this->widget(
   'bootstrap.widgets.TbSelect2',
    array(
        'model'=>$model,
        'attribute' => 'res_no',
       'data' => CHtml::listData(Resolution::model()->findAll(),'res_no','res_no'), 
        'options' => array(
            
          'width' => '30%',
      )
    )
);

?>

    <div class="form-actions">
    <?php
    
$this->widget ( 'bootstrap.widgets.TbButton', array (
            'buttonType' => 'submit',
            'type' => 'primary',
            'label' => 'Search' 
    ));


    ?>
             </div>
             <?php $this->endWidget(); ?>
</div>


    <?php $this->endWidget(); ?>

</div><!-- form -->


