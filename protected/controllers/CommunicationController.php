<?php
class LinkPager extends CLinkPager
{
        public $cssFile = '..framework/web/widgets/pager.css';
}
class CommunicationController extends Controller
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
				'actions'=>array('download','retrieve','index','viewArchive','view','create','update','admin','ViewTypeComm','XUrgentComm','UrgentComm'),
				'roles'=>array('SCR-RC'),
			),
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('download','retrieve','index','viewArchive','view','delete','update','admin','ViewTypeComm','create','XUrgentComm','UrgentComm'),
				'roles'=>array('SYSAD'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('admin','index','download'),
				'roles'=>array('SCR-T','BOKAL','VG','SCR-BOK','SCR-RF'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	public function actionDownload($id){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Downloaded Communication Letter';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

            $model = Communication::model()->findByPK($id);
            $year=substr($model->ctrl_no, 0,4);
            $file= $model->comm_letter;
        if (file_exists(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.$year.'/'.$model->ctrl_no.'/'.$file)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.$year.'/'.$model->ctrl_no.'/'.$file));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
    header('Pragma: public');
    header('Content-Length: ' . filesize(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.$year.'/'.$model->ctrl_no.'/'.$file));
    //ob_clean();
    flush();
    readfile(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.$year.'/'.$model->ctrl_no.'/'.$file);
    exit;
		}else{
			
		}	
	}
	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='View Communication ID: '.$id;
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
	public function actionUrgentComm($id){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Assigned '.$id.' To An Urgent Communication';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$comm=Communication::model()->findByPK($id);
						$comm->comm_stat=1;
						$comm->type_comm=0;
						$comm->save();
					
						$stat=new Status();
						$stat->ctrl_no=$comm->ctrl_no;
						$stat->comm_stat=1;
						$stat->referral_stat=1;
						$stat->comm_meeting_stat=1;
						$stat->save();
								
		
				$this->redirect(array('viewTypeComm'));
	}
	public function actionXUrgentComm($id){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Assigned '.$id.' for Referral';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$comm=Communication::model()->findByPK($id);
						$stat=new Status();
    					$stat->ctrl_no=$comm->ctrl_no;
						$stat->save();

						
						$comm->type_comm=1;
						$comm->save();
				$this->redirect(array('viewTypeComm'));
	}
	public function actionViewTypeComm(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed List of Communication';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new CActiveDataProvider('Communication', array(
            'criteria' => array(
            
                'condition' => 'type_comm = 2 and now() >= date_agenda  ',
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));
		
				$this->render('viewTypeComm',array('model'=>$model));
	}
	public function actionCreate()
	{
		$model=new Communication;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		$count=count(Communication::model()->findAll(array('condition'=>'ctrl_no like "'.date('Y').'%"')))+1;
		if($count<=999){
			if($count<=99){
				if($count<=9){
					$count=date('Y').' - 000'.$count;

				}else{
					$count=date('Y').' - 00'.$count;
				}
			}
			else{
				$count=date('Y').' - 0'.$count;
			}
		}else{
			$count=date('Y').' - '.$count;
		}
		
		if(isset($_POST['Communication']))
		{

			$model->attributes=$_POST['Communication'];
			$model->archive=0;
			if(!empty($model->cat_id)){$model->cat_id=implode(',',$model->cat_id);}
			
			if(!empty($model->orig_id)){$model->orig_id=implode(',',$model->orig_id);}
			$picture_name='';
                $picture_file = CUploadedFile::getInstance($model,'comm_letter');
                $model->comm_letter=$picture_file;
                
                
                
                $model->type_comm=2;
                $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;

				
                
			if($model->save() && $model->validate()){
			if($picture_file){ 
                $picture_name = $picture_file->name;
                          if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4))){
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4));
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());

                            }
                            else{
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());
                            }
                }
                date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Added Another Communication';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				//Yii::app()->user->setFlash('success', "Data1 saved!");
				$this->redirect(array('view','id'=>$model->ctrl_no));	
			}

	}

		$this->render('create',array(
			'model'=>$model,'count'=>$count,
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
		$model->cat_id=explode(',',$model->cat_id);
		$model->orig_id=explode(',',$model->orig_id);
		if(isset($_POST['Communication']))
		{

			$model->attributes=$_POST['Communication'];
			$model->archive=0;
			$model->cat_id=implode(',',$model->cat_id);
			$model->orig_id=implode(',',$model->orig_id);
			$picture_name='';
                $picture_file = CUploadedFile::getInstance($model,'comm_letter');
                $model->comm_letter=$picture_file;
                
                if($picture_file){ 
                $picture_name = $picture_file->name;
                if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->comm_letter)){
                	mkdir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->comm_letter);
                }

                          if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no)){
                             mkdir(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->comm_letter);
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());
                            }
                            else{
                              
                             $picture_file->SaveAs(Yii::getPathOfAlias('webroot').'/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no.'/'.$picture_file->getName());
                            //fwrite('/protected/document/communication/'.substr($model->ctrl_no,0,4).'/'.$model->ctrl_no,$model->comm_letter);
                            }
                }


                $model->input_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;

                
			if($model->type_comm==1) {
					$model->comm_stat=0;}

					else{$model->comm_stat=1;}
                
			if($model->save()){
				date_default_timezone_set("Asia/Manila");
				$activity=new Activity();
				$activity->act_desc='Updated Communication ID: '.$id;
				$activity->act_datetime=date('Y-m-d G:i:s');
				$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
				$activity->save();
			
				if($model->type_comm==1){
						$stat=Status::model()->findByAttributes(array('ctrl_no'=>$model->ctrl_no));
    						if(!empty($stat)){
    							$stat->ctrl_no=$model->ctrl_no;
								$stat->comm_stat=0;
								$stat->referral_stat=0;
								$stat->comm_meeting_stat=0;
								$stat->save();
								$activity->save();
										}
							else{				
								$stat=new Status();
								$stat->ctrl_no=$model->ctrl_no;
								$stat->comm_stat=0;
								$stat->referral_stat=0;
								$stat->comm_meeting_stat=0;
								$stat->save();
								$activity->save();
								}}

									
				else{	
						$stat=Status::model()->findByAttributes(array('ctrl_no'=>$model->ctrl_no));
    						if(!empty($stat)){
    							$stat->ctrl_no=$model->ctrl_no;
								$stat->comm_stat=1;
								$stat->referral_stat=1;
								$stat->comm_meeting_stat=1;
								$stat->save();
								$activity->save();
										}
							else{				
								$stat=new Status();
								$stat->ctrl_no=$model->ctrl_no;
								$stat->comm_stat=1;
								$stat->referral_stat=1;
								$stat->comm_meeting_stat=1;
								$stat->save();
								$activity->save();
								}}
				$this->redirect(array('view','id'=>$model->ctrl_no));
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
		$x=Communication::model()->findByPK($id);
		$x->archive=1;
		$x->save();
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Archived Communication ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	public function actionRetrieve($id)
	{
		$x=Communication::model()->findByPK($id);
		$x->archive=0;
		$x->save();
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Retrieved Communication ID: '.$id;
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
		/*$dataProvider=new CActiveDataProvider('Communication');
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
		$activity->act_desc='Viewed Communication List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new Communication('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Communication']))
			$model->attributes=$_GET['Communication'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}
	public function actionViewArchive()
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Archived Communication List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new Communication('viewArchive');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Communication']))
			$model->attributes=$_GET['Communication'];

		$this->render('viewArchive',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Communication the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Communication::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Communication $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='communication-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
