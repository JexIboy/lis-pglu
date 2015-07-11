<?php

/**
 * This is the model class for table "tbl_activity".
 *
 * The followings are the available columns in table 'tbl_activity':
 * @property integer $act_id
 * @property string $act_desc
 * @property integer $act_by
 * @property string $act_datetime
 *
 * The followings are the available model relations:
 * @property User $actBy
 */
class Activity extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Activity the static model class
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
		return 'tbl_activity';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('act_by', 'numerical', 'integerOnly'=>true),
			array('act_desc', 'length', 'max'=>100),
			array('act_datetime', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('act_id, act_desc, act_by, act_datetime', 'safe', 'on'=>'search'),
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
			'actBy' => array(self::BELONGS_TO, 'User', 'act_by'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'act_id' => 'ID',
			'act_desc' => 'Activity Description',
			'act_by' => 'Activity By',
			'act_datetime' => 'Datetime',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;
		$criteria->order='act_datetime desc';
		$criteria->compare('act_id',$this->act_id);
		$criteria->compare('act_desc',$this->act_desc,true);
		$criteria->compare('act_by',$this->act_by);
		$criteria->compare('act_datetime',$this->act_datetime,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
}