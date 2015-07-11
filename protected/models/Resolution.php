<?php

/**
 * This is the model class for table "tbl_resolution".
 *
 * The followings are the available columns in table 'tbl_resolution':
 * @property string $res_no
 * @property string $ctrl_no
 * @property string $author
 * @property string $reso_file
 * @property integer $input_by
 * @property string $date_passed
 *
 * The followings are the available model relations:
 * @property Status $ctrlNo
 * @property Employee $inputBy
 */
class Resolution extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_resolution';
	}
	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('res_no,subj_matter, author, input_by, date_passed', 'required'),
			array('res_no','unique','message' => 'Resolution number already exists'),
			array('input_by,archive', 'numerical', 'integerOnly'=>true),
			array('subj_matter','length','max'=>3000),
			array('res_no, ctrl_no, author, reso_file', 'length', 'max'=>100),
			array('reso_file', 'safe'),
			 array('reso_file', 'file',
                'types'=> 'pdf','allowEmpty'=>true,
                'maxSize' => 1024 * 1024 * 100, // 100MB                
                'tooLarge' => 'The file was larger than 100MB. Please upload a smaller file.',               
            ),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('res_no, ctrl_no, author, reso_file, input_by, date_passed', 'safe', 'on'=>'search'),
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
			'ctrlNo' => array(self::BELONGS_TO, 'Status', 'ctrl_no'),
			'ref' => array(self::BELONGS_TO, 'Referral', 'ctrl_no'),
			'inputBy' => array(self::BELONGS_TO, 'Employee', 'input_by'),
		);
	}
	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'res_no' => 'Resolution No.',
			'ctrl_no' => 'Control No.',
			'subj_matter' => 'Subject Matter',
			'author' => 'Author',
			'reso_file' => 'Resolution File',
			'input_by' => 'Inputted By',
			'date_passed' => 'Date Passed',
			'archive' => 'Archived'
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
		$criteria->compare('res_no',$this->res_no,true);	
		$criteria->order = "date_passed ASC";
		$criteria->compare('date_passed',$this->date_passed,true);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subj_matter',$this->subj_matter,true);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('reso_file',$this->reso_file,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('archive',$this->archive,true);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function viewArchive()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.		
		$criteria=new CDbCriteria;
		$criteria->condition='archive=1';
		$criteria->compare('res_no',$this->res_no,true);
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subj_matter',$this->subj_matter,true);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('reso_file',$this->reso_file,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('date_passed',$this->date_passed,true);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function searchIndex()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$criteria=new CDbCriteria;
		$criteria->condition='archive=0';
		$criteria->order="date_passed ASC";
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subj_matter',$this->subj_matter,true);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('reso_file',$this->reso_file,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('date_passed',$this->date_passed,true);
		$criteria->compare('archive',$this->archive,true);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Resolution the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getCMeetingReso(){
		$cat = Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$result = CHtml::listData(Communication::model()->findAll(array('condition'=>'cat_id <> '.$cat.' and comm_stat=1')),'ctrl_no','ctrl_no');
		$criteria = new CDbCriteria();
		$criteria->condition = "referral_stat=1";
		$criteria->addInCondition("ctrl_no", $result);
		$meetings=CHtml::listData(Referral::model()->findAll($criteria),'ref_id','ctrl_no');
		$criteria1 = new CDbCriteria();
		$criteria1->condition = "comm_meeting_stat=0";
		$criteria1->addInCondition("meeting_reso_id", $meetings);
		return CHtml::listData(CommMeetingReso::model()->findAll($criteria1),'meeting_reso_id','ControlNumber');
	}

	public function getAuthor(){
            $x=explode(',',$this->author);
            $names='';
            foreach($x as $value){
            $criteria=new CDbCriteria;
            $criteria->condition='off_id=:postID';
            $criteria->params=array(':postID'=>$value);
            $auth=  Officials::model()->find($criteria);
            echo $auth->Fullname.'<br/>';
                
            }
        }

    public function getAuthorView(){
            $x=explode(',',$this->author);
            $names='';
            foreach($x as $value){
            $criteria=new CDbCriteria;
            $criteria->condition='off_id=:postID';
            $criteria->params=array(':postID'=>$value);
            $auth=  Officials::model()->find($criteria);
            $names='('.$auth->Fullname.')'.$names;
            }
            return $names;
        }
    
    public function getReferralDate($ctrl){
    	$x=Referral::model()->findByAttributes(array('ctrl_no'=>$ctrl));
	 if (!empty($x)) {
        		return Referral::model()->findByPK($x)->date_referred;
        	} else {
        		return '0000-00-00';
        	}
        }
    public function getReportDate($ctrl){
    	if ($ctrl) {
    	$x=Referral::model()->findByAttributes(array('ctrl_no'=>$ctrl));
    	if($x){
    		return CommMeetingReso::model()->find(array('condition'=>'ref_id = '.$x->ref_id.' and comm_report IS NOT NULL'))->comm_report;
    	}else{
    		return Communication::model()->findByPK($ctrl)->date_agenda;
    	} 
    				}else {return '0000-00-00';}
 
    }

     public function getCommMeetings($d){
     		$temp=Referral::model()->findByAttributes(array('ctrl_no'=>$d));
     		if(empty($temp)){echo 'No Committee Meeting';}else{
            $x=CommMeetingReso::model()->find(array('condition'=>'ref_id = "'.$temp->ref_id.'"'));
            if($x==null){
                echo '0000-00-00';
            }else{
            $IAs= CommMeetingReso::model()->findAll(array('condition'=>'ref_id = "'.$temp->ref_id.'"','order'=>'date_meeting desc'));
            $iaName = CHtml::listData($IAs,'date_meeting','date_meeting'); 
            
            foreach($iaName as $val){
                echo $val.'<br/>';
            }}}
        }
}
