<?php

/**
 * This is the model class for table "tbl_officials".
 *
 * The followings are the available columns in table 'tbl_officials':
 * @property integer $off_id
 * @property integer $emp_id
 * @property string $start_date
 * @property string $end_date
 *
 * The followings are the available model relations:
 * @property Committee[] $committees
 * @property Committee[] $committees1
 * @property Employee $emp
 */
class Officials extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_officials';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('emp_id, start_date, end_date', 'required'),
			array('start_date', 'compare', 'compareAttribute'=>'end_date','operator'=>'<='),
			array('emp_id','unique','message'=>'Already Added'),
			array('emp_id', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('off_id, emp_id, fullname, start_date, end_date', 'safe', 'on'=>'search'),
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
			'committees' => array(self::HAS_MANY, 'Committee', 'chairman'),
			'committees1' => array(self::HAS_MANY, 'Committee', 'v_chairman'),
			'emp' => array(self::BELONGS_TO, 'Employee', 'emp_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'off_id' => 'ID',
			'emp_id' => 'Name',
			'start_date' => 'Start Date',
			'end_date' => 'End Date',
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

		$criteria->compare('off_id',$this->off_id);
		$criteria->compare('emp_id',$this->emp_id);
		$criteria->compare('start_date',$this->start_date,true);
		$criteria->compare('end_date',$this->end_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Officials the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getFullname(){
		return $this->emp->Fullname;
	}
}
