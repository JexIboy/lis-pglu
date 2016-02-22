<?php

class ForumQuestionController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	//public $layout='//layouts/column2';

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
				'actions'=>array('index','view','create','update','admin','delete','confirmTopic','postQuestion','UnPostQuestion'),
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
	public function actionPostQuestion($id){
		$x=ForumQuestion::model()->findByPk($id);
		$x->confirmation=1;

		if($x->save()){
		$user = Yii::app()->getComponent('user');

require(Yii::getPathOfAlias('webroot').'/protected/extensions/YiiMailer/PHPMailer/'.'class.phpmailer.php');

$mail = new PHPMailer(true); //New instance, with exceptions enabled

    $body             = "Dear LIS-PGLU Administrator,<br><br>".
    				'Your Topic "'.$x->topic.'"is Succesfully Approved and Posted';
    $body             = preg_replace('/\\\\/','', $body); //Strip backslashes

    $mail->IsSMTP();                           // tell the class to use SMTP
    $mail->SMTPAuth   = true;
    $mail->SMTPSecure = "ssl";                  // enable SMTP authentication
    $mail->Host       = "smtp.gmail.com";                  // set the SMTP server port
     // SMTP server
    $mail->Username   = "johnbillymarbella@gmail.com";   // SMTP server username
    $mail->Password   = "ZAIDOBLACK";            // SMTP server passwor
    $mail->Host       = "smtp.gmail.com";
    $mail->Port       = 465;

    $mail->AddReplyTo("johnbillymarbella@gmail.com","LIS-PGLU Administrator");

    $mail->From       = "johnbillymarbella@gmail.com";
    $mail->FromName   = "johnbillymarbella@gmail.com";

    $to = $x->email;

    $mail->AddAddress($to);

    $mail->Subject  = $x->topic;

    $mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
    $mail->WordWrap   = 80; // set word wrap

    $mail->MsgHTML($body);

    $mail->IsHTML(true); // send as HTML

				//send
				if ($mail->Send()) {
					$mail->ClearAddresses();
					$user->setFlash('success',"<strong>Succesfully Sent and Posted</strong>");
					date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Approved and Posted a Topic ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				} else {
					Yii::app()->user->setFlash('error','Error while sending email: '.$mail->ErrorInfo);
				}
			}


		$this->redirect(array('confirmTopic'));
	}
	public function actionUnPostQuestion($id){
		$x=ForumQuestion::model()->findByPk($id);
		$x->confirmation=2;
		if($x->save()){
		$user = Yii::app()->getComponent('user');

require(Yii::getPathOfAlias('webroot').'/protected/extensions/YiiMailer/PHPMailer/'.'class.phpmailer.php');

$mail = new PHPMailer(true); //New instance, with exceptions enabled

    $body             = "Dear LIS-PGLU Administrator,<br><br>".
    				'Sorry Your Topic "'.$x->topic.'" Has Been Rejected for Some Reasons';
    $body             = preg_replace('/\\\\/','', $body); //Strip backslashes

     $mail->IsSMTP();                           // tell the class to use SMTP
    $mail->SMTPAuth   = true;
    $mail->SMTPSecure = "ssl";                  // enable SMTP authentication
    $mail->Host       = "smtp.gmail.com";                  // set the SMTP server port
     // SMTP server
    $mail->Username   = "johnbillymarbella@gmail.com";   // SMTP server username
    $mail->Password   = "ZAIDOBLACK";            // SMTP server passwor
    $mail->Host       = "smtp.gmail.com";
    $mail->Port       = 465;

    $mail->AddReplyTo("johnbillymarbella@gmail.com","LIS-PGLU Administrator");

    $mail->From       = "johnbillymarbella@gmail.com";
    $mail->FromName   = "johnbillymarbella@gmail.com";

    $to = $x->email;

    $mail->AddAddress($to);

    $mail->Subject  = $x->topic;

    $mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
    $mail->WordWrap   = 80; // set word wrap

    $mail->MsgHTML($body);

    $mail->IsHTML(true); // send as HTML

				//send
				if ($mail->Send()) {
					$mail->ClearAddresses();
					$user->setFlash('success',"<strong>Topic has been rejected</strong>");
					date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Rejected Topic ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				} else {
					Yii::app()->user->setFlash('error','Error while sending email: '.$mail->ErrorInfo);
				}
			}
		$this->redirect(array('confirmTopic'));
	}
	public function actionConfirmTopic(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Received Topics';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new ForumQuestion('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['ForumQuestion']))
			$model->attributes=$_GET['ForumQuestion'];
			
		$this->render('confirmTopic',array(
			'model'=>$model,
		));
	}
	public function actionView($id)
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Topic ID: '.$id;
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
		$model=new ForumQuestion;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['ForumQuestion']))
		{
			$model->attributes=$_POST['ForumQuestion'];
			if($model->save())
				date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Added Another Topic';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				$this->redirect(array('view','id'=>$model->id));
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

		if(isset($_POST['ForumQuestion']))
		{
			$model->attributes=$_POST['ForumQuestion'];
			if($model->save())
				date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Updated Topic ID: '.$id;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
				$this->redirect(array('view','id'=>$model->id));
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
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Deleted Topic ID: '.$id;
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
		/*$dataProvider=new CActiveDataProvider('ForumQuestion');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));*/
	$this->redirect(array('confirmTopic'));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Topic List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
		$model=new ForumQuestion('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['ForumQuestion']))
			$model->attributes=$_GET['ForumQuestion'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return ForumQuestion the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=ForumQuestion::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param ForumQuestion $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='forum-question-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
