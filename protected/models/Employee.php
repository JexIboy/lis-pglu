<?php

/**
 * This is the model class for table "tbl_employee".
 *
 * The followings are the available columns in table 'tbl_employee':
 * @property integer $emp_id
 * @property string $emp_fname
 * @property string $emp_mname
 * @property string $emp_lname
 * @property integer $position
 * @property integer $dept_id
 * @property integer $contact_num
 * @property string $email_add
 *
 * The followings are the available model relations:
 * @property CommMeetingOrdi[] $commMeetingOrdis
 * @property CommMeetingReso[] $commMeetingResos
 * @property Communication[] $communications
 * @property Position $position0
 * @property Department $dept
 * @property Officials[] $officials
 * @property Ordinance[] $ordinances
 * @property Referral[] $referrals
 * @property Resolution[] $resolutions
 * @property TrackOrd[] $trackOrds
 * @property User[] $users
 */
class Employee extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_employee';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('emp_fname, emp_mname, emp_lname, position, dept_id', 'required'),
			array('position, dept_id, contact_num', 'numerical', 'integerOnly'=>true),
			array('emp_fname, emp_mname, emp_lname, email_add', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('emp_id, emp_fname, emp_mname, emp_lname, fullname, position, dept_id, contact_num, email_add', 'safe', 'on'=>'search'),
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
			'commMeetingOrdis' => array(self::HAS_MANY, 'CommMeetingOrdi', 'input_by'),
			'commMeetingResos' => array(self::HAS_MANY, 'CommMeetingReso', 'input_by'),
			'communications' => array(self::HAS_MANY, 'Communication', 'input_by'),
			'position0' => array(self::BELONGS_TO, 'Position', 'position'),
			'dept' => array(self::BELONGS_TO, 'Department', 'dept_id'),
			'officials' => array(self::HAS_MANY, 'Officials', 'emp_id'),
			'ordinances' => array(self::HAS_MANY, 'Ordinance', 'input_by'),
			'referrals' => array(self::HAS_MANY, 'Referral', 'input_by'),
			'resolutions' => array(self::HAS_MANY, 'Resolution', 'input_by'),
			'trackOrds' => array(self::HAS_MANY, 'TrackOrd', 'input_by'),
			'users' => array(self::HAS_MANY, 'User', 'emp_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'emp_id' => 'ID',
			'emp_fname' => 'First Name',
			'emp_mname' => 'Middle Name',
			'emp_lname' => 'Last Name',
			'position' => 'Position',
			'dept_id' => 'Department',
			'contact_num' => 'Contact Number',
			'email_add' => 'Email Address',
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

		$criteria->compare('emp_id',$this->emp_id);
		$criteria->compare('emp_fname',$this->emp_fname,true);
		$criteria->compare('emp_mname',$this->emp_mname,true);
		$criteria->compare('emp_lname',$this->emp_lname,true);
		$criteria->compare('position',$this->position);
		$criteria->compare('dept_id',$this->dept_id);
		$criteria->compare('contact_num',$this->contact_num);
		$criteria->compare('email_add',$this->email_add,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Employee the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	public function getFullname(){
		return ucfirst($this->emp_fname).' '.substr(ucfirst($this->emp_mname),0,1).'. '.ucfirst($this->emp_lname);
	}
}
