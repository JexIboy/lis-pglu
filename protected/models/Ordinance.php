<?php

/**
 * This is the model class for table "tbl_ordinance".
 *
 * The followings are the available columns in table 'tbl_ordinance':
 * @property string $ord_no
 * @property integer $meeting_ordi_id
 * @property string $author
 * @property string $imp_agency
 * @property string $ordi_file
 * @property integer $input_by
 *
 * The followings are the available model relations:
 * @property CommMeetingOrdi $meetingOrdi
 * @property Employee $inputBy
 * @property TrackOrd[] $trackOrds
 */
class Ordinance extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_ordinance';
	}
	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('ord_no, subj_matter, author, imp_agency, input_by, date_passed', 'required'),
			array('meeting_ordi_id, input_by,archive', 'numerical', 'integerOnly'=>true),
			array('ord_no', 'length', 'max'=>20),
			array('imp_agency', 'length', 'max'=>100),
			array('author, ordi_file', 'length', 'max'=>50),
			array('firstreading, secondreading, thirdreading, amend', 'length', 'max'=>50),
			array('subj_matter', 'length', 'max'=>1000),
			array('ord_no', 'unique'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ord_no, meeting_ordi_id, author,subj_matter, imp_agency,date_passed, firstreading, secondreading,amend, thirdreading, ordi_file, input_by', 'safe', 'on'=>'search'),
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
			'meetingOrdi' => array(self::BELONGS_TO, 'CommMeetingOrdi', 'meeting_ordi_id'),
			'inputBy' => array(self::BELONGS_TO, 'Employee', 'input_by'),
			'trackOrds' => array(self::HAS_MANY, 'TrackOrd', 'ord_no'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */

	public function attributeLabels()
	{
		return array(
			'ord_no' => 'Ordinance No.',
			'meeting_ordi_id' => 'Control No.',
			'author' => 'Author',
			'imp_agency' => 'Implementing Agency',
			'ordi_file' => 'Ordinance File',
			'amend' => 'Amending Ord No.',
			'firstreading' => 'First Reading',
			'secondreading' => 'Second Reading',
			'thirdreading' => 'Third Reading',
			'input_by' => 'Inputted By',
			'date_passed' => 'Date Passed',
			'subj_matter' => 'Subject Matter',
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
		$criteria->order = "date_passed ASC";
		$criteria->compare('ord_no',$this->ord_no,true);
		$criteria->compare('amend',$this->amend,true);
		$criteria->compare('meeting_ordi_id',$this->meeting_ordi_id);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('imp_agency',$this->imp_agency,true);
		$criteria->compare('subj_matter',$this->subj_matter,true);
		$criteria->compare('ordi_file',$this->ordi_file,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('date_passed',$this->date_passed);
		$criteria->compare('firstreading',$this->firstreading);
		$criteria->compare('secondreading',$this->secondreading);
		$criteria->compare('thirdreading',$this->thirdreading);
		$criteria->compare('archive',$this->archive);

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
		$criteria->compare('ord_no',$this->ord_no,true);
		$criteria->compare('meeting_ordi_id',$this->meeting_ordi_id);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('imp_agency',$this->imp_agency,true);
		$criteria->compare('subj_matter',$this->subj_matter,true);
		$criteria->compare('ordi_file',$this->ordi_file,true);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('firstreading',$this->firstreading);
		$criteria->compare('secondreading',$this->secondreading);
		$criteria->compare('thirdreading',$this->thirdreading);
		$criteria->compare('date_passed',$this->date_passed);
		$criteria->compare('archive',$this->archive);

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
	 * @return Ordinance the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getOrigin($meeting_ordi_id) {
		
		$result = !empty($meeting_ordi_id) ? CommMeetingOrdi::model()->findByPK($meeting_ordi_id)->ref->ctrlNo->orig->orig_name : 'Unknown Origin';
		return $result;
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

    public function getAgency(){

        $x=explode(',',$this->imp_agency);
        $names='';

        foreach($x as $value){
	        $criteria=new CDbCriteria;
	        $criteria->condition='agency_id=:postID';
	        $criteria->params=array(':postID'=>$value);
	        $auth=  Agency::model()->find($criteria);
	        
	        echo $auth->agency_name.'<br/>';
            
        }
    }

    public function getAgencyView(){
        $x=explode(',',$this->imp_agency);
        $names='';

        foreach($x as $value){
	        $criteria=new CDbCriteria;
	        $criteria->condition='agency_id=:postID';
	        $criteria->params=array(':postID'=>$value);
	        $auth=  Agency::model()->find($criteria);
	        $names='('.$auth->agency_name.')'.$names;
        }

        return $names;
    }

    public function getAgendaDate($ctrl){
		if ($ctrl) {
			$criteria=new CDbCriteria();
			$ref=CommMeetingOrdi::model()->find($criteria)->ref_id;
    		$ctrl=Referral::model()->findByPK($ref)->ctrl_no;
    		return Communication::model()->findByPK($ctrl)->date_agenda;
    			
		} else {
			return 'No Agenda';
		}
    		

    }
     public function getCommMeetings($d){
 		if ($d) {

     		$temp=CommMeetingOrdi::model()->findByPK($d)->ref_id;
            $x=CommMeetingOrdi::model()->find(array('condition'=>'ref_id = '.$temp));

            if($x) {	                
	            $IAs= CommMeetingOrdi::model()->findAll(array('condition'=>'ref_id = '.$temp,'order'=>'date_meeting desc'));
	            $iaName = CHtml::listData($IAs,'date_meeting','date_meeting'); 
	            
	            foreach($iaName as $val){
	                echo $val.'<br/>';
	            }

            } else  {
	            echo 'No Committee Meeting';
        	}

    	} else {
    		return 'No Committee Meeting/s';
    	}
    }

    public function getReferralDate($ctrl){
    	if ($ctrl) {
    		$x=CommMeetingOrdi::model()->findByAttributes(array('meeting_ordi_id'=>$ctrl))->ref_id;
    		return Referral::model()->findByPK($x)->date_referred;
    	} else {
    		return 'No Referral Date';
    	}
    	
    }

    public function getReportDate($ctrl){
		if ($ctrl) {
    		return CommMeetingOrdi::model()->findByAttributes(array('meeting_ordi_id'=>$ctrl))->comm_report;
		} else {
			return 'No Report Date';
		}
	
	}

}
