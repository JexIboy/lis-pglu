<?php


$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Topic # '.$model->id ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'headerButtons' => array(
				
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'url'=>Yii::app()->controller->createUrl("forumQuestion/unPostQuestion",array("id"=>$model->id)),
					  'label' => 'Reject Topic',
				),
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'url'=>Yii::app()->controller->createUrl("forumQuestion/postQuestion",array("id"=>$model->id)),
					  'label' => 'Approve Topic', 
				), 
		),
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; margin-left:12%;',
		) 
) );
?>


<br>
<div class="span11">
<?php 

$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'htmlOptions'=>array('style'=>'width:100%;'),
    'attributes'=>array(
        'id',
		'topic',
		'detail',
		'name',
		'email',
		'datetime',
		'view',
		'reply',
		'confirmation',
    ),
));
?>
</div>

<?php $this->endWidget(); ?>
