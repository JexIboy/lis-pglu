<?php

/**
 * This is the model class for table "tbl_origin".
 *
 * The followings are the available columns in table 'tbl_origin':
 * @property integer $orig_id
 * @property string $orig_name
 * @property string $shortname
 * @property string $contact_person
 * @property integer $contact_num
 *
 * The followings are the available model relations:
 * @property Communication[] $communications
 */
class Origin extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_origin';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('orig_name,shortname', 'required'),
			array('orig_name,shortname','unique','message'=>'Already Added'),
			array('orig_name, contact_person, contact_num', 'length', 'max'=>100),
			array('shortname', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('orig_id, orig_name, shortname, contact_person, contact_num', 'safe', 'on'=>'search'),
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
			'communications' => array(self::HAS_MANY, 'Communication', 'orig_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'orig_id' => 'ID',
			'orig_name' => 'Origin Name',
			'shortname' => 'Shortname',
			'contact_person' => 'Contact Person',
			'contact_num' => 'Contact Number',
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

		$criteria->compare('orig_id',$this->orig_id);
		$criteria->compare('orig_name',$this->orig_name,true);
		$criteria->compare('shortname',$this->shortname,true);
		$criteria->compare('contact_person',$this->contact_person,true);
		$criteria->compare('contact_num',$this->contact_num);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Origin the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
