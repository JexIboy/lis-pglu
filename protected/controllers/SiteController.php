<?php

class SiteController extends Controller
{
		
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionResolutions(){
		$this->layout='//layouts/column2';
		$model=new Resolution('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Resolution']))
			$model->attributes=$_GET['Resolution'];

		$this->render('resolutions',array(
			'model'=>$model,
		));
	}
	public function actionOrdinances(){
		$this->layout='//layouts/column2';
		$model=new Ordinance('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Ordinance']))
			$model->attributes=$_GET['Ordinance'];

		$this->render('ordinances',array(
			'model'=>$model,
		));
	}
	
	public function series($noMonth){
		$officials=Officials::model()->findAll(array('condition'=>'now() >= start_date and now() <= end_date','order'=>'off_id asc'));
$resolutions=Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-'.$noMonth.'%"'));

$series=array();
$off=array();
$off2=array();
$x=0;
foreach($officials as $v){
    $off2[$v->off_id]=0;
    $x++;
}

foreach($officials as $val){
  array_push($off,$val->off_id);
}

foreach($resolutions as $reso){
    $temp_reso=explode(',',$reso->author);

      foreach($off as $val){
          if (in_array($val, $temp_reso)) {
              $off2[$val]++;
          }

      }
}

foreach($off2 as $values=>$key){
  $temp=array('name'=>Officials::model()->findByPK($values)->Fullname,'data'=>array($key));

  array_push($series,$temp);
  
}
return $series;

	}

	public function actionForumPage(){
	$this->render('forumPage');
}

public function actionMain_forum(){
	$model=new ForumQuestion('search');
	$model->unsetAttributes();  // clear any default values
		if(isset($_GET['ForumQuestion']))
			$model->attributes=$_GET['ForumQuestion'];

	$this->render('main_forum',array('model'=>$model));
}
public function actioncreate_topic(){
	$model=new ForumQuestion();
	if(isset($_POST['ForumQuestion']))
		{
			$model->attributes=$_POST['ForumQuestion'];
			$model->datetime=date('Y-m-d H:i:s');
			$model->view=0;
			$model->reply=0;
			$model->confirmation=0;
			if($model->save())
				$this->redirect(array('main_forum'));
		}
	$this->render('create_topic',array('model'=>$model));
}
public function actionview_topic($id){
	$modelAnswer=new ForumAnswer;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['ForumAnswer']))
		{
			$modelAnswer->attributes=$_POST['ForumAnswer'];

				$modelAnswer->a_id=$id;
				$modelAnswer->a_datetime=date('Y-m-d h:i:sa');
				$x=ForumQuestion::model()->findByPK($id);
				$x->reply=$x->reply+1;
				$x->save();
			if($modelAnswer->save())
				
				$this->redirect(array('view_topic','id'=>$id));
		}

	$this->render('view_topic',array('modelAnswer'=>$modelAnswer,'model'=>ForumQuestion::model()->findByPK($id)));
}
public function actionadd_answer(){
	$this->render('add_answer');
}
public function actionadd_topic(){
	$this->render('add_topic');
}

