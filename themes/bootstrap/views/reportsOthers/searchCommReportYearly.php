
<?php



$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Enter Committee and Year'  ,
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
        <label>Committee : </label>
        <?php
            $this->widget('bootstrap.widgets.TbSelect2',array(
                    'name'=>'comm_name',
                    'data'=>CHtml::listData(Committee::model()->findAll(),'comm_id','comm_name'),
                    'asDropDownList' => true, 
                    'htmlOptions'=>array('style'=>'width:60%;')
                ));
        ?>
       
        <?php echo CHtml::htmlButton('<i class="icon-search icon-white"></i> Search', array('class' => 'btn btn-success', 'type' => 'submit', 'name' => 'searchButton',)); ?>
        <?php
         $this->widget('bootstrap.widgets.TbButton', array(
                        'type' => 'primary',
                       'url'=>Yii::app()->controller->createUrl("reportsOthers/printCommReportYearly",array("model"=>$comm_name.','.$year)),
                      'label' => 'Print Result',
                      'visible'=>isset($_POST['searchButton']) ? true:false,
                      'htmlOptions'=>array('id'=>'printButton',)
// you can easily change the look of the button by providing the correct class
// ui-button-error, ui-button-primary, ui-button-success
));
         ?>
         <br/>
        <br/><label>Year : </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <?php
            $this->widget('bootstrap.widgets.TbSelect2',array(
                    'name'=>'year',
                    'data'=>array('2000'=>'2000','2001'=>'2001','2002'=>'2002','2003'=>'2003','2004'=>'2004','2005'=>'2005','2006'=>'2006','2007'=>'2007','2008'=>'2008','2009'=>'2009',
                                  '2010'=>'2010','2011'=>'2011','2012'=>'2012','2013'=>'2013','2014'=>'2014','2015'=>'2015','2016'=>'2016','2017'=>'2017','2018'=>'2018','2019'=>'2019',
                                  '2020'=>'2020'),
                    'value'=>date('Y'),
                    'asDropDownList' => true, 
                    'htmlOptions'=>array('style'=>'width:20%;')
                ));
        ?>
    </div>
    <?php echo CHtml::endForm(); ?>
</div><!-- form -->


    <?php $this->endWidget(); ?>

</div><!-- form -->
</div><!-- search-form -->


