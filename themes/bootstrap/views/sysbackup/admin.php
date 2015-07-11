<?php
/* @var $this SysbackupController */
/* @var $model Sysbackup */

$this->breadcrumbs=array(
	'System Back-up'=>array('index'),
	'List',
);

$this->menu=array(
	array('label'=>'List of Back-up Database', 'url'=>array('index')),
	array('label'=>'Backup Current Database', 'url'=>array('sysBackup')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#sysbackup-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>


</div><!-- search-form -->



<?php
$this->widget('bootstrap.widgets.TbAlert', array(
    'block' => true,
    'fade' => true,
    'closeText' => '&times;', // false equals no close link
    'events' => array(),
    'htmlOptions' => array('style'=>'margin-right:2%;'),
    'userComponentId' => 'user',
    'alerts' => array( // configurations per alert type
        // success, info, warning, error or danger
        'success' => array('closeText' => '&times;'),
    ),
));
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Search Database' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:98%;',
		) 
) );
?>
<div class="span8">
<?php

$this->widget('bootstrap.widgets.TbGridView', array(
        'id'=>'sysbackup-grid',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('name'=>'db_id','value'=>'$data->db_id','htmlOptions'=>array('style'=>'width:10%;')),
		'db_name',
		'date_backed_up',
		array('header'=>'Backed-up By','value'=>'$data->backedUpBy->emp->Fullname'),
		array('header'=>'Action','class'=>'CButtonColumn',
    					'template'=>'{sysRestore} {download}',
    					'buttons'=>array(
        							'sysRestore' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("sysbackup/sysRestore",array("id"=>$data->db_id))',
            						'options'=>array('class'=>'icon-refresh','title'=>'Restore'),
        							),
        							'download' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("sysBackup/download",array("id"=>$data->db_id))',
            						'options'=>array('class'=>'icon-download','title'=>'Download Sql File'),
       								 ),
    							),      
			) ,
	),
));
?>


</div><!-- form -->
<?php $this->endWidget();  ?>
