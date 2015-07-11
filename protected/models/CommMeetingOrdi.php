<?php

/**
 * This is the model class for table "tbl_comm_meeting_ordi".
 *
 * The followings are the available columns in table 'tbl_comm_meeting_ordi':
 * @property integer $meeting_ordi_id
 * @property integer $ref_id
 * @property integer $action_taken
 * @property string $date_meeting
 * @property string $public_hearing
 * @property string $comm_report
 * @property integer $input_by
 * @property integer $comm_meeting_stat
 * @property string $comm_rep_file
 *
 * The followings are the available model relations:
 * @property Employee $inputBy
 * @property Referral $ref
 * @property Ordinance[] $ordinances
 */
class CommMeetingOrdi extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public $subject_matter;
	public $ctrl_no;
	public function tableName()
	{
		return 'tbl_comm_meeting_ordi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('action_taken, input_by, comm_meeting_stat,ord_remark', 'required'),
			array('ref_id, action_taken, input_by,archive, comm_meeting_stat,ord_remark', 'numerical', 'integerOnly'=>true),
			array('comm_rep_file', 'length', 'max'=>100),
			array('comm_rep_file', 'file','types'=> 'pdf','allowEmpty'=>true, ),
			array('comm_report', 'safe'),
			array('date_meeting, public_hearing', 'my_required'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('meeting_ordi_id, ref_id, ctrl_no, action_taken, date_meeting, public_hearing, comm_report,ord_remark, input_by, comm_meeting_stat, comm_rep_file', 'safe', 'on'=>'search'),
		);
	}
	public function my_required($attribute_name, $params)
	{
    if (empty($this->date_meeting) && empty($this->public_hearing)) {
        $this->addError($attribute_name, 'At least Date Meeting or Public Hearing field must be filled up');

        return false;
    }
    if (!empty($this->date_meeting) && !empty($this->public_hearing)) {
        $this->addError($attribute_name, 'Either Date Meeting or Public Hearing field must be blank');
        

        return false;
    }

    return true;
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
			'ref' => array(self::BELONGS_TO, 'Referral', 'ref_id'),
			'ctrl_no' => array(self::BELONGS_TO,'Communication','ref_id'),
			'ordinances' => array(self::HAS_MANY, 'Ordinance', 'meeting_ordi_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'meeting_ordi_id' => 'ID',
			'ref_id' => 'refe No.',
			'ctrl_no' => 'Control No',
			'action_taken' => 'Action Taken',
			'date_meeting' => 'Date Meeting',
			'public_hearing' => 'Public Hearing',
			'comm_report' => 'Committee Report',
			'input_by' => 'Inputted By',
			'comm_meeting_stat' => 'Committee Meeting Stat',
			'comm_rep_file' => 'Committee Report File',
			'ord_remark' => 'Ordinance Remark',
			'archive' => 'Archived'
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

		$criteria=new CDbCriteria;
		$criteria->condition='archive=0';
		$criteria->compare('meeting_ordi_id',$this->meeting_ordi_id);
		$criteria->compare('ctrl_no',$this->ctrl_no);
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('action_taken',$this->action_taken);
		$criteria->compare('date_meeting',$this->date_meeting,true);
		$criteria->compare('public_hearing',$this->public_hearing,true);
		$criteria->compare('comm_report',$this->comm_report,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('comm_meeting_stat',$this->comm_meeting_stat);
		$criteria->compare('ord_remark',$this->ord_remark);
		$criteria->compare('comm_rep_file',$this->comm_rep_file,true);
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
		$criteria->compare('meeting_ordi_id',$this->meeting_ordi_id);
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('action_taken',$this->action_taken);
		$criteria->compare('date_meeting',$this->date_meeting,true);
		$criteria->compare('public_hearing',$this->public_hearing,true);
		$criteria->compare('comm_report',$this->comm_report,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('comm_meeting_stat',$this->comm_meeting_stat);
		$criteria->compare('ord_remark',$this->ord_remark);
		$criteria->compare('comm_rep_file',$this->comm_rep_file,true);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}

	public function forOrdinance()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;
		
		$criteria->condition='archive=0 and comm_meeting_stat=1 and ord_remark=0 and action_taken=1 ';

		$criteria->compare('meeting_ordi_id',$this->meeting_ordi_id);
		$criteria->compare('ref_id',$this->ref_id);
		$criteria->compare('action_taken',$this->action_taken);
		$criteria->compare('date_meeting',$this->date_meeting,true);
		$criteria->compare('public_hearing',$this->public_hearing,true);
		$criteria->compare('comm_report',$this->comm_report,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('comm_meeting_stat',$this->comm_meeting_stat);
		$criteria->compare('ord_remark',$this->ord_remark);
		$criteria->compare('comm_rep_file',$this->comm_rep_file,true);
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
	 * @return CommMeetingOrdi the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	public function CommOrdi(){
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id = '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');

		$criteria = new CDbCriteria();
		$criteria->condition = "referral_stat=0";
		$criteria->addInCondition("ctrl_no", $result);

		$criteria2 = new CDbCriteria();
		$criteria2->addInCondition("ctrl_no", $result);

		return $this->isNewRecord? CHtml::listData(Referral::model()->findAll($criteria),'ref_id','ctrl_no') : CHtml::listData(Referral::model()->findAll($criteria2),'ref_id','ctrl_no');
	}
	public function getCommDetails(){

		return Communication::model()->findByPK($this->ref->ctrlNo->ctrl_no);
	}
	public function getControlNumber(){
		return $this->ref->ctrlNo->ctrl_no;
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
}
