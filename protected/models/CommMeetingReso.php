<?php

/**
 * This is the model class for table "tbl_comm_meeting_reso".
 *
 * The followings are the available columns in table 'tbl_comm_meeting_reso':
 * @property integer $meeting_reso_id
 * @property integer $ref_id
 * @property integer $action_taken
 * @property string $date_meeting
 * @property string $comm_report
 * @property integer $input_by
 * @property string $comm_rep_file
 * @property integer $comm_meeting_stat
 *
 * The followings are the available model relations:
 * @property Employee $inputBy
 * @property Referral $ref
 */
class CommMeetingReso extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public $subject_matter;
	public $ctrl_no;
	public $user;


	public function tableName()
	{
		return 'tbl_comm_meeting_reso';
		
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ref_id, action_taken, date_meeting, input_by, comm_meeting_stat', 'required'),
			array('ref_id, action_taken, input_by, comm_meeting_stat,archive', 'numerical', 'integerOnly'=>true),
			array('comm_rep_file', 'length', 'max'=>100),
			array('comm_report', 'safe'),
			 array('comm_rep_file', 'file',
                'types'=> 'pdf','allowEmpty'=>true,
                'maxSize' => 1024 * 1024 * 100, // 100MB                
                'tooLarge' => 'The file was larger than 100MB. Please upload a smaller file.',                
            ),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('meeting_reso_id, ref, subject_matter, ctrlNo, ctrlNos, ctrl_no ,ref_id, action_taken, date_meeting, comm_report, input_by, comm_rep_file, comm_meeting_stat', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'inputBy' => array(self::BELONGS_TO, 'Employee', 'input_by'),
			'commreso'=>array(self::BELONGS_TO, 'CommMeetingReso','.ref_id'),
			'ref'=>array(self::BELONGS_TO, 'Referral','ref_id'),
			'ctrlNo' => array(self::BELONGS_TO, 'Communication', 'ctrl_no'),
			'subject_matter'=>array(self::BELONGS_TO,'Communication','ref_id'),	
			
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */



	public function attributeLabels()
	{
		return array(
			'meeting_reso_id' => 'ID',
			'ref_id' => 'Referral No',
			'ctrl_no' => 'Control No',
			'action_taken' => 'Action Taken',
			'date_meeting' => 'Date Meeting',
			'comm_report' => 'Committee Report',
			'input_by' => 'Inputted By',
			'comm_rep_file' => 'Commitee Report File',
			'comm_meeting_stat' => 'Commitee Meeting Status',
			'archive' => 'Archived',
			'subject_matter'=>'Subject Matter',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$criteria=new CDbCriteria();
		//$criteria->with='subject_matter';		
		//$criteria->compare('subject_matter',$this->subject_matter,true);
		//$criteria->compare('ctrlNo',$this->ctrl_no,true);
		//$criteria->compare('meeting_reso_id',$this->meeting_reso_id);
		//$criteria->compare('ref_id',$this->ref_id);
		//$criteria->compare('action_taken',$this->action_taken);
		//$criteria->compare('date_meeting',$this->date_meeting,true);
		//$criteria->compare('comm_report',$this->comm_report,true);
		//$criteria->compare('input_by',$this->input_by);
		//$criteria->compare('comm_rep_file',$this->comm_rep_file,true);
		//$criteria->compare('archive',$this->comm_rep_file,true);
		//$criteria->compare('comm_meeting_stat',$this->comm_meeting_stat);
		$criteria->join = 'JOIN tbl_referral r ON t.ref_id = r.ref_id 
							JOIN tbl_communication c ON r.ctrl_no = c.ctrl_no';
		$criteria->condition = 'c.subject_matter LIKE "%' .$this->subject_matter . '%" AND t.archive = 0';
		$criteria->compare('t.meeting_reso_id',$this->meeting_reso_id);
		$criteria->compare('t.ref_id',$this->ref_id);
		$criteria->compare('t.action_taken',$this->action_taken);
		$criteria->compare('t.date_meeting',$this->date_meeting,true);
		$criteria->compare('t.comm_report',$this->comm_report,true);
		$criteria->compare('t.input_by',$this->input_by);
		$criteria->compare('t.comm_rep_file',$this->comm_rep_file,true);
		$criteria->compare('t.archive',$this->comm_rep_file,true);
		$criteria->compare('t.comm_meeting_stat',$this->comm_meeting_stat);
				
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,

			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function viewArchive()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$criteria=new CDbCriteria;
		$criteria->condition='archive=1';
		$criteria->compare('meeting_reso_id',$this->meeting_reso_id);
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('action_taken',$this->action_taken);
		$criteria->compare('date_meeting',$this->date_meeting,true);
		$criteria->compare('comm_report',$this->comm_report,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('comm_rep_file',$this->comm_rep_file,true);
		$criteria->compare('archive',$this->comm_rep_file,true);
		$criteria->compare('comm_meeting_stat',$this->comm_meeting_stat);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CommMeetingReso the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	public function CommReso(){
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id <> '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');

		$criteria = new CDbCriteria();
		$criteria->condition = "referral_stat=0";
		$criteria->addInCondition("ctrl_no", $result);

		$criteria2 = new CDbCriteria();
		$criteria2->addInCondition("ctrl_no", $result);

		return $this->isNewRecord ? CHtml::listData(Referral::model()->findAll($criteria),'ref_id','ctrl_no') : CHtml::listData(Referral::model()->findAll($criteria2),'ref_id','ctrl_no');
	}
	public function getControlNumber(){
	
		return $this->ref->ctrlNo->ctrl_no;
	}
	public function getCommDetails(){

		return Communication::model()->findByPK($this->ref->ctrlNo->ctrl_no);
	}

	public function getActionTaken(){
		switch($this->action_taken){
			case 0:
				return 'Pending';break;
			case 1:
				return 'Approved';break;
			case 2:
				return 'Return to Origin';break;
		}
	}
public function getSubjectMatter(){
			
				
				//var_dump($user);
		return $this->ref->ctrlNo->subject_matter;
	}
	
}
