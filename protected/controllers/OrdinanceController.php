<?php

class OrdinanceController extends Controller
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
				'actions'=>array('viewArchive','retrieve','index','view','create','update','admin','download','ordinanceList'),
				'roles'=>array('SCR-T','SCR-RF','SCR-RC','SCR-BOK','BOKAL'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('viewArchive','retrieve','delete','download','addoldordi'),
				'roles'=>array('SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('admin','index','download'),
				'roles'=>array('SCR-RF','BOKAL','VG','SCR-BOK','SCR-RC'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	public function actionAddoldordi()
	{
		$model=new Ordinance;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		if(isset($_POST['Ordinance']))
		{
			$model->attributes=$_POST['Ordinance'];
			$model->archive=0;
			$picture_name='';
                $picture_file = CUploadedFile::getInstance($model,'ordi_file');
                $model->ordi_file=$picture_file;   
                if($picture_file){ 
                $picture_name = $picture_file->name;
                if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9))){
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9));
                }

                          if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no)){
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no.'/'.$picture_file->getName());

                            }
                            else{
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no.'/'.$picture_file->getName());
                            }
                }
                $model->author=implode(',',$model->author);
                $model->imp_agency=implode(',',$model->imp_agency);
                $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;

                //-------------------------------------------------
                
			if($model->save() && $model->validate()){
				date_default_timezone_set("Asia/Manila");
				$activity=new Activity();
				$activity->act_desc='Added Another Ordinance';
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();
				$this->redirect(array('view','id'=>$model->ord_no));
		}}

				$this->render('addoldordi',array(
				'model'=>$model));
	}
	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionOrdinanceList(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Committee Meeting List for Ordinance';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new CommMeetingOrdi('forOrdinance');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['CommMeetingOrdi']))
			$model->attributes=$_GET['CommMeetingOrdi'];

		$this->render('ordinanceList',array(
			'model'=>$model,
		));
	}
	public function actionView($id)
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Ordinance No. '.$id;
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
	public function actionDownload($id){
		date_default_timezone_set("Asia/Manila");
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
		}else{
			
		}	
	}


	public function actionCreate($id)
	{
		$model=new Ordinance;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		$count=count(Ordinance::model()->findAll())+1;
	
			if($count<=99){
				if($count<=9){
					$count='00'.$count.' - '.date('Y');
				}else{
					$count='0'.$count.' - '.date('Y');
				}
			}
		else{
			$count=$count.' - '.date('Y');
		}
		if(isset($_POST['Ordinance']))
		{
			$model->attributes=$_POST['Ordinance'];
			$x=CommMeetingOrdi::model()->find(array('condition'=>'comm_report IS NOT NULL and ref_id = '.Referral::model()->findByAttributes(array('ctrl_no'=>$model->meeting_ordi_id))->ref_id))->meeting_ordi_id;
			$model->meeting_ordi_id=$x;
			$model->archive=0;
			$picture_name='';
                $picture_file = CUploadedFile::getInstance($model,'ordi_file');
                $model->ordi_file=$picture_file;
                
                if($picture_file){ 
                $picture_name = $picture_file->name;
                if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9))){
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9));
                }

                          if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no)){
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no.'/'.$picture_file->getName());

                            }
                            else{
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.substr($model->ord_no,6,9).'/'.$model->ord_no.'/'.$picture_file->getName());
                            }
                }

                $model->author=implode(',',$model->author);
                $model->imp_agency=implode(',',$model->imp_agency);
                $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;

                //-------------------------------------------------
                $stat=Status::model()->findByAttributes(array('ctrl_no'=>$model->meetingOrdi->ref->ctrl_no));
						$stat->remarks=1;
						$stat->save();
						
						CommMeetingOrdi::model()->updateByPK($model->meeting_ordi_id,array('comm_meeting_stat'=>1,'ord_remark'=>1));
						
			if($model->save() && $model->validate())
				date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Added Another Ordinance';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				$this->redirect(array('view','id'=>$model->ord_no));
		}

		$this->render('create',array(
			'model'=>$model,'count'=>$count,'id'=>$id
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
		$model->author=explode(',',$model->author);
		$model->imp_agency=explode(',',$model->imp_agency);
		if(isset($_POST['Ordinance']))
		{
			$model->attributes=$_POST['Ordinance'];
			$model->archive=0;
			$picture_name='';
                $picture_file = CUploadedFile::getInstance($model,'ordi_file');
                $model->ordi_file=$picture_file;
                
                if($picture_file){ 
                $picture_name = $picture_file->name;
                if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.date('Y'))){
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.date('Y'));
                }

                          if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.date('Y').'/'.$model->ord_no)){
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.date('Y').'/'.$model->ord_no);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.date('Y').'/'.$model->ord_no.'/'.$picture_file->getName());

                            }
                            else{
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/ordinance/'.date('Y').'/'.$model->ord_no.'/'.$picture_file->getName());
                            }
                }

                $model->author=implode(',',$model->author);
                $model->imp_agency=implode(',',$model->imp_agency);
                $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			if($model->save())
				date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Updated Ordinance No. '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				$this->redirect(array('view','id'=>$model->ord_no));
		}

		$this->render('update',array(
			'model'=>$model,'id'=>$id
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

		$x=Ordinance::model()->findByPK($id);
		$x->archive=1;
		$x->save();
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Archived Ordinance No. '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}
	public function actionRetrieve($id)
	{
		//$this->loadModel($id)->delete();
		$x=Ordinance::model()->findByPK($id);
		$x->archive=0;
		$x->save();
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Retrieved Ordinance No.  '.$id;
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
		/*$dataProvider=new CActiveDataProvider('Ordinance');
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
		$activity->act_desc='Viewed Ordinance List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new Ordinance('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Ordinance']))
			$model->attributes=$_GET['Ordinance'];
			if(!empty($model->author)){
                        $u=implode(',',$model->author);
                        $model->author=$u;
                        }
                        else{
                            $model->author='';
                        }

            if(!empty($model->imp_agency)){
                        $x=implode(',',$model->imp_agency);
                        $model->imp_agency=$x;
                        }
                        else{
                            $model->imp_agency='';
                        }

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	public function actionViewArchive()
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Archived Ordinance List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new Ordinance('viewArchive');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Ordinance']))
			$model->attributes=$_GET['Ordinance'];
			if(!empty($model->author)){
                        $u=implode(',',$model->author);
                        $model->author=$u;
                        }
                        else{
                            $model->author='';
                        }

            if(!empty($model->imp_agency)){
                        $x=implode(',',$model->imp_agency);
                        $model->imp_agency=$x;
                        }
                        else{
                            $model->imp_agency='';
                        }

		$this->render('viewArchive',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Ordinance the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Ordinance::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Ordinance $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='ordinance-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
