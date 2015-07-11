<?php

/**
 * This is the model class for table "tbl_monitor_ord".
 *
 * The followings are the available columns in table 'tbl_monitor_ord':
 * @property integer $monitor_id
 * @property string $ord_no
 * @property integer $agency_id
 * @property string $date_furnished
 * @property string $action_taken
 * @property string $recommendation
 * @property string $problems_encountered
 * @property string $date_received
 * @property integer $input_by
 * @property string $monitor_form
 *
 * The followings are the available model relations:
 * @property Agency $agency
 * @property Employee $inputBy
 * @property Ordinance $ordNo
 */
class MonitorOrd extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public  $subj_matter;
	public function tableName()
	{
		return 'tbl_monitor_ord';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ord_no,last_updated, agency_id, date_furnished, action_taken, date_received, input_by, monitor_form', 'required'),
			array('agency_id, input_by,archive,status', 'numerical', 'integerOnly'=>true),
			array('ord_no', 'length', 'max'=>20),
			array('subj_matter','length','max'=>1000),
			array('action_taken, recommendation, problems_encountered', 'length', 'max'=>1000),
			array('monitor_form', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('last_updated, monitor_id, ord_no, agency_id,status, date_furnished, action_taken, recommendation, problems_encountered, date_received, input_by, monitor_form', 'safe', 'on'=>'search'),
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
			'agency' => array(self::BELONGS_TO, 'Agency', 'agency_id'),
			'inputBy' => array(self::BELONGS_TO, 'Employee', 'input_by'),
			'ordNo' => array(self::BELONGS_TO, 'Ordinance', 'ord_no'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'monitor_id' => 'ID',
			'ord_no' => 'Ordinance No',
			'agency_id' => 'Implementing Office/Agency',
			'date_furnished' => 'Date Furnished',
			'action_taken' => 'Action Taken',
			'status' => 'Status',
			'recommendation' => 'Recommendation',
			'problems_encountered' => 'Problems Encountered',
			'date_received' => 'Date Received',
			'input_by' => 'Inputted By',
			'monitor_form' => 'Tracking/Monitoring Form',
			'archive' => 'Archived',
			'last_updated' => 'Last Updated',
			'subj_matter' => 'Subject Matter'
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

		$criteria->condition='archive=0';
		$criteria->compare('monitor_id',$this->monitor_id);
		$criteria->compare('subj_matter',$this->subj_matter,true);
		$criteria->compare('ord_no',$this->ord_no,true);
		$criteria->compare('agency_id',$this->agency_id);
		$criteria->compare('date_furnished',$this->date_furnished,true);
		$criteria->compare('action_taken',$this->action_taken,true);
		$criteria->compare('recommendation',$this->recommendation,true);
		$criteria->compare('problems_encountered',$this->problems_encountered,true);
		$criteria->compare('date_received',$this->date_received,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('monitor_form',$this->monitor_form,true);
		$criteria->compare('archive',$this->archive,true);
		$criteria->compare('status',$this->status,true);
		$criteria->compare('last_updated',$this->last_updated,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return MonitorOrd the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	public function getStatus(){
		switch ($this->status) {
			case 0:
				return 'Implemented';
				break;
			case 1:
				return 'Partially Implemented';
				break;
			case 2:
				return 'Not Implemented';
				break;
			
			default:
				# code...
				break;
		}
	}
}
