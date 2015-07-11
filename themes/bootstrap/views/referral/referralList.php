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
	array('label'=>'View Archived Referrals', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,)
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



<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Communications For Referral' ,
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
        'id'=>'communication-grid',
	'dataProvider'=>$model->forReferral(),
	'template'=>"{items}{pager}",
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'No.','value'=>'$row+1'),
		'ctrl_no',
		'subject_matter',
		array('header'=>'Origin','value'=>'$data->orig->orig_name'),
		'date_agenda',
		/*
		'date_received',
		array('header'=>'Category','value'=>'$data->cat->cat_name'),
		'input_by',
		'comm_letter',
		*/
		array('header'=>'Action','htmlOptions'=>array('style'=>'width:10%; text-align:center;'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,
			'class' => 'bootstrap.widgets.TbButtonColumn','template'=>'{referral}', 
			'buttons'=>array(
        		'referral' => array(
            						'label'=>'',
            						'imageUrl'=>false,
            						'url'=>'Yii::app()->controller->createUrl("referral/create",array("id"=>$data->ctrl_no))',
            						'options'=>array('class'=>'icon-share-alt','title'=>'Add to Referral'),
        			),
    			), 

		),
	),
));
?>
<?php $this->endWidget(); ?>

</div><!-- form -->