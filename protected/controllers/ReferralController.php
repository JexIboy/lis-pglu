<?php

class ReferralController extends Controller
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
				'actions'=>array('download','index','view','create','update','admin','referralList','referraldue','printReferraldue','viewArchive','retrieve'),
				'roles'=>array('SCR-RF','BOKAL','SCR-BOK'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('download','delete','viewArchive','retrieve'),
				'roles'=>array('SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('admin','index','referralList','download','view'),
				'roles'=>array('SCR-T','SCR-RC','BOKAL','VG','SCR-BOK'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	public function actionDownload($id){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Downloaded Indorsement Letter';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

            $model = Referral::model()->findByPK($id);
            $year=substr($model->ctrl_no, 0,4);
            $file= $model->ind_letter;
        if (file_exists(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.$year.'/'.$model->ctrl_no.'/'.$file)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.$year.'/'.$model->ctrl_no.'/'.$file));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0'); 
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
    header('Pragma: public');
    header('Content-Length: ' . filesize(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.$year.'/'.$model->ctrl_no.'/'.$file));
    ob_clean();
    flush();
    readfile(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.$year.'/'.$model->ctrl_no.'/'.$file);
    exit;
		}else{
			
		}	
	}
	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionReferralList(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Communication for Referral List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new Communication('forReferral');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Communication']))
			$model->attributes=$_GET['Communication'];

		$this->render('referralList',array(
			'model'=>$model,
		));
	}

public function actionReferraldue(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Referral Due List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new Referral('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Referral']))
			$model->attributes=$_GET['Referral'];

			if(!empty($model->joint_committee)){
                        $x=implode(',',$model->joint_committee);
                        $model->joint_committee=$x;
                        }
                        else{
                            $model->joint_committee='';
                        }
		$this->render('referraldue',array(
			'model'=>$model,
		));
	}


public function actionPrintReferraldue(){
	 $model =Referral::model()->findAll(array('condition' => 'referral_stat=0 and now() > duedate',
                'order' => 'duedate ASC',        
        ));
		$this->renderPartial('printReferraldue',array(
				'model'=>$model
		));
	}
	
	public function actionView($id)
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Referral ID: '.$id;
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
	public function actionCreate($id)
	{
		$model=new Referral;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		if(isset($_POST['Referral']))
		{

			$model->attributes=$_POST['Referral'];
			$model->lead_committee=implode(',',$model->lead_committee);
			$model->archive=0;
			$picture_name='';
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
                $picture_file = CUploadedFile::getInstance($model,'ind_letter');
                $model->ind_letter=$picture_file;
// has the user uploaded a new file?
                
                
                if($picture_file){ 
                $picture_name = $picture_file->name;
                          if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4))){
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4));
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4).'/'.$model->ctrl_no);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());

                            }
                            else{
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4).'/'.$model->ctrl_no);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());
                            }
                }

                
                if(!empty($model->joint_committee)){
                        $b=implode(',',$model->joint_committee);
                        $model->joint_committee=$b;
                        }

                $model->referral_stat=0;
                $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
               
                
			if($model->save()){
				date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Added Another Referral';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

    					$stat=Status::model()->findByAttributes(array('ctrl_no'=>$model->ctrl_no));
						$stat->comm_stat=1;
						$stat->save();
						$activity->save();

						Communication::model()->updateByPk($model->ctrl_no,array('comm_stat'=>1));

				$this->redirect(array('view','id'=>$model->ref_id));
		}
	}

		$this->render('create',array(
			'model'=>$model,'id'=>$id
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
		$model->lead_committee=explode(',',$model->lead_committee);
		$model->joint_committee=explode(',',$model->joint_committee);
		if(isset($_POST['Referral']))
		{

			$model->attributes=$_POST['Referral'];
			$model->archive=0;
			$picture_name='';
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
                $picture_file = CUploadedFile::getInstance($model,'ind_letter');
                $model->ind_letter=$picture_file;
// has the user uploaded a new file?
                
                
                if($picture_file){ 
                $picture_name = $picture_file->name;
                          if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4))){
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4));
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());
                                                          
                            }
                            else{
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/referral/'.substr($model->ctrl_no, 0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());
                            }
                }

                $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;

                if(!empty($model->joint_committee)){
                        $b=implode(',',$model->joint_committee);
                        $model->joint_committee=$b;
                        }
               $model->lead_committee=implode(',',$model->lead_committee);
                
			if($model->save())
				date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Updated Referral ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				$this->redirect(array('view','id'=>$model->ref_id));
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
		Referral::model()->updateByPK($id,array('archive'=>1));
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Archived Referral ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	public function actionRetrieve($id)
	{
		Referral::model()->updateByPK($id,array('archive'=>0));
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Retrieved Referral ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('viewArchive'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		/*$dataProvider=new CActiveDataProvider('Referral');
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
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Referral List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new Referral('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Referral']))
			$model->attributes=$_GET['Referral'];

			if(!empty($model->joint_committee)){
                        $x=implode(',',$model->joint_committee);
                        $model->joint_committee=$x;
                        }
                        else{
                            $model->joint_committee='';
                        }
		$this->render('admin',array(
			'model'=>$model,
		));
	}
	public function actionViewArchive()
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Archived Referral List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new Referral('viewArchive');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Referral']))
			$model->attributes=$_GET['Referral'];

			if(!empty($model->joint_committee)){
                        $x=implode(',',$model->joint_committee);
                        $model->joint_committee=$x;
                        }
                        else{
                            $model->joint_committee='';
                        }
		$this->render('viewArchive',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Referral the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Referral::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Referral $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='referral-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
