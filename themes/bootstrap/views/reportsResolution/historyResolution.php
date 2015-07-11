<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Resolution Reports',
);
$this->menu=array(
         array('label'=>'Resolution History Report', 'url'=>array('/reportsResolution/historyResolution')),
        array('label'=>'Monthly Resolution Report', 'url'=>array('/reportsResolution/monthlyResolution')),
        array('label'=>'Fiscal Resolution Report', 'url'=>array('/reportsResolution/yearlyResolution')),
        array('label'=>'Authored Resolutions', 'url'=>array('/reportsResolution/authoredYearlyResolution')),)
?>
<?php Yii::app()->clientScript->registerScript('search', "

$('.search-form form').submit(function(){
	$('#history-resolution-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>


<div class="search-form">
<?php $this->renderPartial('searchResoHistory',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Resolution History Report',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%; text-align:center; margin-top:1%;',
		),
               		
		
)
 );
?>

<div>
<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'history-resolution-grid',
		'dataProvider' => $model->search(),
		'htmlOptions'=>array('style'=>'width:100%;'),
        'template'=>"{items}{pager}",
        'filter'=>$model,
		'columns' => array (
				array('header'=>'No.','value'=>'$row+1','htmlOptions'=>array('style'=>'width:10%;')),
				array('name'=>'res_no','type'=>'raw','value'=>'CHtml::link($data->res_no,array("resolution/download","id"=>$data->res_no))'),
				'subj_matter',
				//array('header'=>'Date Agenda','value'=>'$data->ctrlNo->ctrlNo->date_agenda'),
				//array('header'=>'Date Referred','value'=>'$data->getReferralDate($data->ctrlNo->ctrlNo->ctrl_no)'),
				//array('header'=>'Date Meeting','value'=>'$data->getCommMeetings($data->ctrl_no)'),
               // array('header'=>'Date Reported','value'=>'$data->getReportDate($data->ctrlNo->ctrl_no)'),  
                array('name'=>'date_passed','value'=>'$data->date_passed','htmlOptions'=>array('style'=>'width:20%;')),
                array(	'header'=>'Action',
    'class'=>'CButtonColumn',
    'template'=>'{print}',
    'buttons'=>array
    (
        'print' => array
        (
            'label'=>'',
            'imageUrl'=>false,
            'url'=>'Yii::app()->controller->createUrl("reportsResolution/printResolutionHistory",array("model"=>$data->res_no))',
            'options'=>array('class'=>'icon-print', 'title'=>'Print History'),
        ),
    )      
		)       
		) 
) );
?>


<?php $this->endWidget(); ?>

</div>