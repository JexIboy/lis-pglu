<?php

/**
 * This is the model class for table "tbl_communication".
 *
 * The followings are the available columns in table 'tbl_communication':
 * @property string $ctrl_no
 * @property string $subject_matter
 * @property string $date_received
 * @property integer $cat_id
 * @property integer $orig_id
 * @property integer $input_by
 * @property string $comm_letter
 *
 * The followings are the available model relations:
 * @property Employee $inputBy
 * @property Category $cat
 * @property Origin $orig
 * @property Referral[] $referrals
 */
class Communication extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_communication';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('subject_matter, date_received, cat_id, orig_id, date_agenda', 'required'),
			array('date_agenda','compare','compareAttribute'=>'date_received','operator'=>'>='),
			array('date_received,date_agenda','date','format'=>'yyyy-mm-dd'),
			array('cat_id, orig_id,archive', 'numerical', 'integerOnly'=>true),
			array('type_comm, comm_stat', 'length', 'max'=>10),
			array('ctrl_no', 'length', 'max'=>20),
			array('subject_matter', 'length', 'max'=>3000),
			array('comm_letter', 'file','on'=>'insert',
                'types'=> 'pdf',
                            
            'tooLarge' => 'The file was larger than 10MB. Please upload a smaller filsssse.',                
            ),
            
			array('comm_letter', 'length', 'max'=>100),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ctrl_no, subject_matter,comm_stat, date_received, type_comm, cat_id, orig_id, input_by, comm_letter', 'safe', 'on'=>'search'),
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
			'inputBy' => array(self::BELONGS_TO, 'Employee', 'input_by'),
			'cat' => array(self::BELONGS_TO, 'Category', 'cat_id'),
			'orig' => array(self::BELONGS_TO, 'Origin', 'orig_id'),
			'referrals' => array(self::HAS_MANY, 'Referral', 'ctrl_no'),
			'CommMeetingReso' => array(self::HAS_MANY, 'CommMeetingReso','ref_id'),
			'subject_matter' => array(self::HAS_ONE,'Communication','ctrl_no'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ctrl_no' => 'Control No',
			'subject_matter' => 'Subject Matter',
			'date_received' => 'Date Received',
			'date_agenda' => 'Date Agenda',
			'cat_id' => 'Category',
			'orig_id' => 'Origin',
			'input_by' => 'Inputted By',
			'type_comm' => 'Type of Communication',
			'comm_letter' => 'Communication Letter',
			'comm_stat' => 'Communication Status',
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
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subject_matter',$this->subject_matter,true);
		$criteria->compare('date_received',$this->date_received,true);
		
		$criteria->compare('date_agenda',$this->date_agenda,true);
		$criteria->compare('cat_id',$this->cat_id);
		$criteria->compare('orig_id',$this->orig_id);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('type_comm',$this->type_comm);
		$criteria->compare('comm_stat',$this->comm_stat,true);
		$criteria->compare('comm_letter',$this->comm_letter,true);
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
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subject_matter',$this->subject_matter,true);
		$criteria->compare('date_received',$this->date_received,true);
		$criteria->compare('date_agenda',$this->date_agenda,true);
		$criteria->compare('cat_id',$this->cat_id);
		$criteria->compare('orig_id',$this->orig_id);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('type_comm',$this->type_comm);
		$criteria->compare('comm_stat',$this->comm_stat,true);
		$criteria->compare('comm_letter',$this->comm_letter,true);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function forOrdinance()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$cat=Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and cat_id='.$cat;
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subject_matter',$this->subject_matter,true);
		$criteria->compare('date_received',$this->date_received,true);
		$criteria->compare('date_agenda',$this->date_agenda,true);
		$criteria->compare('cat_id',$this->cat_id);
		$criteria->compare('orig_id',$this->orig_id);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('type_comm',$this->type_comm);
		$criteria->compare('comm_stat',$this->comm_stat,true);
		$criteria->compare('comm_letter',$this->comm_letter,true);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function forResolution()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.
		$cat=Category::model()->findByAttributes(array('cat_name'=>'Provincial Ordinance'))->cat_id;
		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and cat_id<>'.$cat;
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subject_matter',$this->subject_matter,true);
		$criteria->compare('date_received',$this->date_received,true);
		$criteria->compare('date_agenda',$this->date_agenda,true);
		$criteria->compare('cat_id',$this->cat_id);
		$criteria->compare('orig_id',$this->orig_id);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('type_comm',$this->type_comm);
		$criteria->compare('comm_stat',$this->comm_stat,true);
		$criteria->compare('comm_letter',$this->comm_letter,true);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}
	public function forReferral()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and comm_stat=0 and type_comm<>2';
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subject_matter',$this->subject_matter,true);
		$criteria->compare('date_received',$this->date_received,true);
		$criteria->compare('date_agenda',$this->date_agenda,true);
		$criteria->compare('cat_id',$this->cat_id);
		$criteria->compare('orig_id',$this->orig_id);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('type_comm',$this->type_comm);
		$criteria->compare('comm_stat',$this->comm_stat,true);
		$criteria->compare('comm_letter',$this->comm_letter,true);
		$criteria->compare('archive',$this->archive,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array(
                'pageSize' => 10,
            ),
		));
	}

	public function forCommMeetingReso()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;
		$criteria->condition='archive=0 and comm_stat=0 and type_comm<>2';
		$criteria->compare('ctrl_no',$this->ctrl_no,true);
		$criteria->compare('subject_matter',$this->subject_matter,true);
		$criteria->compare('date_received',$this->date_received,true);
		$criteria->compare('date_agenda',$this->date_agenda,true);
		$criteria->compare('cat_id',$this->cat_id);
		$criteria->compare('orig_id',$this->orig_id);
		$criteria->compare('input_by',$this->input_by);
		$criteria->compare('type_comm',$this->type_comm);
		$criteria->compare('comm_stat',$this->comm_stat,true);
		$criteria->compare('comm_letter',$this->comm_letter,true);
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
	 * @return Communication the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	public function getCommMeetingID(){
		return $this->referrals;
	}
	public function getReferral($d){
		$x=Referral::model()->findByAttributes(array('ctrl_no'=>$d));
		return empty($x->ref_id) ? 'None' : $x->date_referred;
	}

	public function getCommMeetings($d){
		$x=Referral::model()->findByAttributes(array('ctrl_no'=>$d));
		if(!empty($x->ref_id)){
				if($this->cat->cat_name=='Provincial Ordinance'){
					$ord=CommMeetingOrdi::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc'));
					$y='';
					foreach ($ord as $key) {
						$y= $key->date_meeting.'<br/>'.$y;
					}
					if($y==''){
						echo 'None';
					}else{
						echo $y;
					}
					
					
				}else{
					$reso=CommMeetingReso::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc'));
					$y='';
					foreach ($reso as $key) {
						$y= $key->date_meeting.'<br/>'.$y;
					}
					if($y==''){
						echo 'None';
					}else{
						echo $y;
					}
				}
        }else{
            	echo 'None';
         }
    }

    public function getActionTaken($d){
		$x=Referral::model()->findByAttributes(array('ctrl_no'=>$d));
		if(!empty($x->ref_id)){
				if($this->cat->cat_name=='Provincial Ordinance'){
					$ord=CommMeetingOrdi::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc','limit'=>1));
					$y='';
					foreach ($ord as $key) {
						$y= $key->ActionTaken;
					}
					if($y==''){
						echo 'None';
					}else{
						echo $y;
					}
				}else{
					$reso=CommMeetingReso::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc','limit'=>1));
					$y='';
					foreach ($reso as $key) {
						$y= $key->ActionTaken;
					}
					if($y==''){
						echo 'None';
					}else{
						echo $y;
					}
				}
        }else{
            	echo 'None';
         }
    }

    public function getCommReport($d){
    	
    
		$x=Referral::model()->findByAttributes(array('ctrl_no'=>$d));
		if(!empty($x->ref_id)){
				if($this->cat->cat_name=='Provincial Ordinance'){
					$ord=CommMeetingOrdi::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc','limit'=>1));
					$y='';
					foreach ($ord as $key) {
						$y= $key->comm_report;
					}
					if($y==''){
						echo 'None';
					}else{
						echo $y;
					}
				}else{		
							$reso=CommMeetingReso::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc','limit'=>1));
							$y='';
							foreach ($reso as $key) {
							$y= $key->comm_report;
							}
							if($y==''){
								echo 'None';
							}else{
								echo $y;
							}
				}
        }else{
        			$comm=Communication::model()->find(array('condition'=>'type_comm=0 and ctrl_no=:d','params'=>array(':d'=>$d)));
					if(!empty($comm->date_agenda)){
						echo $comm->date_agenda;
					}else{
            			echo 'None';
         			}
     	}
    }
    public function getTitle($d){
    
    	$x=Referral::model()->findByAttributes(array('ctrl_no'=>$d));
		if(!empty($x->ref_id)){
				if($this->cat->cat_name=='Provincial Ordinance'){
					$ord=CommMeetingOrdi::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc','limit'=>1));
					$y='';
					foreach ($ord as $key) {
						$y= $key->meeting_ordi_id;
					}
					if(!empty(Ordinance::model()->findByAttributes(array('meeting_ordi_id'=>$y))->ord_no)){
						echo 'Ord No. '.Ordinance::model()->findByAttributes(array('meeting_ordi_id'=>$y))->ord_no;
					}else{
						echo 'None';
					}
				}else{

					$reso=CommMeetingReso::model()->findAll(array('condition'=>'ref_id='.$x->ref_id,'order'=>'date_meeting desc','limit'=>1));
					
					foreach ($reso as $key) {

						if(!empty($key->comm_report)){
							if(!empty(Resolution::model()->findByAttributes(array('ctrl_no'=>$d))->res_no)){
								echo 'Res No. '.Resolution::model()->findByAttributes(array('ctrl_no'=>$d))->res_no;
							}else{
								echo 'None';
							}
						}else{
							echo 'None';
						}
					}
				}
        }else{
        	if(!empty(Resolution::model()->findByAttributes(array('ctrl_no'=>$d))->res_no)){ echo 'Res No. '.Resolution::model()->findByAttributes(array('ctrl_no'=>$d))->res_no; }
            	else{echo 'None';}
        }
    }
}
