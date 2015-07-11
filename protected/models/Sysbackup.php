<?php

/**
 * This is the model class for table "tbl_sysbackup".
 *
 * The followings are the available columns in table 'tbl_sysbackup':
 * @property integer $db_id
 * @property string $db_name
 * @property string $date_backed_up
 * @property integer $backed_up_by
 *
 * The followings are the available model relations:
 * @property User $backedUpBy
 */
class Sysbackup extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Sysbackup the static model class
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
		return 'tbl_sysbackup';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('backed_up_by', 'numerical', 'integerOnly'=>true),
			array('db_name', 'length', 'max'=>50),
			array('date_backed_up', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('db_id, db_name, date_backed_up, backed_up_by', 'safe', 'on'=>'search'),
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
			'backedUpBy' => array(self::BELONGS_TO, 'User', 'backed_up_by'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'db_id' => 'ID',
			'db_name' => 'Database Name',
			'date_backed_up' => 'Date Backed Up',
			'backed_up_by' => 'Backed Up By',
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
		$criteria->order='date_backed_up desc';
		$criteria->compare('db_id',$this->db_id);
		$criteria->compare('db_name',$this->db_name,true);
		$criteria->compare('date_backed_up',$this->date_backed_up,true);
		$criteria->compare('backed_up_by',$this->backed_up_by);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}