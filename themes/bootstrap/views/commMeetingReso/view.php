<?php
/* @var $this CommMeetingResoController */
/* @var $model CommMeetingReso */
$role=Yii::app()->user->getState("roles");
$this->breadcrumbs=array(
	'Comm Meeting Resos'=>array('index'),
	$model->meeting_reso_id,
);

$this->menu=array(
	array('label'=>'List Committee Meeting', 'url'=>array('index')),
	array('label'=>'For Committee Meeting', 'url'=>array('commMeetingList'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,),
	array('label'=>'Update Committee Meeting', 'url'=>array('update', 'id'=>$model->meeting_reso_id)),
	array('label'=>'Delete Committee Meeting', 'url'=>'#','visible'=> $role=='SYSAD'? true:false, 'linkOptions'=>array('submit'=>array('delete','id'=>$model->meeting_reso_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'View Archived Committee Meeting', 'url'=>array('viewArchive'),'visible'=>$role == 'SCR-RF' || $role=='SYSAD'? true:false,)
);
?>


<?php
$x=CommMeetingReso::model()->findByPK($model->meeting_reso_id);
$act='';
if($x->action_taken==0){
	$act='disabled';
}
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'View Committee Meeting # '.$x->meeting_reso_id,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'headerButtons' => array(
				array('class' => 'bootstrap.widgets.TbButton',
					   'type' => 'primary',
					  'label' => 'Insert Committee Report',
					  'disabled' => $act,
					  'htmlOptions' => array(
					  			'id'=>'modalButton',
            					'data-toggle' => 'modal',
            					'data-target' => '#myModal',
        				),
		), ),
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:98%;',
		)   
) );
?>
<br>

<div class="span8">


<?php 
$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$x,
    'attributes'=>array(
		array('label'=>'Control No.','value'=>$x->ref->ctrl_no),
		array('name'=>'action_taken','value'=>$x->ActionTaken),
		'date_meeting',
		array('name'=>'input_by','value'=>$x->inputBy->Fullname),
		'comm_report',
		array('name'=>'comm_rep_file','type'=>'raw','value'=>CHtml::link($model->comm_rep_file,array("commMeetingReso/download","id"=>$model->meeting_reso_id))),
		//'comm_meeting_stat',
    ),
));
?>
</div>

<?php $this->endWidget(); ?>

<?php $this->renderPartial('addCommReport',array('model'=>$model));?>

<script type="text/javascript">    

       $(document).ready(function(){
    var act = '<?php echo ($x->action_taken)?>';

    var comm = '<?php echo ($x->comm_report)?>';
        
        
        
        if((act==0)){
        	$('#modalButton').hide();
        }
        else if((act!=0) && (comm.length != 0)){
        	$('#modalButton').hide();
        }
        else if((comm.length!=0) && (act==0)){
        	$('#modalButton').hide();
        }
        
        
        
      });
      
</script>