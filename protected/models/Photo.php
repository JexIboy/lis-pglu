<?php

/**
 * This is the model class for table "tbl_photo".
 *
 * The followings are the available columns in table 'tbl_photo':
 * @property integer $photo_id
 * @property integer $gallery_id
 * @property string $file
 * @property string $photo_details
 * @property integer $photo_usage
 *
 * The followings are the available model relations:
 * @property PhotoGallery $gallery
 */
class Photo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_photo';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('gallery_id, file, photo_details, photo_usage', 'required'),
			array('gallery_id, photo_usage', 'numerical', 'integerOnly'=>true),
			array('file', 'length', 'max'=>75),
			array('photo_details', 'length', 'max'=>100),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('photo_id, gallery_id, file, photo_details, photo_usage', 'safe', 'on'=>'search'),
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
			'gallery' => array(self::BELONGS_TO, 'PhotoGallery', 'gallery_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'photo_id' => 'Photo',
			'gallery_id' => 'Gallery',
			'file' => 'Photo Name',
			'photo_details' => 'Photo Details',
			'photo_usage' => 'Photo Usage',
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

		$criteria->compare('photo_id',$this->photo_id);
		$criteria->compare('gallery_id',$this->gallery_id);
		$criteria->compare('file',$this->file,true);
		$criteria->compare('photo_details',$this->photo_details,true);
		$criteria->compare('photo_usage',$this->photo_usage);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Photo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
