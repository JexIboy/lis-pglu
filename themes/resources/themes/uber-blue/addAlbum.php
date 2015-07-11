<div id="albumForm">
<?php
$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Create Album:'  ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table',
		) 
) );
?>

<br>
<div class="span4">

<?php 
$form = $this->beginWidget(
    'bootstrap.widgets.TbActiveForm',
    array(
        'id' => 'verticalForm',
        'htmlOptions' => array('enctype' => 'multipart/form-data'), // for inset effect
    )
);?>
 
<?php  $this->widget('CMultiFileUpload',
  array(
       'model'=>$photoModel,
       'attribute' => 'file',
       'accept'=> 'doc|docx|pdf|txt',
       'denied'=>'Only doc,docx,pdf and txt are allowed', 
       'max'=>4,
       'remove'=>'[x]',
       'duplicate'=>'Already Selected',
                          
       )
        );?>
<?php echo $form->error($photoModel,'file'); ?>

 <?php
$this->endWidget();
$this->endWidget();
?>

</div><!-- form -->
</div><!-- search-form -->