<?php
/* @var $this CommunicationController */
/* @var $model Communication */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Communications'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Communication', 'url'=>array('admin')),
	array('label'=>'Add Communication', 'url'=>array('create'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,),
	array('label'=>'Communications for Referral', 'url'=>array('viewTypeComm'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,)
);

Yii::app()->clientScript->registerScript('viewArchive', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#communication-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");

?>


<?php echo CHtml::link('Advanced Search','#',array('class'=>'btn search-button btn-success','style'=>'color:white;')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Search Archived Communication' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%;',
		) 
) );
?>
<div class="span8">
<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'communication-grid',
	'dataProvider'=>$model->viewArchive(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('name'=>'ctrl_no','type'=>'raw','value'=>'CHtml::link($data->ctrl_no,array("communication/download","id"=>$data->ctrl_no))'),
		'subject_matter',
		array('header'=>'Origin','value'=>'$data->orig->orig_name'),
		'date_agenda',
		/*
		'date_received',
		array('header'=>'Category','value'=>'$data->cat->cat_name'),
		'input_by',
		'comm_letter',
		*/
		
		array(	'header'=>'Action','class'=>'CButtonColumn','template'=>'{viewArchive} {view}',
    		'buttons'=>array(
    				'view'=>array(
    					'label'=>'',
    					'imageUrl'=>false,
    					'options'=>array(
    						'class'=>'icon-search',
    						'title'=>'View'
    						),
    					),
        			'viewArchive' => array(
            			'label'=>'',
            			'imageUrl'=>false,
            			'url'=>'Yii::app()->controller->createUrl("communication/retrieve",array("id"=>$data->ctrl_no))',
            			'options'=>array('ajax' => array('type' => 'get', 'url'=>'js:$(this).attr("href")', 'success' => 'js:function(data) { $.fn.yiiGridView.update("communication-grid")}'),'class'=>'delete icon-circle-arrow-left', 'title'=>'Retrieve'),
        			),
    			)      
		) 
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->


