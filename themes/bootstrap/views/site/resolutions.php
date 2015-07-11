<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Resolutions',
);


/* @var $this ResolutionController */
/* @var $model Resolution */

$this->menu=array(
	array('label'=>'Search Resolutions', 'url'=>array('site/resolutions')),
	array('label'=>'Search Ordinances', 'url'=>array('site/ordinances'))
		);


Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#resolution-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Resolutions' ,
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
        'id'=>'resolution-grid',
	'dataProvider'=>$model->search(),
	'htmlOptions'=>array('style'=>'width:100%;'),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		'res_no',
		array('name'=>'subj_matter','value'=>'$data->subj_matter','htmlOptions'=>array('style'=>'width:40%;')),
		'date_passed',
		array('header'=>'Author','value'=>'$data->getAuthor()','htmlOptions'=>array('style'=>'width:30%;')),
		//'reso_file',
		//'input_by',
		
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->
