<?php
/* @var $this ReferralController */
/* @var $model Referral */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Referrals'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Referral', 'url'=>array('admin')),
	array('label'=>'Communications for Referral','url'=>array('referralList'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,),
	array('label'=>'View Archived Referrals', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#referral-grid').yiiGridView('update', {
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
		'title' => 'Search Referrals' ,
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
        'id'=>'referral-grid',
	'dataProvider'=>$model->search(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		array('header'=>'Control No.','type'=>'raw','value'=>'CHtml::link($data->ctrl_no,array("referral/download","id"=>$data->ref_id))'),
		//'date_referred',
		array('name'=>'subject_matter','type'=>'raw','value'=>'$data->ctrlNo->subject_matter','htmlOptions'=>array('style'=>'width:40%;')),
		array('header'=>'Lead Committee','value'=>'$data->leadCommittee->comm_name'),
		array('header'=>'Joint Committee','value'=>'$data->Joints'),
		/*
		'ind_letter',
		'input_by',
		*/
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%; text-align:center;'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,
			'class' => 'bootstrap.widgets.TbButtonColumn','template'=>$role=='SYSAD'? '{view}{update}{delete}':'{view}', 
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