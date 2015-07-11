<?php

/**
 * This is the model class for table "tbl_agenda".
 *
 * The followings are the available columns in table 'tbl_agenda':
 * @property integer $agenda_id
 * @property string $communications
 * @property string $comm_reports
 * @property integer $session_no
 * @property integer $session_type
 * @property integer $sp_batch_no
 * @property string $session_time
 * @property string $session_date
 */
class Agenda extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_agenda';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('session_no, session_type, sp_batch_no, session_time, session_date', 'required'),
			array('session_no,session_date','unique'),
			array('session_no, session_type, sp_batch_no,confirmation', 'numerical', 'integerOnly'=>true),
			array('communications, comm_reports', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('agenda_id,  session_no, session_type,confirmation, sp_batch_no, session_time, session_date', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'agenda_id' => 'Agenda',
			'communications' => 'Communications',
			'comm_reports' => 'Comm Reports',
			'session_no' => 'Session No',
			'session_type' => 'Session Type',
			'sp_batch_no' => 'Sp Batch No',
			'session_time' => 'Session Time',
			'session_date' => 'Session Date',
			'confirmation' => 'Confirmation',
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
		$criteria->condition='confirmation=0';
		$criteria->compare('agenda_id',$this->agenda_id);
		$criteria->compare('session_no',$this->session_no);
		$criteria->compare('session_type',$this->session_type);
		$criteria->compare('sp_batch_no',$this->sp_batch_no);
		$criteria->compare('session_time',$this->session_time,true);
		$criteria->compare('session_date',$this->session_date,true);
		$criteria->compare('confirmation',$this->confirmation,true);

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
	 * @return Agenda the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	public function getSessionType(){
		echo $this->session_type==0? 'Regular Session' : 'Special Session';
	}
	public function getSessionTypes($id){
		return $id==0? 'Regular Session' : 'Special Session';
	}
}
