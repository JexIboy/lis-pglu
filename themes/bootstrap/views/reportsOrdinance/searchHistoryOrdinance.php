<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Choose Ordinance No. :'  ,
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

<div class="well form-inline">

    <?php echo CHtml::beginForm(); ?>
    <div style="alignment-baseline:5px; ">  
        <label>Ordinance No.</label>

        <?php
            $this->widget('bootstrap.widgets.TbSelect2',array(
                    'model'=>$model,
                    'attribute'=>'ord_no',
                     
                    'data'=>CHtml::listData(Ordinance::model()->findAll(),'ord_no','ord_no'), 

                    'asDropDownList' => array(''),

                ) 
            );

        ?>
        <?php echo CHtml::htmlButton('<i class="icon-search icon-white"></i> Search', array('class' => 'btn btn-success', 'type' => 'submit', 'name' => 'searchButton',)); ?>
      </div>
    <?php echo CHtml::endForm(); ?>
</div><!-- form -->
    <?php $this->endWidget(); ?>

</div><!-- form -->
</div><!-- search-form -->
<?php

?>