public function actionviewphotosPage(){
	$galleryModel=new PhotoGallery();
	$photoModel=new Photo();
	$this->render('viewphotosPage',array('galleryModel'=>$galleryModel,'photoModel'=>$photoModel));
}
public function actionevents(){
	$this->render('events');
}
	public function actionIndex()
	{
		$reso=new Resolution('searchIndex');
		$reso->unsetAttributes();  // clear any default values
			if(isset($_GET['Resolution']))
			$reso->attributes=$_GET['Resolution'];

		$ordi=new Ordinance('search');
		$ordi->unsetAttributes();  // clear any default values
			if(isset($_GET['Ordinance']))
			$ordi->attributes=$_GET['Ordinance'];

		$fquestion=new ForumQuestion('searchPosted');
		$fquestion->unsetAttributes();  // clear any default values
			if(isset($_GET['ForumQuestion']))
			$model->attributes=$_GET['ForumQuestion'];

		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$months=array('January','February','March','April','May','June','July','August','September','October','November','December');
		$jan=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-01%"')));
		$feb=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-02%"')));
		$mar=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-03%"')));
		$apr=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-04%"')));
		$may=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-05%"')));
		$jun=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-06%"')));
		$jul=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-07%"')));
		$aug=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-08%"')));
		$sep=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-09%"')));
		$oct=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-10%"')));
		$nov=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-11%"')));
		$dec=count(Resolution::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-12%"')));
		$months_data=array($jan, $feb, $mar, $apr, $may, $jun, $jul, $aug, $sep, $oct, $nov, $dec);

		$jan1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-01%"')));
		$feb1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-02%"')));
		$mar1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-03%"')));
		$apr1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-04%"')));
		$may1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-05%"')));
		$jun1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-06%"')));
		$jul1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-07%"')));
		$aug1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-08%"')));
		$sep1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-09%"')));
		$oct1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-10%"')));
		$nov1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-11%"')));
		$dec1=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-12%"')));
		$months_dataOrd=array($jan1, $feb1, $mar1, $apr1, $may1, $jun1, $jul1, $aug1, $sep1, $oct1, $nov1, $dec1);


		$sql='select distinct substring(res_no,6,9) as reso from tbl_resolution order by date_passed asc';
			$connection=Yii::app()->db;
			$command=$connection->createCommand($sql);
			$years=$command->queryAll();
		$sql1='select distinct substring(ord_no,6,9) as ordi from tbl_ordinance order by date_passed asc';
			$connection1=Yii::app()->db;
			$command1=$connection->createCommand($sql1);
			$yearsOrd=$command1->queryAll();

		$y=array();
 			foreach($years as $value){
 				array_push($y,count(Resolution::model()->findAll(array('condition'=>'res_no like "%'.$value['reso'].'"'))));
			}
		$yOrd=array();
 			foreach($yearsOrd as $value){
 				array_push($yOrd,count(Ordinance::model()->findAll(array('condition'=>'ord_no like "%'.$value['ordi'].'"'))));
			}
			if(!empty(User::model()->findByPK(Yii::app()->user->name)->emp_id)){
			date_default_timezone_set("Asia/Manila");
    $activity=new Activity();
    $activity->act_desc='Return to Homepage';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
			}
		$this->render('index',array('months_dataOrd'=>$months_dataOrd,
			'months'=>$months,'months_data'=>$months_data,'years'=>$years,'yOrd'=>$yOrd,'years_data'=>$y,'reso'=>$reso,'ordi'=>$ordi,'fquestion'=>$fquestion
		));

	}
	
	public function actionForumMain(){
		$this->render('forumMain');
	}



	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		require(Yii::getPathOfAlias('webroot').'/protected/extensions/YiiMailer/PHPMailer/'.'class.phpmailer.php');
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$mail = new PHPMailer(true); //New instance, with exceptions enabled

    $body             = "Dear LIS-PGLU Administrator,<br><br>".$model->body;
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

    $mail->AddReplyTo($model->email,"LIS-PGLU Administrator");

    $mail->From       = $model->email;
    $mail->FromName   = $model->email;

    $to = "johnbillymarbella@gmail.com";

    $mail->AddAddress($to);

    $mail->Subject  = $model->subject;

    $mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
    $mail->WordWrap   = 80; // set word wrap

    $mail->MsgHTML($body);

    $mail->IsHTML(true); // send as HTML

				//send
				if ($mail->Send()) {
					$mail->ClearAddresses();
					Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				} else {
					Yii::app()->user->setFlash('error','Error while sending email: '.$mail->ErrorInfo);
				}
				
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}
	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
			

		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{

			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login()){
$this->redirect(Yii::app()->user->returnUrl);	
				date_default_timezone_set("Asia/Manila");
    $activity=new Activity();
    $activity->act_desc='Logged In';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
}
			
		}
		// display the login form
		
		$this->render('login',array('model'=>$model));

	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		date_default_timezone_set("Asia/Manila");
    $activity=new Activity();
    $activity->act_desc='Logged Out';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByAttributes(array('username'=>Yii::app()->user->id))->emp_id;;
    $activity->save();
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}