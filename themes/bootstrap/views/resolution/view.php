<?php
/* @var $this ResolutionController */
/* @var $model Resolution */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Resolutions'=>array('index'),
	$model->res_no,
);

$this->menu=array(
	array('label'=>'List Resolution', 'url'=>array('admin')),
	array('label'=>'For Resolution','url'=>array('resolutionList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
	array('label'=>'Update Resolution', 'url'=>array('update', 'id'=>$model->res_no)),
	array('label'=>'Delete Resolution', 'url'=>'#','visible'=> $role=='SYSAD'? true:false, 'linkOptions'=>array('submit'=>array('delete','id'=>$model->res_no),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'View Archived Resolution', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
	
);
?>


<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Resolution # '.$model->res_no,
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
        'res_no',
		'ctrl_no',
		'subj_matter',
		array('name'=>'author','value'=>$model->getAuthorView()),
		array('name'=>'input_by','value'=>$model->inputBy->Fullname),
		'date_passed',
		array('name'=>'reso_file','type'=>'raw','value'=>CHtml::link($model->reso_file,array("resolution/download","id"=>$model->res_no))),
		

    ),
));
?>
</div>

<?php $this->endWidget(); ?>

