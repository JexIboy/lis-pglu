<div style="width:121.5%;  ">
<div style="float:left; width:60%; margin-left:2%; ">
<?php if(empty($model)){$this->redirect(array('index'));}?>
<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Topic',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'color:black; width:98%; margin-right:2%'
		) 
	) );
$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'attributes'=>array(
        'topic',
        'detail',
        'name',
        'email'
    ),
	));
$this->endWidget();
?>
<?php

$answer=ForumAnswer::model()->findAll(array('condition'=>'a_id = :id','params'=>array(':id'=>$model->id),'order'=>'a_datetime desc'));
foreach($answer as $value){
	$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title'=>'Reply/Comment',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'color:black; width:98%; margin-right:2%'
		) 
	) );
	date_default_timezone_set("Asia/Manila");?>
	
	<table style="width:100%;">
		<tr style=" border-bottom-style:solid;">
			<td style="width:80%;"><?php echo 'Posted By: '.$value->a_name;?></td>
			<td style="width:20%;"><?php echo $value->a_datetime;?></td>
		</tr>
		<tr>
			<td colspan="2"><?php echo $value->a_answer;?></td>
		</tr>
	</table>
<?php	$this->endWidget();

}


 
// if have no counter value set counter = 1
if(empty($model->view)){
$model->view=1;
$model->save();
}
else{
$addview=$model->view+1;
$model->view=$addview;
$model->save();
}
?>

</div>
	<div style="width:38%;float:right;" >
		<div id="formss">
			<?php $this->renderPartial('/site/add_answer',array('modelAnswer'=>$modelAnswer));?>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {

    var $sidebar   = $("[id*=formss]"), 
        $window    = $(window),
        offset     = $sidebar.offset(),
        topPadding = 10;

    $window.scroll(function() {
        if ($window.scrollTop() > offset.top) {
            $sidebar.stop().animate({
                marginTop: $window.scrollTop() - offset.top + topPadding
            });
        } else {
            $sidebar.stop().animate({
                marginTop: 0
            });
        }
    });
    
});
	</script>