<?php

class AgencyController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view','create','update','admin','delete'),
				'roles'=>array('SYSAD'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		
		$activity=new Activity();
		$activity->act_desc='Viewed Agency ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Agency;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Agency']))
		{
			$model->attributes=$_POST['Agency'];
			if($model->save())
				
				$activity=new Activity();
				$activity->act_desc='Added Another Agency';
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();

				$this->redirect(array('view','id'=>$model->agency_id));

		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Agency']))
		{
			$model->attributes=$_POST['Agency'];
			if($model->save())
				
				$activity=new Activity();
				$activity->act_desc='Updated Agency ID :'.$model->agency_id.' Information';
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();

				$this->redirect(array('view','id'=>$model->agency_id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		
		$activity=new Activity();
		$activity->act_desc='Deleted Agency ID: '.$id.'Information';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		/*$dataProvider=new CActiveDataProvider('Agency');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/
		$this->redirect(array('admin'));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		
		$activity=new Activity();
		$activity->act_desc='Viewed Agency List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new Agency('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Agency']))
			$model->attributes=$_GET['Agency'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Agency the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Agency::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Agency $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='agency-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
