<?php

class UtilitiesController extends Controller
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
				'actions'=>array('sysBackUp'),
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
	
	//save file
	date_default_timezone_set("Asia/Manila");
	$file='db-backup('.date('Y-m-d').').sql';
	$handle = fopen(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.date('Y').'/'.$file,'w+');
	fwrite($handle,$return);
	fclose($handle);
	
				$user = Yii::app()->getComponent('user');
            	if(!is_dir(Yii::getPathOfAlias('webroot').'/protected/dBaseBackup/'.date('Y').'/'.$file)){
                	
                	$user->setFlash('success',"<strong>Well done!</strong> You're successful in reading this.");

                 }
                else{
                    $user->setFlash('error','<strong>Oh snap!</strong> Change something and try submitting again.');
                }
	
	}
}
