
<?php
$x=array();
$startTime = strtotime('1970-05-01 12:00');
$endTime = strtotime('2020-05-10 12:00');

// Loop between timestamps, 24 hours at a time
for ($i = $endTime; $i >= $startTime; $i = $i - 31536000) {
 array_push($x,date('Y', $i)); // 2010-05-01, 2010-05-02, etc
}
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
        'title' => 'Choose Board Member and Year'  ,
        'headerIcon' => 'icon-th-list',
        // when displaying a table, if we include bootstra-widget-table class
        // the table will be 0-padding to the box
        'htmlOptions' => array (
                'class' => 'bootstrap-widget-table',
                                'style'=>'width:853px;',
        ) 
) );
?>

<br>
<div class="span8">

<div class="well form-inline">

    <?php echo CHtml::beginForm(); ?>
    <div style="alignment-baseline:5px; ">  
        <label>Author Name: </label>
        <?php
            $this->widget('bootstrap.widgets.TbSelect2',array(
                    'name'=>'auth_name',
                    'data'=>CHtml::listData(Officials::model()->findAll(),'off_id','fullname'),
                    'asDropDownList' => true, 
                ));
        ?>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <?php echo CHtml::htmlButton('<i class="icon-search icon-white"></i> Search', array('class' => 'btn btn-success', 'type' => 'submit', 'name' => 'searchButton',)); ?>
        <br/>
        <br/>
        <label>Year : </label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <?php
            $this->widget('bootstrap.widgets.TbSelect2',array(
                    'name'=>'year',
                    'data'=>$x,
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


