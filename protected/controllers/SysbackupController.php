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
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Downloaded Database File';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

            $model = Sysbackup::model()->findByPK($id);
            $year=substr($model->date_backed_up, 0,4);
            $file= $model->db_name;
        if (file_exists(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.$year.'/'.$file)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename='.basename(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.$year.'/'.$file));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
    header('Pragma: public');
    header('Content-Length: ' . filesize(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.$year.'/'.$file));
    ob_clean();
    flush();
    readfile(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.$year.'/'.$file);
    exit;
		}else{
			
		}	
	}
	public function actionSysBackup(){
		$return='';
		$host='127.0.0.1';
		$user='root';
		$pass='';
		$name='lis-pglu';
		$tables = '*';
		$link = mysql_connect($host,$user,$pass);
		mysql_select_db($name,$link);
		mysql_query("SET NAMES 'utf8'");
		
		//get all of the tables
		if($tables == '*')
		{
			$tables = array();
			$result = mysql_query('SHOW TABLES');
			while($row = mysql_fetch_row($result))
			{
				$tables[] = $row[0];
			}
		}
		else
		{
			$tables = is_array($tables) ? $tables : explode(',',$tables);
		}
		$return='';
		//cycle through
		foreach($tables as $table)
		{
			$result = mysql_query('SELECT * FROM '.$table);
			$num_fields = mysql_num_fields($result);
			
			$return.= 'DROP TABLE '.$table.';';
			$row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
			$return.= "\n\n".$row2[1].";\n\n";
			
			for ($i = 0; $i < $num_fields; $i++) 
			{
				while($row = mysql_fetch_row($result))
				{
					$return.= 'INSERT INTO '.$table.' VALUES(';
					for($j=0; $j<$num_fields; $j++) 
					{
						$row[$j] = addslashes($row[$j]);
						$row[$j] = str_replace("\n","\\n",$row[$j]);
						if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
						if ($j<($num_fields-1)) { $return.= ','; }
					}
					$return.= ");\n";
				}
			}
			$return.="\n\n\n";
		}
		
					if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.date('Y'))){
	                	mkdir(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.date('Y'));
	                }

		//save file
		date_default_timezone_set("Asia/Manila");
		$file='db-backup('.date('Y-m-d').').sql';
		$handle = fopen(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.date('Y').'/'.$file,'w+');
		fwrite($handle,$return);
		fclose($handle);
	
		$user = Yii::app()->getComponent('user');
    	if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.date('Y').'/'.$file)){
        	$system=new Sysbackup();
        	$system->db_name=$file;
        	$system->date_backed_up=date('Y-m-d G:i:s');
        	$system->backed_up_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
        	$system->save();

        	date_default_timezone_set("Asia/Manila");
			$activity=new Activity();
			$activity->act_desc='Backed-up System';
			$activity->act_datetime=date('Y-m-d G:i:s');
			$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
			$activity->save();

        	$user->setFlash('success',"<strong>System Has Been Successfully Backed-up</strong>");

         }
        else{
        	date_default_timezone_set("Asia/Manila");
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

	public function actionSysRestore($id){
		$model=Sysbackup::model()->findByPK($id);
		$filename = Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.substr($model->date_backed_up, 0,4).'/'.$model->db_name;	 
  	
//$filename = 'C:\test_legit.sql';
$mysql_host = 'localhost';
$mysql_username = 'root';
$mysql_password = '';
$mysql_database = 'lis-pglu';
 
//////////////////////////////////////////////////////////////////////////////////////////////
 
// Connect to MySQL server
mysql_connect($mysql_host, $mysql_username, $mysql_password) or die('Error connecting to MySQL server: ' . mysql_error());
// Select database
mysql_select_db($mysql_database) or die('Error selecting MySQL database: ' . mysql_error());
 /*
mysql_query("TRUNCATE tbl_activity");
mysql_query("TRUNCATE tbl_agency");
mysql_query("TRUNCATE tbl_agenda");
mysql_query("TRUNCATE tbl_category");
mysql_query("TRUNCATE tbl_committee");
mysql_query("TRUNCATE tbl_comm_meeting_ordi");
mysql_query("TRUNCATE tbl_comm_meeting_reso");
mysql_query("TRUNCATE tbl_communication");
mysql_query("TRUNCATE tbl_department");
mysql_query("TRUNCATE tbl_employee");
mysql_query("TRUNCATE forum_answer");
mysql_query("TRUNCATE forum_question");
mysql_query("TRUNCATE tbl_monitor_ord");
mysql_query("TRUNCATE tbl_officials");
mysql_query("TRUNCATE tbl_ordinance");
mysql_query("TRUNCATE tbl_origin");
mysql_query("TRUNCATE tbl_photo");
mysql_query("TRUNCATE tbl_photo_gallery");
mysql_query("TRUNCATE tbl_position");
mysql_query("TRUNCATE tbl_referral");
mysql_query("TRUNCATE tbl_resolution");
mysql_query("TRUNCATE tbl_status");
mysql_query("TRUNCATE tbl_sys_backup");
mysql_query("TRUNCATE tbl_user");*/

// Temporary variable, used to store current query
$templine = '';
// Read in entire file
$lines = file($filename);
// Loop through each line
foreach ($lines as $line)
{
    // Skip it if it's a comment
    if (substr($line, 0, 2) == '--' || $line == '')
        continue;
 
    // Add this line to the current segment
    $templine .= $line;
    // If it has a semicolon at the end, it's the end of the query
    if (substr(trim($line), -1, 1) == ';')
    {
        // Perform the query
        mysql_query($templine);
        // Reset temp variable to empty
        $templine = '';
    }
}

					
					date_default_timezone_set("Asia/Manila");
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
		/*$dataProvider=new CActiveDataProvider('Sysbackup');
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
