
<div id="mainforum">

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Forum',
		'headerIcon' => 'icon-th-list',
		'headerButtons' => array(
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					   'icon'=>'plus',
					  'label' => 'Create Topic',
					  'url'=>Yii::app()->controller->createUrl("/site/create_topic"),
		), ),
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:100%; text-align:center;',
		) 
) );
?>

<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'forum-question-grid',
	'dataProvider'=>$model->searchPosted(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('name'=>'topic','type'=>'raw','value'=>'CHtml::link($data->topic,array("//site/view_topic","id"=>$data->id))'),
		'detail',
		'name',
		'view',
		'reply',
		
	),
));
?>
<br/> 
<table style="text-align:left; margin-left:1%;">
<tr>
	<td>
		<p class="note" > 
		<span style="color:red;">Note *</span>
		</p>
	</td>
	<td><p class="note" > Please don't use this Forum Page to hurt other people.</p></td>
	
</tr>
<tr>
	<td rowspan="4">
	</td>
</tr>
<tr>
	<td>
		<p class="note" > 
		This Forum Page is used to know your opinions, suggestions and recommendations about the different ordinances and resolutions that have been passed.
		</p>
	</td>
</tr>
<tr>
	<td>
		<p class="note" > 
		However, Provincial Government of La Union doesn't have any concerns about anything that is posted in here.
		</p>
	</td>
</tr>
<tr>
	<td>
		<p class="note" > 
		Thank you for your cooperation and for visiting this site.
		</p>
	</td>
</tr>
	 
	
	
	

</table>
<br/> 
<?php $this->endWidget(); ?>
</div>
