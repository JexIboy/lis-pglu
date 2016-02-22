<?php

class ReportsOrdinanceController extends Controller
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
				'actions'=>array('index','indexOrd','historyOrdinance','monthlyOrdinance','yearlyOrdinance',
								 'authoredYearlyOrdinance','authoredMonthlyOrdinance',
								 'PrintOrdinanceHistory','PrintYearlyOrdinance','printAuthoredOrdinanceYearly'),
				'roles'=>array('SCR-T','SCR-RF','BOKAL','VG','SCR-BOK','SCR-RC'),
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
	
	public function actionAuthoredMonthlyOrdinance(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Monthly Ordinance per Board Member';
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
                        $my=$year.'-'.$month;
			$auth_name = $_POST['auth_name'];
                        
                        date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Searched Monthly Ordinance of '.Officials::model()->findByPK($auth_name)->emp->Fullname;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();
                            
		}
                if(isset($_POST['printButton'])){
                                $year=$_POST['year'];
                                $month=$_POST['month'];
                                $my=$year.'-'.$month;
                                $auth_name = $_POST['auth_name'];
                                $list=  Ordinance::model()->findAll(array('condition' => 'author like :author and date_passed like :month',
                                                                           'params' => array(':author' =>'%'.$auth_name . "%", ':month'=>$my.'%'),));
                                     $author=  Officials::model()->findByPK($auth_name);
                                $this->renderPartial('printAuthoredReso',array('list'=>$list,'author'=>$author));
                                }
                                
                         
                
                            
		    $data_provider = new CActiveDataProvider('Ordinance', array(
            'criteria' => array(
            
                'condition' => 'author like :author and date_passed like :month',
                'params' => array(':author' =>'%'.$auth_name . "%", ':month'=>$my.'%'),
            ),
            'pagination' => array(
                'pageSize' => 31,
            ),
        ));
			
		$this->render('authoredMonthlyOrdinance',array(
				'dataProvider'=>$data_provider,'auth_name'=>$auth_name,'month'=>$month,'year'=>$year
		));
	}
	public function actionPrintAuthoredOrdinanceYearly($model){
		

		$data=explode(',',$model);
		$list=  Ordinance::model()->findAll(array('condition' => 'author like :author and date_passed like :year',
                                                                           'params' => array(':author' =>'%'.$data[1].',%' , ':year'=>$data[0].'%'),));
                                     $author=  Officials::model()->findByPK($data[1]);

        date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Printed Yearly Ordinance of '.$author->emp->Fullname;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

                                $this->renderPartial('printAuthoredOrdinanceYearly',array('list'=>$list,'author'=>$author));
	}
	
	public function actionAuthoredYearlyOrdinance(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Searched Authored Yearly Ordinance';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$year=date('Y');
                $auth_name='';
		if (isset($_POST['searchButton']))
		{
                        $year=$_POST['year'];

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
			$auth_name = $_POST['auth_name'];
                        
             date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Searched Yearly Ordinance of '.Officials::model()->findByPK($auth_name)->emp->Fullname.' for the year '.$year;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();  

		}
                                
                         
                
                            
		    $data_provider = new CActiveDataProvider('Ordinance', array(
            'criteria' => array(
            
                'condition' => 'author like :author and date_passed like :month',
                'params' => array(':author' =>'%'.$auth_name . "%", ':month'=>$year.'%'),
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));
			
		$this->render('authoredYearlyOrdinance',array(
				'dataProvider'=>$data_provider,'auth_name'=>$auth_name,'year'=>$year
		));
	}
	public function actionHistoryOrdinance(){
	
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Searched Ordinance History';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();  

            $model=new Ordinance('search');
        $model->unsetAttributes();  // clear any default values
        if(isset($_GET['Ordinance'])) {
            $model->attributes=$_GET['Ordinance'];
        }

		$this->render('historyOrdinance',array('model'=>$model));
	}

		

	public function actionprintOrdinanceHistory($model){
        $x=Ordinance::model()->findByAttributes(array('ord_no'=>$model));
        date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Printed Ordinance History Ordinance No. '.$x->ord_no;
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();  
        $this->renderPartial('PrintOrdinanceHistory',array('model'=>$x));
    }
	public function actionYearlyOrdinance(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Searched Yearly Ordinance';
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

			 date_default_timezone_set("Asia/Manila");
    $activity=new Activity();
    $activity->act_desc='Searched Fiscal Yearly '.$start_year.' - '.$end_year.' Ordinance Report';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();          
                            
		}                    
                
                            
		   $data_provider = new CActiveDataProvider('Ordinance', array(
            'criteria' => array(
            
                'condition' => 'year(date_passed) >= :start_date and year(date_passed) <= :end_date',
                'order' => 'date_passed ASC',
                'params' => array(':start_date' => $start_year,':end_date' => $end_year, ),
            ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        ));
			
		$this->render('yearlyOrdinance',array(
				'dataProvider'=>$data_provider,'fiscal'=>$fiscal,'end_year'=>$end_year,'start_year'=>$start_year
		));
	}
	public function actionPrintYearlyOrdinance($start_year,$end_year){
		$details=Ordinance::model()->findAll(array('condition' => 'year(date_passed) >= :start_date and year(date_passed) <= :end_date',
                									 'order' => 'date_passed ASC',
                									 'params' => array(':start_date' => $start_year,':end_date' => $end_year, ),));
                              
        date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Printed Fiscal Yearly '.$start_year.' - '.$end_year.' Ordinance Report';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();                            
                                $this->renderPartial('printYearlyOrdinance',array('details'=>$details,'start_year'=>$start_year,'end_year'=>$end_year));
	}
	public function actionMonthlyOrdinance(){

            $year=date('Y');
            $month=date('m');
            $MY=$year.'-'.$month;
		if (isset($_POST['searchButton']))
		{
			$month = $_POST['month'];
			$year = $_POST['year'];
                        $MY=$year.'-'.$month;
                        
                            
		}
                if(isset($_POST['printButton'])){
                                $month = $_POST['month'];
			$year = $_POST['year'];
                        $MY=$year.'-'.$month;
                               $details=Ordinance::model()->findAll(array( 'condition' => 'date_passed like :date',
                                                                            'order' => 'date_passed ASC',
                                                                            'params' => array(':date' => $MY . "%", ),));
                              
                                    
                                $this->renderPartial('printMonthlyReso',array('details'=>$details,'month'=>$month));
                            }
                    
                
                            
		    $data_provider = new CActiveDataProvider('Ordinance', array(
            'criteria' => array(
            
                'condition' => 'date_passed like :date',
                'order' => 'res_no ASC',
                'params' => array(':date' => $MY . "%", ),
            ),
            'pagination' => array(
                'pageSize' => 31,
            ),
        ));
			
		$this->render('monthlyOrdinance',array(
				'dataProvider'=>$data_provider,'month'=>$month,'year'=>$year,
		));
	}
	public function actionIndex(){
		date_default_timezone_set("Asia/Manila");
		$activity=new Activity();
		$activity->act_desc='Viewed Statistical Report of Ordinance';
		$activity->act_datetime=date('Y-m-d G:i:s');
		$activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
		$activity->save();

		$months=array('January','February','March','April','May','June','July','August','September','October','November','December');
		$jan=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-01%"')));
		$feb=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-02%"')));
		$mar=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-03%"')));
		$apr=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-04"')));
		$may=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-05%"')));
		$jun=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-06%"')));
		$jul=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-07%"')));
		$aug=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-08%"')));
		$sep=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-09%"')));
		$oct=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-10%"')));
		$nov=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-11%"')));
		$dec=count(Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-12%"')));
		$months_data=array($jan, $feb, $mar, $apr, $may, $jun, $jul, $aug, $sep, $oct, $nov, $dec);


		$sql='select distinct substring(ord_no,7) as ord from tbl_ordinance order by date_passed asc';
			$connection=Yii::app()->db;
			$command=$connection->createCommand($sql);
			$years=$command->queryAll();

		$y=array();
 			foreach($years as $value){
 				array_push($y,count(Ordinance::model()->findAll(array('condition'=>'ord_no like "%'.$value['ord'].'"'))));
			}

		$this->render('indexOrd',array(
			'months'=>$months,'months_data'=>$months_data,'years'=>$years,'years_data'=>$y
		));
	}
	
	public function seriesOrd($noMonth){
		$officials=Officials::model()->findAll(array('condition'=>'now() >= start_date and now() <= end_date','order'=>'off_id asc'));
$ordinance=Ordinance::model()->findAll(array('condition'=>'date_passed like "'.date('Y').'-'.$noMonth.'%"'));

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

foreach($ordinance as $ord){
    $temp_ord=explode(',',$ord->author);

      foreach($off as $val){
          if (in_array($val, $temp_ord)) {
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
