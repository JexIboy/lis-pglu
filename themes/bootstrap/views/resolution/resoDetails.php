<?php $box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Resolution' ,
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' 
		) 
) );


?>

<?php 
$this->widget('bootstrap.widgets.TbExtendedGridView', array(
'type'=>'striped bordered',
'id'=>'resolution-grid',
'dataProvider' => $dataProvider,
'template' => "{items}\n{extendedSummary}",
'columns' => 
		//grid columns
		array (
			
		),
		
				
));
?>

<?php $this->endWidget(); ?>