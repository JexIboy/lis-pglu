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

Yii::app()->clientScript->registerScript('search', "
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
		'title' => 'Search Ordinance' ,
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
	'dataProvider'=>$model->search(),
	'htmlOptions'=>array('style'=>'width:125%;'),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('name'=>'ord_no','type'=>'raw','value'=>'CHtml::link($data->ord_no,array("ordinance/download","id"=>$data->ord_no))','htmlOptions'=>array('style'=>'width:10%;')),
		'subj_matter',
		//'meeting_ordi_id',
		array('header'=>'Author','value'=>'$data->getAuthor()','htmlOptions'=>array('style'=>'width:20%;')),
		array('header'=>'First Reading','value'=>'$data->firstreading','htmlOptions'=>array('style'=>'width:10%;')),
		array('header'=>'Second Reading','value'=>'$data->secondreading','htmlOptions'=>array('style'=>'width:10%;')),
		array('header'=>'Third Reading','value'=>'$data->thirdreading','htmlOptions'=>array('style'=>'width:10%;')),
		array('header'=>'Date Passed','value'=>'$data->date_passed','htmlOptions'=>array('style'=>'width:10%;')),
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%; text-align:center;','visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
			'class' => 'bootstrap.widgets.TbButtonColumn' ,'template'=>$role=='SYSAD'? '{view}{update}{delete}':'{view}', 
			'buttons'=>array(
        		'delete' => array(
            		'label'=>'Move to Archive',
        			),
    			), 
		),
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->
