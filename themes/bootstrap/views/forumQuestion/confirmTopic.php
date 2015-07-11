
<?php


$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Unposted Topics' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; margin-left:12%;',
		) 
) );

$this->widget('bootstrap.widgets.TbAlert', array(
    'block' => true,
    'fade' => true,
    'closeText' => '&times;', // false equals no close link
    'events' => array(),
    'htmlOptions' => array('style'=>'margin:1% 1% 1% 1%;'),
    'userComponentId' => 'user',
    'alerts' => array( // configurations per alert type
        // success, info, warning, error or danger
        'success' => array('closeText' => '&times;'),
    ),
));
?>
<?php
    foreach(Yii::app()->user->getFlashes() as $key => $message) {
        echo '<div class="flash-' . $key . '">' . $message . "</div>\n";
    }
?>
<?php

$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'confirm-topic-grid',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('name'=>'topic','type'=>'raw','value'=>'CHtml::link($data->topic,array("//forumQuestion/view","id"=>$data->id))'),
		'detail',
		'name',
		'email',
		//'datetime',
		//'view',
		//'reply',
		array('header'=>'Action','class'=>'CButtonColumn','htmlOptions'=>array('style'=>'width:10%; text-align:center;'),
    					'template'=>'{view} {post} {unpost}',
    					'buttons'=>array(
        							'post' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("forumQuestion/postQuestion",array("id"=>$data->id))',
            						'options'=>array( 'class'=>'icon-ok' ,'title'=>'Accept'),
        							),
        							'unpost' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("forumQuestion/unPostQuestion",array("id"=>$data->id))',
            						'options'=>array( 'class'=>'icon-trash','Reject' ),
        							),
        							'view' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("forumQuestion/view",array("id"=>$data->id))',
            						'options'=>array( 'class'=>'icon-search','View' ),
        							),
    							),      
		) ,
	),
));

?>

<?php $this->endWidget(); ?>