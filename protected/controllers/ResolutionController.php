<?php

class ResolutionController extends Controller
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
				'actions'=>array('viewArchive','retrieve','view','create','update','ResolutionList', 'getCommDetails'),
				'roles'=>array('SCR-T','SCR-RF','SCR-RC','SCR-BOK','BOKAL', 'SYSAD'),
			),
			
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('delete','addoldreso'),
				'roles'=>array('SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('admin','index','download','resoDetails'),
				'roles'=>array('SCR-RF','SCR-RC','BOKAL','VG','SCR-BOK', 'SYSAD'),
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
	
	public function actionResolutionList() {
	    $activity=new Activity();
	    $activity->act_desc='Viewed Committee Meeting List for Resolution';
	    $activity->act_datetime=date('Y-m-d G:i:s');
	    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
	    $activity->save(); 

		$model=new Status('forResolution');
		$model->unsetAttributes();  // clear any default values

		if(isset($_GET['Status'])) {
			$model->attributes=$_GET['Status'];
		}

		$this->render('resolutionList',array(
			'model'=>$model,
		));
	}

	public function actionView($id)
		{
	    $activity=new Activity();
	    $activity->act_desc='Viewed Resolution No. '.$id;
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
	    $activity=new Activity();
	    $activity->act_desc='Downloaded Resolution No. '.$id.' file';
	    $activity->act_datetime=date('Y-m-d G:i:s');
	    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
	    $activity->save();

        $model = Resolution::model()->findByPK($id);
        $year=substr($model->res_no, strlen($model->res_no)-4);
        $file= $model->reso_file;

        if (file_exists(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.$year.'/'.$model->res_no.'/'.$file)) {
		    header('Content-Description: File Transfer');
		    header('Content-Type: application/octet-stream');
		    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.$year.'/'.$model->res_no.'/'.$file));
		    header('Content-Transfer-Encoding: binary');
		    header('Expires: 0');
		    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
		    header('Pragma: public');
		    header('Content-Length: ' . filesize(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.$year.'/'.$model->res_no.'/'.$file));
		    ob_clean();
		    flush();
		    readfile(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.$year.'/'.$model->res_no.'/'.$file);
		    exit;
		}

	}
	public function actionaddoldreso() {
		
		$model=new Resolution;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		if(isset($_POST['Resolution']))
		{
			$model->attributes=$_POST['Resolution'];
			$model->archive=0;
			$picture_name='';
            $picture_file = CUploadedFile::getInstance($model,'reso_file');
            $model->reso_file=$picture_file;

            if($picture_file){ 

	            $picture_name = $picture_file->name;

	            if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->res_no,6,10))){
	            	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->res_no,6,10));
	            }

              	if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->res_no,6,10).'/'.$model->res_no)){
               		mkdir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->res_no,6,10).'/'.$model->res_no);
                	$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->res_no,6,10).'/'.$model->res_no.'/'.$picture_file->getName());
                } else {
                	$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->res_no,6,10).'/'.$model->res_no.'/'.$picture_file->getName());
                }
            }

            $model->author=implode(',',$model->author);
            $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
       										
			if($model->save()){

			    $activity=new Activity();
			    $activity->act_desc='Added Another Resolution';
			    $activity->act_datetime=date('Y-m-d G:i:s');
			    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			    $activity->save();

				$this->redirect(array('view','id'=>$model->res_no));
			}
		}

		$this->render('addoldreso',array(
			'model'=>$model
		));
	}

	public function actionCreate($id) {
		$model=new Resolution;

		$count=count(Resolution::model()->findAll(array('condition'=>'res_no like "%'.date('Y').'"')))+1;
		
		$count = str_pad($count, 4, '0', STR_PAD_LEFT) . ' - '.date('Y');

		if(isset($_POST['Resolution']))
		{

			$model->attributes=$_POST['Resolution'];
			$model->archive=0;
			$picture_name='';
            $picture_file = CUploadedFile::getInstance($model,'reso_file');
            $model->reso_file=$picture_file;
            
            if($picture_file){ 
	            $picture_name = $picture_file->name;
	            
	            if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->ctrl_no,0,4))){
	            	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->ctrl_no,0,4));
	            }

              	if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->ctrl_no,0,4).'/'.$model->res_no)){
                	
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->ctrl_no,0,4).'/'.$model->res_no);
                 	$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->ctrl_no,0,4).'/'.$model->res_no.'/'.$picture_file->getName());

                } else {
                	$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.substr($model->ctrl_no,0,4).'/'.$model->res_no.'/'.$picture_file->getName());
                }
            }

            $model->author 		= implode(',',$model->author);
            $model->input_by 	= User::model()->findByPK(Yii::app()->user->name)->emp_id;
            $stat 				= Status::model()->findByAttributes(array('ctrl_no'=>$model->ctrl_no));

			$stat->remarks=1;
			$stat->save();
			
			if(!empty(Referral::model()->findByAttributes(array('ctrl_no'=>$model->ctrl_no))->ref_id)){

				$temp=Referral::model()->findByAttributes(array('ctrl_no'=>$model->ctrl_no))->ref_id;
				$meeting=CommMeetingReso::model()->find(array('condition'=>'ref_id = '.$temp.' and action_taken=1 or action_taken=2'));
				$meeting->comm_meeting_stat=1;
				$meeting->remark=1;
				$meeting->save();

			}

			if($model->save()){

				$activity=new Activity();
			    $activity->act_desc='Added Another Resolution';
			    $activity->act_datetime=date('Y-m-d G:i:s');
			    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			    $activity->save();
				$this->redirect(array('view','id'=>$model->res_no));

			}
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

		if(isset($_POST['Resolution']))
		{
			$model->attributes=$_POST['Resolution'];
			$model->archive=0;
			$picture_name='';
            $picture_file = CUploadedFile::getInstance($model,'reso_file');
            $model->reso_file=$picture_file;
            
            if($picture_file){ 

	            $picture_name = $picture_file->name;
	            
	            if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.date('Y'))){
	            	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.date('Y'));
	            }

              	if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.date('Y').'/'.$model->res_no)){
                	
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.date('Y').'/'.$model->res_no);
                	$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.date('Y').'/'.$model->res_no.'/'.$picture_file->getName());
				
				} else {
                	$picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/resolution/'.date('Y').'/'.$model->res_no.'/'.$picture_file->getName());
                }
            }

            $model->author=implode(',',$model->author);
            $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;

			if($model->save()) {

				$activity=new Activity();
			    $activity->act_desc='Updated Resolution No. '.$id;
			    $activity->act_datetime=date('Y-m-d G:i:s');
			    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			    $activity->save();
				
				$this->redirect(array('view','id'=>$model->res_no));	

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
		$x=Resolution::model()->findByPK($id);
		$x->archive=1;
		$x->save();


	    $activity=new Activity();
	    $activity->act_desc='Archived Resolution No. '.$id;
	    $activity->act_datetime=date('Y-m-d G:i:s');
	    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
	    $activity->save();

		if(!isset($_GET['ajax'])) {
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
	}

	public function actionRetrieve($id)
	{
		$x=Resolution::model()->findByPK($id);
		$x->archive=0;
		$x->save();

	    $activity=new Activity();
	    $activity->act_desc='Retrieved Resolution No. '.$id;
	    $activity->act_datetime=date('Y-m-d G:i:s');
	    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
	    $activity->save();
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax'])) {
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('viewArchive'));
		}
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
	    $activity->act_desc='Viewed Resolution List';
	    $activity->act_datetime=date('Y-m-d G:i:s');
	    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
	    $activity->save();
		$model=new Resolution('search');
		 
		if(isset($_GET['Resolution'])) {
			$model->attributes=$_GET['Resolution'];
			
			if(!empty($model->author)) {

                $u=implode(',',$model->author);
                $model->author=$u;

            } else {

                $model->author='';
            
            }
		}
		

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	public function actionViewArchive()
	{
	    $activity=new Activity();
	    $activity->act_desc='Viewed Archived Resolution List';
	    $activity->act_datetime=date('Y-m-d G:i:s');
	    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
	    $activity->save();
		
		$model=new Resolution('viewArchive');
		$model->unsetAttributes();  // clear any default values
		
		if(isset($_GET['Resolution'])) {
			$model->attributes=$_GET['Resolution'];
		
			if(!empty($model->author)){
                $u=implode(',',$model->author);
                $model->author=$u;
            } else {
                $model->author='';
            }
        }

		$this->render('viewArchive',array(
			'model'=>$model,
		));
	}

	public function actionGetCommDetails($ctrl_no, $res_no) {
		if ($ctrl_no) {
			echo CJSON::encode(Communication::model()->findByPk($ctrl_no));
		} else {
			echo CJSON::encode(Resolution::model()->findByPk($res_no));
		}
	}
	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Resolution the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Resolution::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Resolution $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='resolution-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
