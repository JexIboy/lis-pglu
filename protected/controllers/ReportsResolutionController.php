<?php

class ReportsResolutionController extends Controller
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
				'actions'=>array('index','historyResolution','monthlyResolution','yearlyResolution',
								 'authoredYearlyResolution','authoredMonthlyResolution',
                                 'printResolutionHistory','printMonthlyResolution','printYearlyResolution',
                                 'printAuthoredResolutionMonthly','printAuthoredResolutionYearly'),
				'roles'=>array('SCR-T','SCR-RF','SCRT-R','BOKAL','VG','SCR-BOK','SCR-RC'),
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
	public function actionPrintAuthoredResolutionMonthly($model){
		$data=explode(',',$model);
		$my=$data[0].'-'.$data[1];
		$list=  Resolution::model()->findAll(array('condition' => 'author like :author and date_passed like :month',
               															   'params' => array(':author' =>'%'.$data[2].',%' , ':month'=>$my.'%'),));
        $author=  Officials::model()->findByPK($data[2]);
        
    $activity=new Activity();
    $activity->act_desc='Printed Monthly Authored Resolution of '.$author->emp->Fullname;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

        $this->renderPartial('printAuthoredResolutionMonthly',array('list'=>$list,'author'=>$author,'year'=>$data[0],'month'=>$data[1]));
	}
	public function actionAuthoredMonthlyResolution(){
		
    $activity=new Activity();
    $activity->act_desc='Searched Monthly Authored Resolution';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

		$year=date('Y');
                $month=date('m');
                $my=$year.'-'.$month;
                $auth_name='';
		if (isset($_POST['searchButton']))
		{
                        $year=$_POST['year'];
                        $month=$_POST['month'];

                        $x=array();
$startTime = strtotime('1970-05-01 12:00');
$endTime = strtotime('2020-05-10 12:00');

// Loop between timestamps, 24 hours at a time
for ($i = $endTime; $i >= $startTime; $i = $i - 31536000) {
 array_push($x,date('Y', $i)); // 2010-05-01, 2010-05-02, etc
}

foreach($x as $values =>$value) {
    				if($_POST['year']==$values){
    					$year=$value;
    				}
				} 
				
                        $my=$year.'-'.$month;
			$auth_name = $_POST['auth_name'];

              
    $activity=new Activity();
    $activity->act_desc='Searched Monthly Authored Resolution of '.Officials::model()->findByPK($auth_name)->emp->Fullname;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();          
                            
		}
                if(isset($_POST['printButton'])){

                                $year=$_POST['year'];
                                $month=$_POST['month'];
                                $my=$year.'-'.$month;
                                $auth_name = $_POST['auth_name'];
                                
                                }
                                
             if($auth_name==''){
             	$data_provider = new CActiveDataProvider('Resolution', array(
            'criteria' => array(
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));
             }
             else{                        
		    $data_provider = new CActiveDataProvider('Resolution', array(
            'criteria' => array(
            
                'condition' => 'author like :author and date_passed like :month',
                'params' => array(':author' =>'%'.$auth_name.',%' , ':month'=>$my.'%'),
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));}            
                
                            
		    
			
		$this->render('authoredMonthlyResolution',array(
				'dataProvider'=>$data_provider,'auth_name'=>$auth_name,'month'=>$month,'year'=>$year
		));
	}
	public function actionPrintAuthoredResolutionYearly($model){
		$data=explode(',',$model);
		

		$list=  Resolution::model()->findAll(array('condition' => 'author like :author and date_passed like :year',
                                                                           'params' => array(':author' =>'%'.$data[1].',%' , ':year'=>$data[0].'%'),));
                                     $author=  Officials::model()->findByPK($data[1]);
                                     
    $activity=new Activity();
    $activity->act_desc='Printed Yearly Authored Resolution of '.$author->emp->Fullname;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
                                $this->renderPartial('printAuthoredResolutionYearly',array('list'=>$list,'author'=>$author,'year'=>$data[0]));
	}
	public function actionAuthoredYearlyResolution(){
		
    $activity=new Activity();
    $activity->act_desc='Searched Yearly Authored Resolution';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save(); 

		$year=date('Y');
                $auth_name='';
		if (isset($_POST['searchButton']))
		{
                        $year=$_POST['year'];
			$auth_name = $_POST['auth_name'];
			$x=array();
$startTime = strtotime('1970-05-01 12:00');
$endTime = strtotime('2020-05-10 12:00');

// Loop between timestamps, 24 hours at a time
for ($i = $endTime; $i >= $startTime; $i = $i - 31536000) {
 array_push($x,date('Y', $i)); // 2010-05-01, 2010-05-02, etc
}

foreach($x as $values =>$value) {
    				if($_POST['year']==$values){
    					$year=$value;
    				}
				}                                               
		}
                                                                                
               if($auth_name==''){
               	$data_provider = new CActiveDataProvider('Resolution', array(
            'criteria' => array(
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));}else{             
		    $data_provider = new CActiveDataProvider('Resolution', array(
            'criteria' => array(
            
                'condition' => 'author like :author and date_passed like :month',
                'params' => array(':author' =>'%'.$auth_name.',%' , ':month'=>$year.'%'),
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));
		    
    $activity=new Activity();
    $activity->act_desc='Searched Yearly Authored Resolution of '.Officials::model()->findByPK($auth_name)->emp->Fullname;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
        }
			
		$this->render('authoredYearlyResolution',array(
				'dataProvider'=>$data_provider,'auth_name'=>$auth_name,'year'=>$year
		));
	}
	public function actionHistoryResolution(){
		
        $activity=new Activity();
        $activity->act_desc='Searched Resolution History';
        $activity->act_datetime=date('Y-m-d G:i:s');
        $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
        $activity->save();

            $model=new Resolution('search');
        $model->unsetAttributes();  // clear any default values
        if(isset($_GET['Resolution']))
            $model->attributes=$_GET['Resolution'];

        $this->render('historyResolution',array(
            'model'=>$model,
        ));
            

	}
    public function actionPrintResolutionHistory($model){

        $x=Resolution::model()->findByAttributes(array('res_no'=>$model));
        
    $activity=new Activity();
    $activity->act_desc='Printed Resolution History of Resolution No. '.$x->res_no;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
        $this->renderPartial('PrintResolutionHistory',array('model'=>$x));
    }
	public function actionYearlyResolution(){
		
    $activity=new Activity();
    $activity->act_desc='Searched Fiscal Yearly Resolution Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

		$fy=array();
		$fiscal=array();
		$startTime = strtotime('1970-05-01 12:00');
		$endTime = strtotime('2020-05-10 12:00');

		// Loop between timestamps, 24 hours at a time
		for ($i = $endTime; $i >= $startTime; $i = $i - 31536000) {
 			array_push($fiscal,date('Y', $i).' - '.date('Y', $i + 31536000)); // 2010-05-01, 2010-05-02, etc
		}

		$end_year=date('Y',strtotime('next year'));
		$start_year=date('Y');

		if (isset($_POST['searchButton']))
		{
			foreach($fiscal as $value=>$values){
				if($value==$_POST['fiscal']){
					$fy=explode(' - ',$values);
				}

			}
			 $end_year=$fy[1];
			 $start_year=$fy[0]; 

			 
    $activity=new Activity();
    $activity->act_desc='Searched Fiscal Yearly '.$start_year.' - '.$end_year.' Resolution Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();                
		}
                    
                
                            
		    $data_provider = new CActiveDataProvider('Resolution', array(
            'criteria' => array(
            
                'condition' => 'year(date_passed) >= :start_date and year(date_passed) <= :end_date',
                'order' => 'date_passed ASC',
                'params' => array(':start_date' => $start_year,':end_date' => $end_year, ),
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));
			
		$this->render('yearlyResolution',array(
				'dataProvider'=>$data_provider,'fiscal'=>$fiscal,'start_year'=>$start_year,'end_year'=>$end_year
		));
	}
	public function actionPrintYearlyResolution($start_year,$end_year){
		$details=Resolution::model()->findAll(array( 'condition' => 'year(date_passed) >= :start_date and year(date_passed) <= :end_date',
                									 'order' => 'date_passed ASC',
                									 'params' => array(':start_date' => $start_year,':end_date' => $end_year, ),));
                              
        
    $activity=new Activity();
    $activity->act_desc='Printed Fiscal Yearly '.$start_year.' - '.$end_year.' Resolution Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

        $this->renderPartial('printYearlyResolution',array('details'=>$details,'start_year'=>$start_year,'end_year'=>$end_year));
	}
	public function actionMonthlyResolution(){

    $activity=new Activity();
    $activity->act_desc='Searched Monthly Resolution Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

            $year=date('Y');
            $month=date('m');
            $MY=$year.'-'.$month;

       	    
			if (isset($_POST['searchButton'])){
				$x=array();
				$startTime = strtotime('1970-05-01 12:00');
				$endTime = strtotime('2020-05-10 12:00');
				for ($i = $endTime; $i >= $startTime; $i = $i - 31536000) {
 				array_push($x,date('Y', $i)); // 2010-05-01, 2010-05-02, etc
				}

				$month = $_POST['month'];
				$year = $_POST['year'];
                
                
 
				foreach($x as $values =>$value) {
    				if($_POST['year']==$values){
    					$year=$value;
    				}
				}    

				$MY=$year.'-'.$month;  

				
    $activity=new Activity();
    $activity->act_desc='Searched '.$month.' '.$year.' Resolution Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
           		}
                 
                       
		    $data_provider = new CActiveDataProvider('Resolution', array(
            'criteria' => array(
            
                'condition' => 'date_passed like :date',
                'order' => 'date_passed ASC',
                'params' => array(':date' => $MY . "%", ),
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));

		$this->render('monthlyResolution',array(
				'dataProvider'=>$data_provider,'month'=>$month,'year'=>$year,
		));
	}
	public function actionPrintMonthlyResolution($model){
		$my=explode('-',$model);
        $details=Resolution::model()->findAll(array( 'condition' => 'date_passed like :date',
                                                                            'order' => 'date_passed ASC',
                                                                            'params' => array(':date' => $model ."%", ),));
                              
         
    $activity=new Activity();
    $activity->act_desc='Printed'.$model.' Resolution Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();                           
                                $this->renderPartial('printMonthlyResolution',array('details'=>$details,'month'=>$my[1],'year'=>$my[0]));
    }
	public function actionIndex(){
		
    $activity=new Activity();
    $activity->act_desc='Searched Statistical Resolution Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save(); 

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


		$sql='select distinct substring(res_no,6,9) as reso from tbl_resolution order by date_passed asc';
			$connection=Yii::app()->db;
			$command=$connection->createCommand($sql);
			$years=$command->queryAll();
		$y=array();
 			foreach($years as $value){
 				array_push($y,count(Resolution::model()->findAll(array('condition'=>'res_no like "%'.$value['reso'].'"'))));
			}

		$this->render('index',array(
			'months'=>$months,'months_data'=>$months_data,'years'=>$years,'years_data'=>$y
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
	
}
