<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle=Yii::app()->name . ' - Login';
$this->breadcrumbs=array(
	'Login',
);
?>

<div id="login">
<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' => 'Login',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:500px;',
		) 
) );
?>

<div class="form">

<?php

$form = $this->beginWidget ( 'bootstrap.widgets.TbActiveForm', array (
		'id' => 'login-form',
		'type' => 'horizontal',
		'enableClientValidation' => true,
                'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
		) ,
		'clientOptions' => array (
				'validateOnSubmit' => true 
		) 
) );
?>
 <br>

	<?php echo $form->textFieldRow($model,'username'); ?>
	<?php
	echo $form->passwordFieldRow ( $model, 'password', array ()
	 );
	?>
	<?php echo $form->checkBoxRow($model,'rememberMe'); ?>

	<div class="form-actions">
		<?php
		
		$this->widget ( 'bootstrap.widgets.TbButton', array (
				'buttonType' => 'submit',
				'type' => 'primary',
				'label' => 'Login' 
		) );
		?>
	</div>

<?php $this->endWidget(); ?>
<?php $this->endWidget(); ?>

</div>
<!-- form -->
</div>
