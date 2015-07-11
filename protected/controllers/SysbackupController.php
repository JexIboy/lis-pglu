<?php

class SysbackupController extends Controller
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
				'actions'=>array('sysBackUp','view','admin','index','sysRestore','download'),
				'roles'=>array('SYSAD'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	public function actionDownload($id){

		$activity=new Activity();
		$activity->act_desc='Downloaded Database File';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

        $model = Sysbackup::model()->findByPK($id);
        $year=substr($model->date_backed_up, 0,4);
        $file= $model->db_name;

        if (file_exists($this->dbaseDirectory.$year.'/'.$file)) {
		    header('Content-Description: File Transfer');
		    header('Content-Type: application/octet-stream');
		    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.$year.'/'.$file));
		    header('Content-Transfer-Encoding: binary');
		    header('Expires: 0');
		    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
		    header('Pragma: public');
		    header('Content-Length: ' . filesize($this->dbaseDirectory.$year.'/'.$file));
		    ob_clean();
		    flush();
		    readfile(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.$year.'/'.$file);
		    exit;
		}	
	}

	public function actionSysBackup(){
		$dbConfig 	= Yii::app()->db;

		$return 	='';
		$dsn 	  = $dbConfig->connectionString;
		$username = $dbConfig->username;
		$password = $dbConfig->password;
		$options  = array(
		    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
		); 

		$dbh = new PDO($dsn, $username, $password, $options);
		

		$tables = array();
		$result = $dbh->prepare('SHOW TABLES');
		$result->execute();

		while($row = $result->fetch()) {
			$tables[] = $row[0];
		}
		
		$return = '';

		foreach($tables as $table) {
			$result = $dbh->query('SELECT * FROM '.$table);
			$num_fields = $result->columnCount();

			$return.= 'DROP TABLE '.$table.';';

			$createTable = $dbh->query('SHOW CREATE TABLE '.$table);
			$createTable->execute();
			$row2 = $createTable->fetch();
			$return .= "\n\n".$row2[1].";\n\n";
			
			for ($i = 0; $i < $num_fields; $i++) {
				while($row = $result->fetch()) {
					$return.= 'INSERT INTO '.$table.' VALUES(';

					for($j=0; $j<$num_fields; $j++) {
						$row[$j] = addslashes($row[$j]);
						$row[$j] = str_replace("\n","\\n",$row[$j]);

						$return .= isset($row[$j]) ? '"'.$row[$j].'"' : '""';
						
						if ($j<($num_fields-1)) { 
							$return .= ','; 
						}
					}

					$return.= ");\n";
				}
			}
			$return.="\n\n\n";
		}
		
		$file='db-backup('.date('Y-m-d').').sql';
		$dbaseDirectory = Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/';
		
		if (!file_exists($dbaseDirectory)) {
			mkdir($dbaseDirectory, 0777, true);
		}

		if(!is_dir($dbaseDirectory.date('Y'))){
        	mkdir($dbaseDirectory.date('Y'));
        }

		$handle = fopen($dbaseDirectory.date('Y').'/'.$file,'w+');
		fwrite($handle,$return);
		fclose($handle);
	
		$user = Yii::app()->getComponent('user');

    	if(!is_dir($dbaseDirectory.date('Y').'/'.$file)){
        	$system=new Sysbackup();
        	$system->db_name=$file;
        	$system->date_backed_up=date('Y-m-d G:i:s');
        	$system->backed_up_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
        	$system->save();

			$activity=new Activity();
			$activity->act_desc='Backed-up System';
			$activity->act_datetime=date('Y-m-d G:i:s');
			$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			$activity->save();

        	$user->setFlash('success',"<strong>System Has Been Successfully Backed-up</strong>");

        } else {
			$activity=new Activity();
			$activity->act_desc='Failed to Backed-up System';
			$activity->act_datetime=date('Y-m-d G:i:s');
			$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			$activity->save();

            $user->setFlash('error','<strong>Sorry Something Wrong While Processing the System Backup</strong>');
        }

        $activity=new Activity();
		$this->redirect(array('admin'));
	}

	public function actionSysRestore($id) {
		$dbConfig 	= Yii::app()->db;

		$dsn 	  = $dbConfig->connectionString;
		$username = $dbConfig->username;
		$password = $dbConfig->password;
		$options  = array(
		    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
		); 

		$dbh = new PDO($dsn, $username, $password, $options);
		$model=Sysbackup::model()->findByPK($id);
		$filename = Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.substr($model->date_backed_up, 0,4).'/'.$model->db_name;	 
  	
		$templine = '';
		$lines = file($filename);
		foreach ($lines as $line) {

		    if (substr($line, 0, 2) == '--' || $line == '') {
		        continue;
		    }

		    $templine .= $line;

		    if (substr(trim($line), -1, 1) == ';') {
		    	$query = $dbh->prepare($templine);
		        $query->execute();
		        $templine = '';
		    }
		}
		
		$activity=new Activity();
		$activity->act_desc='Restored System';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$user = Yii::app()->getComponent('user');
    	$user->setFlash('success',"<strong>System Has Been Successfully Restored</strong>");
    	$this->redirect(array('admin'));
	}		
	
	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
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
		$model=new Sysbackup;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Sysbackup']))
		{
			$model->attributes=$_POST['Sysbackup'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->db_id));
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

		if(isset($_POST['Sysbackup']))
		{
			$model->attributes=$_POST['Sysbackup'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->db_id));
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
		$activity->act_desc='Viewed Backed-up System List';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$model=new Sysbackup('search');
		$model->unsetAttributes();  // clear any default values

		if(isset($_GET['Sysbackup']))
			$model->attributes=$_GET['Sysbackup'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Sysbackup the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Sysbackup::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Sysbackup $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='sysbackup-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
