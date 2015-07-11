<?php
/* @var $this OrdinanceController */
/* @var $model Ordinance */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Ordinances'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Ordinance', 'url'=>array('admin')),
	array('label'=>'For Ordinance', 'url'=>array('ordinanceList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Ordinance', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);

Yii::app()->clientScript->registerScript('viewArchive', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#ordinance-grid').yiiGridView('update', {
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
		'title' => 'Search Archived Ordinance' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:120%;',
		) 
) );
?>
<div class="span8">
<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'ordinance-grid',
	'dataProvider'=>$model->viewArchive(),
	'htmlOptions'=>array('style'=>'width:120%;'),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('name'=>'ord_no','type'=>'raw','value'=>'CHtml::link($data->ord_no,array("ordinance/download","id"=>$data->ord_no))','htmlOptions'=>array('style'=>'width:15%;')),
		'subj_matter',
		//'meeting_ordi_id',
		array('header'=>'Author','value'=>'$data->Author'),
		array('header'=>'Implementing Agencies','value'=>'$data->Agency'),
		//'ordi_file',
		//'input_by',
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
            			'url'=>'Yii::app()->controller->createUrl("ordinance/retrieve",array("id"=>$data->ord_no))',
            			'options'=>array('ajax' => array('type' => 'get', 'url'=>'js:$(this).attr("href")', 'success' => 'js:function(data) { $.fn.yiiGridView.update("ordinance-grid")}'),
            				'class'=>'delete icon-circle-arrow-left', 
            				'title'=>'Retrieve'),
        			),
    			)      
		)
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->
