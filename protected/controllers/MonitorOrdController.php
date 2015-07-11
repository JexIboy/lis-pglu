<?php

class MonitorOrdController extends Controller
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
				'actions'=>array('download','view','create','update'),
				'roles'=>array('SCR-T', 'SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('delete'),
				'roles'=>array('SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('admin','index','downloadOrdinance'),
				'roles'=>array('SCR-RF','SCR-RC','BOKAL','VG','SCR-BOK', 'SCR-T', 'SYSAD'),
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
	public function actionDownloadOrdinance($id){
		
		$activity=new Activity();
		$activity->act_desc='Downloaded Ordinance No. '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

        $model = Ordinance::model()->findByPK($id);
        $year=substr($model->ord_no, strlen($model->ord_no)-4);
        $file= $model->ordi_file;
        
        if (file_exists(Yii::getPathOfAlias('webroot').'/protected/document/Ordinance/'.$year.'/'.$model->ord_no.'/'.$file)) {
		    header('Content-Description: File Transfer');
		    header('Content-Type: application/octet-stream');
		    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/document/Ordinance/'.$year.'/'.$model->ord_no.'/'.$file));
		    header('Content-Transfer-Encoding: binary');
		    header('Expires: 0');
		    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
		    header('Pragma: public');
		    header('Content-Length: ' . filesize(Yii::getPathOfAlias('webroot').'/protected/document/Ordinance/'.$year.'/'.$model->ord_no.'/'.$file));
		    ob_clean();
		    flush();
		    readfile(Yii::getPathOfAlias('webroot').'/protected/document/Ordinance/'.$year.'/'.$model->ord_no.'/'.$file);
		    exit;
		}
	}
	public function actionDownload($id){
		
		$activity=new Activity();
		$activity->act_desc='Downloaded Monitor Ordinance Form';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

        $model = MonitorOrd::model()->findByPK($id);
        $year=substr($model->ord_no, strlen($model->ord_no)-4);
        $file= $model->monitor_form;

        if (file_exists(Yii::getPathOfAlias('webroot').'/protected/document/monitorOrd/'.$year.'/'.$model->ord_no.'/'.$file)) {
		    header('Content-Description: File Transfer');
		    header('Content-Type: application/octet-stream');
		    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/document/monitorOrd/'.$year.'/'.$model->ord_no.'/'.$file));
		    header('Content-Transfer-Encoding: binary');
		    header('Expires: 0');
		    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
		    header('Pragma: public');
		    header('Content-Length: ' . filesize(Yii::getPathOfAlias('webroot').'/protected/document/monitorOrd/'.$year.'/'.$model->ord_no.'/'.$file));
		    ob_clean();
		    flush();
		    readfile(Yii::getPathOfAlias('webroot').'/protected/document/monitorOrd/'.$year.'/'.$model->ord_no.'/'.$file);
		    exit;	
		}
	}

	public function actionView($id)
	{
		
		$activity=new Activity();
		$activity->act_desc='Viewed Monitor Ordinance ID: '.$id;
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
		$model=new MonitorOrd;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['MonitorOrd']))
		{
			$model->attributes=$_POST['MonitorOrd'];
			$model->last_updated=date('Y-m-d');
			$model->agency_id=implode(',', $model->agency_id);
			$model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			$model->archive=0;
			$picture_name='';
            $picture_file = CUploadedFile::getInstance($model,'monitor_form');
            $model->monitor_form=$picture_file;
            
            if($picture_file){ 

                $picture_name = $picture_file->name;

                if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y'))){
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y'));
                }

				if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no)){
				 mkdir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no);
				 $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no.'/'.$picture_file->getName());

				}
				else{
				 $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no.'/'.$picture_file->getName());
				}
            }

			if($model->save()) {
				$activity=new Activity();
				$activity->act_desc='Added Another Monitor Ordinance';
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();
				$this->redirect(array('view','id'=>$model->monitor_id));
			}			
		
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

		if(isset($_POST['MonitorOrd']))
		{
			$model->attributes=$_POST['MonitorOrd'];
			$model->attributes=$_POST['MonitorOrd'];
			$model->last_updated=date('Y-m-d');
			$model->agency_id=implode(',', $model->agency_id);
			$model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			$model->archive=0;
			$picture_name='';
            $picture_file = CUploadedFile::getInstance($model,'monitor_form');
            $model->monitor_form=$picture_file;
            
            if($picture_file){ 

            	$picture_name = $picture_file->name;

	            if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y'))) {
	            	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y'));
	            }

				if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no)){
					mkdir(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no);
					$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no.'/'.$picture_file->getName());
				} else {
					$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/MonitorOrd/'.date('Y').'/'.$model->ord_no.'/'.$picture_file->getName());
				}
            }
			if($model->save()) {				
				$activity=new Activity();
				$activity->act_desc='Updated Monitor Ordinance ID: '.$id;
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();
				$this->redirect(array('view','id'=>$model->monitor_id));				
			}

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
		//$this->loadModel($id)->delete();
		$x=MonitorOrd::model()->findByPk($id);
		$x->archive=1;
		$x->save();
		
		$activity=new Activity();
		$activity->act_desc='Archived Monitor Ordinance ID: '.$id;
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
		/*$dataProvider=new CActiveDataProvider('MonitorOrd');
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
		$activity->act_desc='Viewed Monitor Ordinance List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new MonitorOrd('search');
		$model->unsetAttributes();  // clear any default values

		if(isset($_GET['MonitorOrd'])) {
			$model->attributes=$_GET['MonitorOrd'];
						
			if(!empty($model->agency_id)){
            	$u=implode(',',$model->agency_id);
            	$model->agency_id=$u;
            } else {
                $model->agency_id='';
            }
		}			

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return MonitorOrd the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=MonitorOrd::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param MonitorOrd $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='monitor-ord-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
