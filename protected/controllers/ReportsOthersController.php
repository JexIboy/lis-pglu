<?php

class ReportsOthersController extends Controller
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
				'actions'=>array('CommReportMonthly','CommReportYearly',
                          'ViewTracking','PrintCommReportMonthly','PrintCommReportYearly','AgendaMaker','viewAgenda',
                          'printAgendaMaker'),
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
  public function actionViewTracking(){
    
    $activity=new Activity();
    $activity->act_desc='Viewed Tracking List of Communication';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

    $forResolution=new Communication('forResolution');
    $forOrdinance=new Communication('forOrdinance');
    $forResolution->unsetAttributes();  // clear any default values
    if(isset($_GET['Communication'])){
      $forResolution->attributes=$_GET['Communication'];
      $forOrdinance->attributes=$_GET['Communication'];

}
    $this->render('ViewTracking',array(
      'forResolution'=>$forResolution,'forOrdinance'=>$forOrdinance
    ));
  }
  public function actionAgendaMaker(){
    
    $activity=new Activity();
    $activity->act_desc='Viewed Agenda List';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

            $model=new Agenda('search');
            if(isset($_POST['Agenda'])){
            $model->attributes=$_POST['Agenda'];
            $model->session_time=date('H:i:s',strtotime($model->session_time));
            $model->confirmation=0;
            if($model->save())
                  $this->redirect(array('/reportsOthers/viewAgenda','id'=>$model->agenda_id));
            }

            $this->render('agendaMaker',array('model'=>$model));
        }
    public function actionPrintAgendaMaker($id){
      
    $activity=new Activity();
    $activity->act_desc='Printed Agenda ID: '.$id;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

          $model=Agenda::model()->findByPK($id);
            $communication=Communication::model()->findAll(array('condition'=>'date_agenda = :date_agenda','params'=>array(':date_agenda'=>$model->session_date)));
            $resoMeeting=CommMeetingReso::model()->findAll(array('condition'=>'comm_report = :comm_report','params'=>array(':comm_report'=>$model->session_date)));
            $ordMeeting=CommMeetingOrdi::model()->findAll(array('condition'=>'comm_report = :comm_report','params'=>array(':comm_report'=>$model->session_date)));
            $this->renderPartial('printAgendaMaker',array('model'=>$model,'communication'=>$communication,'resoMeeting'=>$resoMeeting,'ordMeeting'=>$ordMeeting));
        }
    public function actionViewAgenda($id){
      
    $activity=new Activity();
    $activity->act_desc='Viewed Agenda ID: '.$id;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

            $model=Agenda::model()->findByPk($id);

            $communication=new CActiveDataProvider('Communication', array(
            'criteria' => array(
                'condition'=>'date_agenda = :date_agenda',
                'params'=>array(':date_agenda'=>$model->session_date),
              ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        )); 
            $resoMeeting=new CActiveDataProvider('CommMeetingReso', array(
            'criteria' => array(
                'condition'=>'comm_report = :comm_report',
                'params'=>array(':comm_report'=>$model->session_date),
              ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        )); 
            $ordMeeting=new CActiveDataProvider('CommMeetingReso', array(
            'criteria' => array(
                'condition'=>'comm_report = :comm_report',
                'params'=>array(':comm_report'=>$model->session_date),
              ),
            'pagination' => array(
                'pageSize' => 10,
            ),
        )); 

            $this->render('/reportsOthers/viewAgenda',array('communication'=>$communication,'resoMeeting'=>$resoMeeting,'ordMeeting'=>$ordMeeting));
    }
    public function actionPrintCommReportMonthly($model){
        $data=explode(',',$model);
        $comm_name = $data[0];
        $month = $data[2];
        $year = $data[1];
                                $my=$year.'-'.$month;
                                $x=Committee::model()->findByPK($comm_name);
                     $referrals= CHtml::listData(Referral::model()->findAll(array('condition'=> 'lead_committee = :lcomm',
                                                                  'params'=>array(':lcomm'=>$x->comm_id))),'ref_id','ref_id');   

                     
                     $criteria = new CDbCriteria();
                    $criteria->condition = "action_taken <> 0 and comm_report like :comm_rep";
                    $criteria->params=array(':comm_rep'=>$my.'%');
                    $criteria->addInCondition("ref_id", $referrals);

                     
                     $listReso=CommMeetingReso::model()->findAll($criteria);
                     $listOrd=CommMeetingOrdi::model()->findAll($criteria);

                     
    $activity=new Activity();
    $activity->act_desc='Printed Monthly Committee Report of '.$x->comm_name;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
                                $this->renderPartial('printCommReportMonthly',array('listOrd'=>$listOrd,'listReso'=>$listReso,'comm_name'=>$x->comm_name,'month'=>$month,'year'=>$year));
    }
	public function actionCommReportMonthly(){
    
    $activity=new Activity();
    $activity->act_desc='Searched Monthly Committee Report per Committee';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

            $comm_name='';
            $ref_id='';
            $year=date('Y');
            $month=date('m');
            $my=$year.'-'.$month;
		if (isset($_POST['searchButton']))
		{
						$comm_name = $_POST['comm_name'];
                        $month = $_POST['month'];
						$year = $_POST['year'];
                        $my=$year.'-'.$month;

                        $x=Committee::model()->findByPK($comm_name);
                     $referrals= CHtml::listData(Referral::model()->findAll(array('condition'=> 'lead_committee = :lcomm',
                                                                  'params'=>array(':lcomm'=>$x->comm_id))),'ref_id','ref_id');   

                     
                     $criteria = new CDbCriteria();
                    $criteria->condition = "action_taken <> 0 and comm_report like :comm_rep";
                    $criteria->params=array(':comm_rep'=>$my.'%');
                    $criteria->addInCondition("ref_id", $referrals);

                     $dataProviderReso = new CActiveDataProvider('CommMeetingReso', array(
            'criteria' => $criteria,
            'pagination' => array(
                'pageSize' => 20,
            ),
        )); 
                     $dataProviderOrd =  new CActiveDataProvider('CommMeetingOrdi', array(
            'criteria' => $criteria,
            'pagination' => array(
                'pageSize' => 20,
            ),
        )); 
              
    $activity=new Activity();
    $activity->act_desc='Searched Monthly Committe Report of '.$x->comm_name;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();

		}else{
                   	 $dataProviderReso = new CActiveDataProvider('CommMeetingReso', array(
            'criteria' => array(
            
                'condition' => 'action_taken <> 0 or comm_report = null',
            ),
            'pagination' => array(
                'pageSize' => 20,
            ),
        ));  
        $dataProviderOrd = new CActiveDataProvider('CommMeetingOrdi', array(
            'criteria' => array(
            
                'condition' => 'action_taken <> 0 or comm_report = null',
            ),
            'pagination' => array(
                'pageSize' => 20,
            ),
        ));    
                   }             
		    
			
		$this->render('commReportMonthly',array(
				'comm_name'=>$comm_name,'year'=>$year,'month'=>$month,'dataProviderReso'=> $dataProviderReso,'dataProviderOrd'=>$dataProviderOrd
		));
        }
public function actionPrintCommReportYearly($model){
        $data=explode(',',$model);
        $comm_name = $data[0];
        $year = $data[1];
                                $x=Committee::model()->findByPK($comm_name);
                     $referrals= CHtml::listData(Referral::model()->findAll(array('condition'=> 'lead_committee = :lcomm',
                                                                  'params'=>array(':lcomm'=>$x->comm_id))),'ref_id','ref_id');   

                     
                     $criteria = new CDbCriteria();
                    $criteria->condition = "action_taken <> 0 and comm_report like :comm_rep";
                    $criteria->params=array(':comm_rep'=>$year.'%');
                    $criteria->addInCondition("ref_id", $referrals);

                     
                     $listReso=CommMeetingReso::model()->findAll($criteria);
                     $listOrd=CommMeetingOrdi::model()->findAll($criteria);

                    
    $activity=new Activity();
    $activity->act_desc='Searched Yearly Committe Report of '.$x->comm_name;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();
                                $this->renderPartial('printCommReportYearly',array('listOrd'=>$listOrd,'listReso'=>$listReso,'comm_name'=>$x->comm_name,'year'=>$year));
    }
        public function actionCommReportYearly(){
          
    $activity=new Activity();
    $activity->act_desc='Searched Yearly Committe Report per Committe';
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save(); 

            $comm_name='';
            $ref_id='';
            $year=date('Y');
		if (isset($_POST['searchButton']))
		{
						$comm_name = $_POST['comm_name'];
						$year = $_POST['year'];
                            
		        
                     $x=Committee::model()->findByPK($comm_name);
                     $referrals= CHtml::listData(Referral::model()->findAll(array('condition'=> 'lead_committee = :lcomm',
                     											  'params'=>array(':lcomm'=>$x->comm_id))),'ref_id','ref_id');   

                     
                     $criteria = new CDbCriteria();
					$criteria->condition = "action_taken <> 0 and comm_report like :comm_rep";
                    $criteria->params=array(':comm_rep'=>$year.'%');
					$criteria->addInCondition("ref_id", $referrals);
                    $criteria->order='comm_report asc';

                     $dataProviderReso = new CActiveDataProvider('CommMeetingReso', array(
            'criteria' => $criteria,
            'pagination' => array(
                'pageSize' => 20,
            ),
        )); 
                     $dataProviderOrd =  new CActiveDataProvider('CommMeetingOrdi', array(
            'criteria' => $criteria,
            'pagination' => array(
                'pageSize' => 20,
            ),
        )); 
                        
                        
    $activity=new Activity();
    $activity->act_desc='Searched Yearly Committe Report of '.$x->comm_name;
    $activity->act_datetime=date('Y-m-d G:i:s');
    $activity->act_by=User::model()->findByPK(Yii::app()->user->name)->emp_id;
    $activity->save();          
                   }else{
                   	  $dataProviderReso = new CActiveDataProvider('CommMeetingReso', array(
            'criteria' => array(
            
                'condition' => 'action_taken <> 0 or comm_report = null',
            ),
            'pagination' => array(
                'pageSize' => 20,
            ),
        ));  
        $dataProviderOrd = new CActiveDataProvider('CommMeetingOrdi', array(
            'criteria' => array(
            
                'condition' => 'action_taken <> 0 or comm_report = null',
            ),
            'pagination' => array(
                'pageSize' => 20,
            ),
        ));    
                   }             
		    
			
		$this->render('commReportYearly',array(
				'comm_name'=>$comm_name,'year'=>$year,'dataProviderReso'=> $dataProviderReso,'dataProviderOrd'=> $dataProviderOrd
		));
        }

}
