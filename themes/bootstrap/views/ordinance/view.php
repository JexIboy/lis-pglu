<?php
/* @var $this OrdinanceController */
/* @var $model Ordinance */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Ordinances'=>array('index'),
	$model->ord_no,
);

$this->menu=array(
	array('label'=>'List Ordinance', 'url'=>array('index')),
	array('label'=>'For Ordinance', 'url'=>array('ordinanceList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'Update Ordinance', 'url'=>array('update', 'id'=>$model->ord_no)),
	array('label'=>'Delete Ordinance', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ord_no),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'View Archived Ordinance', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
);
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Ordinance # '.$model->ord_no,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:853px;',
		) 
) );
?>
<br>
<div class="span8">
<?php 

$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'attributes'=>array(
        'ord_no',
        'subj_matter',
		//array('name'=>'meeting_ordi_id','value'=>$model->meetingOrdi->ControlNumber),
		'firstreading',
		'secondreading',
		'thirdreading',
		'date_passed',
		array('name'=>'author','value'=>$model->AuthorView),
		array('name'=>'imp_agency','value'=>$model->AgencyView),
		array('name'=>'input_by','value'=>$model->inputBy->Fullname),
		array('name'=>'ordi_file','type'=>'raw','value'=>CHtml::link($model->ordi_file,array("ordinance/download","id"=>$model->ord_no))),
		array('name'=>'amend','type'=>'raw','value'=>CHtml::link($model->amend,array("ordinance/download","id"=>$model->amend))),
    ),
));
?>
</div>

<?php $this->endWidget(); ?>