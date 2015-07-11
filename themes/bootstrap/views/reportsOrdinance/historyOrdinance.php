
<?php
/* @var $this ResolutionController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
    'Ordinance Reports',
);


$this->menu=array(
        array('label'=>'Ordinance History Report', 'url'=>array('reportsOrdinance/historyOrdinance')),
        //array('label'=>'Monthly Ordinance Report', 'url'=>array('reportsOrdinance/monthlyOrdinance')),
        array('label'=>'Ordinance Report', 'url'=>array('reportsOrdinance/yearlyOrdinance')),
        array('label'=>'Authored Ordinance Report', 'url'=>array('reportsOrdinance/authoredYearlyOrdinance')),);
?>
<?php Yii::app()->clientScript->registerScript('search', "

$('.search-form form').submit(function(){
	$('#history-ordinance-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>
<div class="search-form">
<?php $this->renderPartial('searchHistoryOrdinance',array('model'=>$model));?>
</div>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Ordinance History Report',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:129%; text-align:center; margin-left:-20%; margin-top:7%;',
		),
               		
		
)
 );
?>

<?php

$this->widget ( 'bootstrap.widgets.TbGridView', array (
		'id' => 'history-ordinance-grid',
		'dataProvider' => $model->search(),
		'htmlOptions'=>array('style'=>'padding:5px'),
        'template'=>"{items}{pager}",
		'columns' => array (
				array('name'=>'ord_no','type'=>'raw','value'=>'CHtml::link($data->ord_no,array("ordinance/download","id"=>$data->ord_no))','htmlOptions'=>array('style'=>'width:10%;')),
				'subj_matter',
				array('header'=>'Date Agenda','value'=>'$data->getAgendaDate($data->meeting_ordi_id)'),
				array('header'=>'Date Referred','value'=>'$data->getReferralDate($data->meeting_ordi_id)'),
				array('header'=>'Date Meeting','value'=>'$data->getCommMeetings($data->meeting_ordi_id)'),
                array('header'=>'Date Reported','value'=>'$data->getReportDate($data->meeting_ordi_id)'),  
                array('header'=>'First Reading','value'=>'Ordinance::model()->FindByPk($data->ord_no)->firstreading'),  
                array('header'=>'Second Reading','value'=>'Ordinance::model()->FindByPk($data->ord_no)->secondreading'),  
                array('header'=>'Third Reading','value'=>'Ordinance::model()->FindByPk($data->ord_no)->thirdreading'),  
                'date_passed',
                array('header'=>'Action','class'=>'CButtonColumn',
    					'template'=>'{print}',
    					'buttons'=>array(
        							'print' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("reportsOrdinance/printOrdinanceHistory",array("model"=>$data->ord_no))',
            						'options'=>array('class'=>'icon-print','title'=>'Print History'),
        ),
    )      
		)          
				
		) 
) );
?>


<?php $this->endWidget(); ?>

