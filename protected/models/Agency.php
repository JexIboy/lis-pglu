<?php

/**
 * This is the model class for table "tbl_agency".
 *
 * The followings are the available columns in table 'tbl_agency':
 * @property integer $agency_id
 * @property integer $agency_name
 * @property string $shortname
 * @property string $address
 * @property string $contact_person
 * @property integer $contact_num
 *
 * The followings are the available model relations:
 * @property TrackOrd[] $trackOrds
 */
class Agency extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_agency';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('agency_name, address, contact_person, contact_num', 'required'),
			array('shortname', 'length', 'max'=>10),
			array('address,contact_num, contact_person', 'length', 'max'=>50),
			array('agency_name','length','max'=>100),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('agency_id, agency_name, shortname, address, contact_person, contact_num', 'safe', 'on'=>'search'),
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
			'trackOrds' => array(self::HAS_MANY, 'TrackOrd', 'agency_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'agency_id' => 'ID',
			'agency_name' => 'Agency Name',
			'shortname' => 'Shortname',
			'address' => 'Address',
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

		$criteria->compare('agency_id',$this->agency_id);
		$criteria->compare('agency_name',$this->agency_name);
		$criteria->compare('shortname',$this->shortname,true);
		$criteria->compare('address',$this->address,true);
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
	 * @return Agency the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
