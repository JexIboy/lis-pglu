<?php
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Communications'=>array('#'),
);

$this->menu=array(
	array('label'=>'List Communication', 'url'=>array('admin')),
	array('label'=>'Add Communication', 'url'=>array('create')),
	array('label'=>'View Archived Communications', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RC' || $role=='SYSAD'? true:false,)
);
?>

<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Communications' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:100%;',
		) 
) );
?>
<?php
$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'communication-grid',
	'dataProvider'=>$model,
	
	//'template'=>"{items}{pager}",
	'pager'=>array(
            'class'=>'LinkPager',
            
            'firstPageLabel'=>'FIRST',
            'lastPageLabel'=>'LAST',
            'nextPageLabel'=>'NEXT',
            'prevPageLabel'=>'BACK',
            'header'=>'',
            ),
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1','htmlOptions'=>array('style'=>'width:7%;')),
		array('name'=>'ctrl_no','type'=>'raw','value'=>'CHtml::link($data->ctrl_no,array("communication/download","id"=>$data->ctrl_no))'),
		array('name'=>'subject_matter','value'=>'$data->subject_matter','htmlOptions'=>array('style'=>'width:50%;')),
		//array('header'=>'Origin','value'=>'$data->orig->orig_name','htmlOptions'=>array('style'=>'width:10%;')),
		'date_agenda',
		/*
		'date_received',
		array('header'=>'Category','value'=>'$data->cat->cat_name'),
		'input_by',
		'comm_letter',
		*/
		array(	'header'=>'Type of Communication',
    'class'=>'CButtonColumn',
    'htmlOptions'=>array('style'=>'width:20%; text-align:center;'),
    'template'=>'U{urgent} NU{xurgent}',
    'buttons'=>array
    (
        'urgent' => array
        (
            'label'=>'',
            'imageUrl'=>false,
            'url'=>'Yii::app()->controller->createUrl("communication/urgentComm",array("id"=>$data->ctrl_no))',
            'options'=>array('class'=>'icon-folder-close','title'=>'Urgent'),
        ),
        'xurgent' => array
        (
            'label'=>'',
            'imageUrl'=>false,
            'url'=>'Yii::app()->controller->createUrl("communication/xurgentComm",array("id"=>$data->ctrl_no))',
            'options'=>array('class'=>'icon-folder-open','title'=>'Not Urgent'),
        ),
    )      
		) 
	),
));
?>
<?php $this->endWidget(); ?>
