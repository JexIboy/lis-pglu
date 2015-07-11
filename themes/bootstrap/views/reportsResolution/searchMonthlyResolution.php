
<?php

$x=array();
$startTime = strtotime('1970-05-01 12:00');
$endTime = strtotime('2020-05-10 12:00');

// Loop between timestamps, 24 hours at a time
for ($i = $endTime; $i >= $startTime; $i = $i - 31536000) {
 array_push($x,date('Y', $i)); // 2010-05-01, 2010-05-02, etc
}


$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Choose Month and Year:'  ,
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
    <?php 
$months = array(
		'01' => 'January',
		'02' => 'February',
		'03' => 'March',
		'04' => 'April',
		'05' => 'May',
		'06' => 'June',
		'07' => 'July',
		'08' => 'August',
		'09' => 'September',
		'10' => 'October',
		'11' => 'November',
		'12' => 'December');
?>

<div class="well form-inline">

    <?php echo CHtml::beginForm(); ?>
    <div style="alignment-baseline:5px; ">  
        <label>Month</label>
        <?php
            $this->widget('bootstrap.widgets.TbSelect2',array(
                    'name'=>'month',
                    'data'=>$months,
                    'asDropDownList' => true, 
                ));
        ?>
        <?php //echo CHtml::dropDownList('month',$month,); ?>
        <label>Year</label>
        <?php
            $this->widget('bootstrap.widgets.TbSelect2',array(
                    'name'=>'year',
                    'data'=>$x,
                    'asDropDownList' => true, 
                    'htmlOptions'=>array('style'=>'width:20%;')
                ));
        ?>
        <?php echo CHtml::htmlButton('<i class="icon-search icon-white"></i> Search', array('class' => 'btn btn-success', 'type' => 'submit', 'name' => 'searchButton',)); ?>
          </div>
    <?php echo CHtml::endForm(); ?>
</div><!-- form -->


    <?php $this->endWidget(); ?>

</div><!-- form -->
</div><!-- search-form -->


