<?php

/**
 * This is the model class for table "tbl_user".
 *
 * The followings are the available columns in table 'tbl_user':
 * @property string $username
 * @property string $password
 * @property integer $emp_id
 * @property string $role
 * @property string $start_date
 * @property string $exp_date
 *
 * The followings are the available model relations:
 * @property Employee $emp
 */
class User extends CActiveRecord
{
	public $retype_password;
    
    const ROLE_SECRC="SCR-RC";
    const ROLE_SECT="SCR-T";
    const ROLE_SECRF="SCR-RF";
    const ROLE_BOKAL="BOKAL";
    const ROLE_SYSAD="SYSAD";
    const ROLE_SECBOK="SCR-BOK";
    const ROLE_VG="VG";
    
     public function getRoles(){
            return array(
            	self::ROLE_VG=>'Vice Governor',
            	self::ROLE_BOKAL=>'Board Member',
            	self::ROLE_SECBOK=>'Secretary - Board Member',
                self::ROLE_SECRC=>'Secretary - Receiving',
                self::ROLE_SECT=>'Secretary - Tracking',
                self::ROLE_SECRF=>'Secretary - Referral',
                self::ROLE_SYSAD=>'System Administrator',
            );
        }
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return User the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, password, emp_id, role, start_date, exp_date', 'required'),
			array('emp_id', 'numerical', 'integerOnly'=>true),
			array('username, password, role', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('username, password, emp_id, role, start_date, exp_date', 'safe', 'on'=>'search'),
			array('retype_password','compare','compareAttribute'=>'password')
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
			'emp' => array(self::BELONGS_TO, 'Employee', 'emp_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'username' => 'Username',
			'password' => 'Password',
			'emp_id' => 'Employee ID',
			'role' => 'Role',
			'start_date' => 'Start Date',
			'exp_date' => 'Expiration Date',
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
		$criteria->compare('username',$this->username,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('emp_id',$this->emp_id);
		$criteria->compare('role',$this->role,true);
		$criteria->compare('start_date',$this->start_date,true);
		$criteria->compare('exp_date',$this->exp_date,true);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return User the static model class
	 */

	public function getURoles(){
		switch ($this->role) {
			case 'SCR-RC':
				return 'Secretary - Receiving';
				break;
			case 'SCR-RF':
				return 'Secretary - Referral';
				break;
			case 'SCR-T':
				return 'Secretary - Tracking';
				break;
			case 'VG':
				return 'Vice Governor';
				break;
			case 'SCR-BOK':
				return 'Secretary - Board Member';
				break;
			case 'BOKAL':
				return 'Board Member';
				break;
			case 'SYSAD':
				return 'System Administrator';
				break;		
			default:
				# code...
				break;
		}
	}
	
}