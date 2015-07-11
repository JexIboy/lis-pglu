<?php

/**
 * This is the model class for table "tbl_status".
 *
 * The followings are the available columns in table 'tbl_status':
 * @property integer $stat_id
 * @property string $ctrl_no
 * @property integer $comm_stat
 * @property integer $referral_stat
 * @property integer $comm_meeting_stat
 * @property integer $remarks
 *
 * The followings are the available model relations:
 * @property Communication $ctrlNo
 */
class Status extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_status';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ctrl_no', 'required'),
			array('comm_stat, referral_stat, comm_meeting_stat, remarks', 'numerical', 'integerOnly'=>true),
			array('ctrl_no', 'length', 'max'=>20),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('stat_id, ctrl_no, comm_stat, referral_stat, comm_meeting_stat, remarks', 'safe', 'on'=>'search'),
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
			'ctrlNo' => array(self::BELONGS_TO, 'Communication', 'ctrl_no'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'stat_id' => 'Stat',
			'ctrl_no' => 'Control No',
			'comm_stat' => 'Comm Stat',
			'referral_stat' => 'Referral Stat',
			'comm_meeting_stat' => 'Comm Meeting Stat',
			'remarks' => 'Remarks',
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

		$criteria->compare('stat_id',$this->stat_id);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('comm_stat',$this->comm_stat);
		$criteria->compare('referral_stat',$this->referral_stat);
		$criteria->compare('comm_meeting_stat',$this->comm_meeting_stat);
		$criteria->compare('remarks',$this->remarks);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function forResolution()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id <> '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');
		
		$criteria=new CDbCriteria;
		$criteria->condition='comm_meeting_stat = 1 and remarks =0';
		$criteria->addInCondition("ctrl_no", $result);
		$criteria->compare('stat_id',$this->stat_id);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('comm_stat',$this->comm_stat);
		$criteria->compare('referral_stat',$this->referral_stat);
		$criteria->compare('comm_meeting_stat',$this->comm_meeting_stat);
		$criteria->compare('remarks',$this->remarks);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function countResolution()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id <> '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');
		
		$criteria=new CDbCriteria;
		$criteria->condition='comm_meeting_stat = 1 and remarks =0';
		$criteria->addInCondition("ctrl_no", $result);

		return Status::model()->findAll($criteria);
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Status the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	
	
}
