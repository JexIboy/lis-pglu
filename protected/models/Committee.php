<?php

/**
 * This is the model class for table "tbl_committee".
 *
 * The followings are the available columns in table 'tbl_committee':
 * @property integer $comm_id
 * @property string $comm_name
 * @property string $shortname
 * @property integer $chairman
 * @property integer $v_chairman
 * @property string $members
 *
 * The followings are the available model relations:
 * @property Officials $chairman0
 * @property Officials $vChairman
 * @property Referral[] $referrals
 */
class Committee extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_committee';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('comm_name, shortname, chairman, v_chairman, members', 'required'),
			array('chairman', 'compare', 'compareAttribute'=>'v_chairman','operator'=>'!=','message'=>'Chairman should not be the same with Vice-Chairman'),
			array('chairman, v_chairman', 'numerical', 'integerOnly'=>true),
			array('comm_name,shortname','unique','message'=>'Already Added'),
			array('shortname, members', 'length', 'max'=>50),
			array('comm_name','length','max'=>200),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('comm_id, comm_name, shortname, chairman, v_chairman, members', 'safe', 'on'=>'search'),
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
			'chairman0' => array(self::BELONGS_TO, 'Officials', 'chairman'),
			'vChairman' => array(self::BELONGS_TO, 'Officials', 'v_chairman'),
			'referrals' => array(self::HAS_MANY, 'Referral', 'lead_committee'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'comm_id' => 'ID',
			'comm_name' => 'Committee Name',
			'shortname' => 'Shortname',
			'chairman' => 'Chairman',
			'v_chairman' => 'Vice Chairman',
			'members' => 'Members',
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

		$criteria->compare('comm_id',$this->comm_id);
		$criteria->compare('comm_name',$this->comm_name,true);
		$criteria->compare('shortname',$this->shortname,true);
		$criteria->compare('chairman',$this->chairman);
		$criteria->compare('v_chairman',$this->v_chairman);
		$criteria->compare('members',$this->members,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Committee the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getCMembers(){
		$x=explode(',',$this->members);
		$result=null;
		foreach ($x as $key) {
			$result=$result.'('.Officials::model()->findByPK($key)->Fullname.')';
		}
		return $result;
	}
}
