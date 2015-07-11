<?php

class CommMeetingResoController extends Controller
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
				'actions'=>array('download','viewArchive','retrieve','index','view','create','update','admin','CommMeetingList', 'getCommDetails'),
				'roles'=>array('SCR-RF', 'SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('viewArchive','delete'),
				'roles'=>array('SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('admin','index','download'),
				'roles'=>array('SCR-T','BOKAL','VG','SCR-BOK','SCR-RC'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	public function actionDownload($id){
		
		$activity=new Activity();
		$activity->act_desc='Downloaded Committee Report File';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

        $model = CommMeetingReso::model()->findByPK($id);
        $year=substr($model->ref->ctrl_no, 0,4);
        $file= $model->comm_rep_file;

        if (file_exists(Yii::getPathOfAlias('webroot').'/protected/document/CommMeetingReso/'.$year.'/'.$model->ref->ctrl_no.'/'.$file)) {
		    header('Content-Description: File Transfer');
		    header('Content-Type: application/octet-stream');
		    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/document/CommMeetingReso/'.$year.'/'.$model->ref->ctrl_no.'/'.$file));
		    header('Content-Transfer-Encoding: binary');
		    header('Expires: 0');
		    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
		    header('Pragma: public');
		    header('Content-Length: ' . filesize(Yii::getPathOfAlias('webroot').'/protected/document/CommMeetingReso/'.$year.'/'.$model->ref->ctrl_no.'/'.$file));
		    ob_clean();
		    flush();
		    readfile(Yii::getPathOfAlias('webroot').'/protected/document/CommMeetingReso/'.$year.'/'.$model->ref->ctrl_no.'/'.$file);
		    exit;
		}	
	}
	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionCommMeetingList(){
		
		$activity=new Activity();
		$activity->act_desc='Viewed List of Referral for Committee Meeting';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new Referral('forCommMeetingReso');
		$model->unsetAttributes();  // clear any default values

		if(isset($_GET['Referral']))
			$model->attributes=$_GET['Referral'];

			if(!empty($model->joint_committee)){

                $x=implode(',',$model->joint_committee);
                $model->joint_committee=$x;

        } else {
            $model->joint_committee='';
        }

		$this->render('commMeetingList',array(
			'model'=>$model,
		));
	}

	public function actionView($id)
	{
		
		$activity=new Activity();
		$activity->act_desc='Viewed Committee Meeting ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=$this->loadModel($id);
		
		if(isset($_POST['CommMeetingReso']))
		{
			$model->attributes=$_POST['CommMeetingReso'];
			$picture_name='';
            $picture_file = CUploadedFile::getInstance($model,'comm_rep_file');
            $model->comm_rep_file=$picture_file;

			if($picture_file){ 
	            $picture_name = $picture_file->name;

              	if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y'))){
	              	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y'));
	                mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no);
	                $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no.'/'.$picture_file->getName());

                } else{
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no);
                	$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no.'/'.$picture_file->getName());
                }
            }

			if($model->save()) {
									
				$activity=new Activity();
				$activity->act_desc='Assigned Date of Committe Report of Committee Meeting ID: '.$id;
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();

				if($model->action_taken!=0) {
					$stat=Status::model()->findByAttributes(array('ctrl_no'=>$model->ref->ctrl_no));
					$stat->comm_meeting_stat=1;
					$stat->referral_stat=1;
					$stat->save();

					Referral::model()->updateByPK($model->ref_id,array('referral_stat'=>1));
				}
			}

			$this->redirect(array('view','id'=>$model->meeting_reso_id));
					
		}

		$this->render('view',array(
			'model'=>$this->loadModel($id)
		));

	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate($id)
	{
		$model=new CommMeetingReso;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['CommMeetingReso']))
		{
			$model->attributes=$_POST['CommMeetingReso'];
			$x=Referral::model()->findByAttributes(array('ctrl_no'=>$model->ref_id))->ref_id;
			$model->ref_id=$x;
			$model->archive=0;

			$model->comm_meeting_stat= $model->action_taken!=0 ? 1 : 0;
			$model->remark=0;
            $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;

            $picture_name='';
            $picture_file = CUploadedFile::getInstance($model,'comm_rep_file');
            $model->comm_rep_file=$picture_file;
                
			if($picture_file){ 
                $picture_name = $picture_file->name;
				if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.substr($model->ctrl_no,0,4))){
					mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.substr($model->ctrl_no,0,4));
					mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.substr($model->ctrl_no,0,4).'/'.$model->ref->ctrl_no);
					$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.substr($model->ctrl_no,0,4).'/'.$model->ref->ctrl_no.'/'.$picture_file->getName());

				} else{
					mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.substr($model->ctrl_no,0,4).'/'.$model->ref->ctrl_no);
					$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.substr($model->ctrl_no,0,4).'/'.$model->ref->ctrl_no.'/'.$picture_file->getName());
				}
            }

			if($model->save()){
							
				$activity=new Activity();
				$activity->act_desc='Added Another Committee Meeting';
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();
				
				$this->redirect(array('view','id'=>$model->meeting_reso_id));
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

		if(isset($_POST['CommMeetingReso']))
		{
			$model->attributes=$_POST['CommMeetingReso'];
			$model->archive=0;
			$ref_id = Referral::model()->findByAttributes(array('ctrl_no' => $model->ref_id))->ref_id;
			$model->ref_id = $ref_id;
			$model->remark=0;

			if($model->action_taken!=1) {

				Status::model()->updateAll(array('referral_stat' => 1), 'ctrl_no = ' . $model->ref->ctrl_no);
				Referral::model()->updateByPK($model->ref_id,array('referral_stat'=>1));
				$stat->save();
			
			} else if($model->action_taken!=0){

				$stat=Status::model()->findByAttributes(array('ctrl_no'=>$model->ref->ctrl_no));
				$stat->comm_meeting_stat=1;
				$stat->referral_stat=1;
				$stat->save();
				Referral::model()->updateByPK($model->ref_id,array('referral_stat'=>0));
			
			} else {

				$stat=Status::model()->findByAttributes(array('ctrl_no'=>$model->ref->ctrl_no));
				$stat->comm_meeting_stat=0;
				$stat->referral_stat=0;
				$stat->save();
				Referral::model()->updateByPK($model->ref_id,array('referral_stat'=>1));
			}

			$picture_name='asdfdsaf';
            $picture_file = CUploadedFile::getInstance($model,'comm_rep_file');
            $model->comm_rep_file=$picture_file;
                
			if($picture_file) { 
                $picture_name = $picture_file->name;
				if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y'))){
					
					mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y'));
					mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no);
					$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no.'/'.$picture_file->getName());
				
				} else{
					
					mkdir(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no);
					$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/commMeetingReso/'.date('Y').'/'.$model->ref->ctrl_no.'/'.$picture_file->getName());
				
				}
            }

			if($model->save() && $model->validate()){
			
				$activity=new Activity();
				$activity->act_desc='Updated Committee Meeting ID: '.$id;
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();

				$this->redirect(array('view','id'=>$model->meeting_reso_id));
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
	public function actionRetrieve($id)
	{
		//$this->loadModel($id)->delete();
		$x=CommMeetingReso::model()->findByPK($id);
		$x->archive=0;
		$x->save();
		
		$activity=new Activity();
		$activity->act_desc='Retrieved Committee Meeting ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('viewArchive'));
	}
	public function actionDelete($id)
	{
		//$this->loadModel($id)->delete();
		$x=CommMeetingReso::model()->findByPK($id);
		$x->archive=1;
		$x->save();
		
		$activity=new Activity();
		$activity->act_desc='Archived Committee Meeting ID: '.$id;
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
		$this->redirect(array('admin'));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		
		$activity=new Activity();
		$activity->act_desc='Viewed Committee Meeting List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new CommMeetingReso('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['CommMeetingReso']))
			$model->attributes=$_GET['CommMeetingReso'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	public function actionViewArchive()
	{
		
		$activity=new Activity();
		$activity->act_desc='Viewed Archived Committee Meeting List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new CommMeetingReso('viewArchive');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['CommMeetingReso']))
			$model->attributes=$_GET['CommMeetingReso'];

		$this->render('viewArchive',array(
			'model'=>$model,
		));
	}

	public function actionGetCommDetails($ref_id) {
		echo CJSON::encode(Referral::getCommDetailsByRefId($ref_id));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return CommMeetingReso the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=CommMeetingReso::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CommMeetingReso $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='comm-meeting-reso-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
