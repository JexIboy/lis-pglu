<?php

/**
 * This is the model class for table "tbl_referral".
 *
 * The followings are the available columns in table 'tbl_referral':
 * @property integer $ref_id
 * @property string $ctrl_no
 * @property string $date_referred
 * @property integer $lead_committee
 * @property string $joint_committee
 * @property string $ind_letter
 * @property integer $input_by
 *
 * The followings are the available model relations:
 * @property CommMeetingOrdi[] $commMeetingOrdis
 * @property CommMeetingReso[] $commMeetingResos
 * @property Communication $ctrlNo
 * @property Committee $leadCommittee
 * @property Employee $inputBy
 */
class Referral extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public $subject_matter;
	public function tableName()
	{
		return 'tbl_referral';
		
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ctrl_no, date_referred, lead_committee, duedate', 'required'),
			array('lead_committee,referral_stat,archive', 'numerical', 'integerOnly'=>true),
			array('ctrl_no, joint_committee', 'length', 'max'=>50),
			array('ind_letter', 'length', 'max'=>300),
			array('ind_letter','file','types'=>'pdf'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ref_id, subject_matter, communication, ctrl_no, ctrlNo, date_referred,duedate, lead_committee, joint_committee, ind_letter, input_by, referral_stat', 'safe', 'on'=>'search'),
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

			'commMeetingOrdis' => array(self::HAS_MANY, 'CommMeetingOrdi', 'ref_id'),
			'commMeetingResos' => array(self::HAS_MANY, 'CommMeetingReso', 'ref_id'),
			'ctrlNo' => array(self::BELONGS_TO, 'Communication', 'ctrl_no'),
			'leadCommittee' => array(self::BELONGS_TO, 'Committee', 'lead_committee'),
			'inputBy' => array(self::BELONGS_TO, 'Employee', 'input_by'),
			'subject_matter' => array(self::BELONGS_TO, 'Communication', 'ctrl_no'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ref_id' => 'ID',
			'ctrl_no' => 'Control No',
			'ctrlNo' => 'Control No',
			'date_referred' => 'Date Referred',
			'duedate' => 'Due Date',
			'lead_committee' => 'Lead Committee',
			'joint_committee' => 'Joint Committee',
			'ind_letter' => 'Indorsement Letter',
			'referral_stat' => 'Referral Status',
			'input_by' => 'Inputted By',
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
	 
     
public function refdue()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;
		$criteria->condition='referral_stat = 0 and now() > duedate';
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('date_referred',$this->date_referred,true);
		$criteria->compare('duedate',$this->duedate,true);
		$criteria->compare('lead_committee',$this->lead_committee);
		$criteria->compare('joint_committee',$this->joint_committee,true);
		$criteria->compare('ind_letter',$this->ind_letter,true);
		$criteria->compare('referral_stat',$this->referral_stat,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}

	public function search()
	{
		
		// @todo Please modify the following code to remove attributes that should not be searched.
		$criteria=new CDbCriteria;
		$criteria->with= array('subject_matter');
		$criteria->compare('subject_matter',$this->subject_matter, true);
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('ctrlNo',$this->ctrl_no,true);
		$criteria->compare('date_referred',$this->date_referred,true);
		$criteria->compare('duedate',$this->duedate,true); 
		$criteria->compare('lead_committee',$this->lead_committee);
		$criteria->compare('joint_committee',$this->joint_committee,true);
		$criteria->compare('ind_letter',$this->ind_letter,true);
		$criteria->compare('referral_stat',$this->referral_stat,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('archive',$this->archive,true);

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
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('date_referred',$this->date_referred,true);
		$criteria->compare('duedate',$this->duedate,true);
		$criteria->compare('lead_committee',$this->lead_committee);
		$criteria->compare('joint_committee',$this->joint_committee,true);
		$criteria->compare('ind_letter',$this->ind_letter,true);
		$criteria->compare('referral_stat',$this->referral_stat,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}

	public function countCommMeetingReso(){
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id <> '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');
		

		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and referral_stat=0';
		$criteria->addInCondition("ctrl_no", $result);

		return Referral::model()->findAll($criteria);
	}
	public function forCommMeetingReso()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id <> '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');
		

		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and referral_stat=0';
		$criteria->addInCondition("ctrl_no", $result);
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('date_referred',$this->date_referred,true);
		$criteria->compare('duedate',$this->duedate,true);
		$criteria->compare('lead_committee',$this->lead_committee);
		$criteria->compare('joint_committee',$this->joint_committee,true);
		$criteria->compare('ind_letter',$this->ind_letter,true);
		$criteria->compare('referral_stat',$this->referral_stat,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function countCommMeetingOrdi(){
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id = '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');
		

		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and referral_stat=0';
		$criteria->addInCondition("ctrl_no", $result);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		return Referral::model()->findAll($criteria);
	}
	public function forCommMeetingOrdi()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id = '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');
		

		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and referral_stat=0';
		$criteria->addInCondition("ctrl_no", $result);
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('date_referred',$this->date_referred,true);
		$criteria->compare('duedate',$this->duedate,true);
		$criteria->compare('lead_committee',$this->lead_committee);
		$criteria->compare('joint_committee',$this->joint_committee,true);
		$criteria->compare('ind_letter',$this->ind_letter,true);
		$criteria->compare('referral_stat',$this->referral_stat,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('archive',$this->archive,true);

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
	 * @return Referral the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	
	public function getJoints(){
            if(!empty($this->joint_committee)){
            $x=explode(',',$this->joint_committee);
            $names='';
            foreach($x as $value){
            $criteria=new CDbCriteria;
            $criteria->condition='comm_id=:postID';
            $criteria->params=array(':postID'=>$value);
            $IA=  Committee::model()->find($criteria);
            $names=$names.$IA['comm_name'].'<br/><br/>';
            }
             echo $names;
         	}
             else{
                 echo 'No Joint Committee';
             }
        }


    public function getJointsView(){
             if(!empty($this->joint_committee)){
            $x=explode(',',$this->joint_committee);
            $names='';
            foreach($x as $value){
            $criteria=new CDbCriteria;
            $criteria->condition='comm_id=:postID';
            $criteria->params=array(':postID'=>$value);
            $IA=  Committee::model()->find($criteria);
            $names=$names.'('.$IA['comm_name'].')';
            }
             return $names;
         	}
             else{
                 return 'No Joint Committee';
             }
        }

    

    
}
