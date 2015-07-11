<div style=" margin-top:1%;" >
<div style="width:99vw; left:0;right:0; ">
<div style="height:280px; width:98%;  margin-bottom:1%;" id="home_banner">
	
<?php
$timezone = new DateTimeZone('Asia/Manila');

echo "<h4 style='color:white; margin-left:1%;'> Today is " .date('F d, Y'). "</h4>";
?>

	<div style="margin-left:1%; margin-top:2%;
justify-content: space-around;">
		<h1 style="color:white;font-family:Britannic Bold;  text-shadow: 5px 5px 5px #000000 ;">Legislative Information System</h1>
		<p style="color:white; width:45%; text-shadow: 5px 5px 5px #000000 ;">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Welcome to the Webpage of the Legislative Information System of the Provincial Government of La Union!
         This system helps the Sangguniang Panlalawigan secretariats on maintaining, tracking, and monitoring of resolutions and ordinances.
         Under the Legislative Enactments Module, you can view and search for resolutions and ordinances. You can also view the Developer's personal information under the About module. 
         If you have questions about this website, you can contact the Administrator under the Contact Module. Inside the Forum Module, you can create a topic and the Administrator will
         receive a notification regarding the topic you have been created, you can also reply to the other topics that has been posted.
        </p>
    </div>
</div>

<div style="width:29%; float:left;  height:495px;">
	<?php

$box = $this->beginWidget ( 'bootstrap.widgets.TbBox', array (
		'title' =>'Upcoming Events',
		'headerIcon' => 'icon-th-list',
		// when displaying a table, if we include bootstra-widget-table class
		// the table will be 0-padding to the box
		'htmlOptions' => array (
				'class' => 'bootstrap-widget-table' ,
                                'style'=>'width:80%;margin-left:3%; ',
		) 
) );
?>
		<div id="eventsup" style="color:black; background-image:url('images/paper.jpg'); background-size:cover;height:498px;">
			<?php include ('db_connect.php'); $schedules = mysql_query("SELECT * FROM tbl_comm_meeting_reso where comm_report ='".date('Y-m-d',strtotime('next thursday'))."' or now() < comm_report") or die(mysql_error());  ?>
			<?php WHILE($sched = mysql_fetch_array($schedules)){
				$date = $sched['comm_report'];
				$newDate = date('F d, Y', strtotime($date));

				$refs=Referral::model()->findByPK($sched['ref_id']);
				$comms=Communication::model()->findByPK($refs->ctrl_no)->subject_matter;

				?>
				<div id="title" class="<?php echo $newDate;  ?>">
				<table class="table" style="width:100%; ">
				<tr style="border-bottom-style:dash;">
				
					<td style="width:60%;">
					
						<h5>Date: <?php echo $newDate;  ?></h5>
                    </td>

                    <td style="width:40%;">
						<h5>Time Start: <?php echo '3:00 pm'; ?></h5>
                    </td>
                 </tr>
                 <tr >
					<td style="width:100%;" colspan="2">
						<p><h5><?php echo $comms;  ?></h5></p>
                    </td>
                 </tr>
                 </table>
                </div>

                <hr style="background-color: #3366CC; height: 2px;">
				<?php } ?>
		</div>
<?php $this->endWidget(); ?>
<!--<div style="margin-left:3%;">
<iframe title="YouTube video player" type="text/html" 
width="400" height="250" src="http://www.youtube.com/embed/OhyUAABOy0Y"
frameborder="2" allowFullScreen></iframe>
</div>-->
</div>

        
<?php 
		if( Yii::app()->user->getState("roles")=='SYSAD'){
		/*$this->widget('zii.widgets.jui.CJuiAccordion', array(
			'htmlOptions'=>array('style'=>'margin-right:1%;	position:absolute;
	height: 260px;
	float:right;
	top:35%;
	right:0%;
	width:20%;'),
	'panels'=>array(

		'Gallery'=>$this->renderPartial('galleryPanel',null,true),
		'Forum'=>$this->renderPartial('forumPanel',null,true),
		
		
	),
	// additional javascript options for the accordion plugin
	'options'=>array(
		'animated'=>'bounceslide',
	),
));*/
		}
		?>
<div style="float:right; width:70vw; ">
	<?php
$this->widget('zii.widgets.jui.CJuiTabs', array(
    'tabs'=>array(
    	'Resolutions'=>$this->renderPartial('/site/resolutions',array('model'=>$reso),true),
        'Ordinance'=>$this->renderPartial('/site/ordinances',array('model'=>$ordi),true),
        'Monthly Statistical Report'=>$this->renderPartial('//site/reports/resolutionReport',array('months'=>$months,'months_data'=>$months_data,'months_dataOrd'=>$months_dataOrd),true),
        'Yearly Statistical Report'=>$this->renderPartial('//site/reports/BMresolutionReport',array('years'=>$years,'years'=>$years,'years_data'=>$years_data,'yOrd'=>$yOrd),true)
    ),
    // additional javascript options for the tabs plugin
    'options'=>array(
        'collapsible'=>true,
    ),
    'htmlOptions'=>array(
        'style'=>'width:100%;margin-left:-6%;float:left;'
    ),
));
?>
	</div>
	</div>
</div>