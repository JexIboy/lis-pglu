<?php
	$role=Yii::app()->user->getState("roles");
	$this->breadcrumbs=array(
		'Resolutions'=>array('index'),
		'Manage',
		);

		$this->menu=array(
		array('label'=>'Add old Resolution', 'url'=>array('addoldreso'),'visible'=>$role == 'SYSAD' ?true:false,),
		array('label'=>'List Resolution', 'url'=>array('admin')),
		array('label'=>'For Resolution', 'url'=>array('resolutionList'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,),
		array('label'=>'View Archived Resolution', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-T' || $role=='SYSAD'? true:false,)
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

	<?php echo CHtml::link('Advanced Search','#',array('class'=>'btn search-button btn-success','style'=>'color:white;')); ?>
		<div class="search-form" style="display:none">
			<?php $this->renderPartial('_search',array(
				'model'=>$model,
			));  
	?>
		</div><!-- search-form -->

	<?php
		$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Search Resolution' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
                                'style'=>'width:98%;',
		) 
		));
	?>
	<div class="span8">
		<?php
		$this->widget('bootstrap.widgets.TbGridView', array(
	        'id'=>'resolution-grid',
			'dataProvider'=>$model->search(),
			'template'=>"{items}{pager}",
			'filter'=>$model,
			'columns'=>array(
				array('header'=>'No.','value'=>'$row+1'),
				array('name'=>'res_no','type'=>'raw','value'=>'CHtml::link($data->res_no,array("resolution/download","id"=>$data->res_no))'),
				//'ctrl_no',
				array('name'=>'subj_matter','value'=>'$data->subj_matter','htmlOptions'=>array('class'=>'span4')),
				array('name'=>'author','value'=>'$data->getAuthor()','htmlOptions'=>array('class'=>'span3')),
				//'reso_file',
				//'input_by',
				//'date_passed',
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
	</div><!-- form -->
	<?php $this->endWidget();  ?>


