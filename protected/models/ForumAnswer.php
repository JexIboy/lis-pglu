<?php

/**
 * This is the model class for table "forum_answer".
 *
 * The followings are the available columns in table 'forum_answer':
 * @property integer $question_id
 * @property integer $a_id
 * @property string $a_name
 * @property string $a_email
 * @property string $a_answer
 * @property string $a_datetime
 *
 * The followings are the available model relations:
 * @property ForumQuestion $a
 */
class ForumAnswer extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'forum_answer';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('a_answer,a_name,a_email', 'required'),
			array('a_email','email','message'=>'Invalid Email Address'),
			array('question_id, a_id', 'numerical', 'integerOnly'=>true),
			array('a_name, a_email', 'length', 'max'=>65),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('question_id, a_id, a_name, a_email, a_answer, a_datetime', 'safe', 'on'=>'search'),
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
			'a' => array(self::BELONGS_TO, 'ForumQuestion', 'a_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'question_id' => 'Question',
			'a_id' => 'ID',
			'a_name' => 'Name',
			'a_email' => 'Email Address',
			'a_answer' => 'Reply/Comment',
			'a_datetime' => 'Date Replied',
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
		$criteria->order='a_datetime desc';
		$criteria->compare('question_id',$this->question_id);
		$criteria->compare('a_id',$this->a_id);
		$criteria->compare('a_name',$this->a_name,true);
		$criteria->compare('a_email',$this->a_email,true);
		$criteria->compare('a_answer',$this->a_answer,true);
		$criteria->compare('a_datetime',$this->a_datetime,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ForumAnswer the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
