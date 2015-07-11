<?php /* @var $this Controller */     
    date_default_timezone_set("Asia/Manila");
?>
<!DOCTYPE html>
<html>
<head>
  <link rel="shortcut icon" href="images/icon.png" type="image/png">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <Meetinga name="language" content="en" />
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
  
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/styles.css" />
</head>

<body style="background-image:url('images/bg2.png'); background-size: cover; background-size:100% 700px; background-repeat:no-repeat;
background-attachment:fixed;">

<div id="header">

        <div id="logo"><img src="images/banner.png" style="width: 100vw;"/></div>
       
</div><!-- header -->
 
<div class="container" id="page"  >


        
    <?php
            $countNotif=count(ForumQuestion::model()->findAll(array('condition'=>'confirmation=0')));
        $notif=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$countNotif==0? 'info':'important',
    'label'=>$countNotif,
), true);

        $receiving=count(Communication::model()->findAll(array( 'condition' => 'type_comm = 2 and now() >= date_agenda  ')));
        $notifRC=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$receiving==0? 'info':'important',
    'label'=>$receiving, 
), true);

        $referralCount=count(Communication::model()->findAll(array('condition'=>'archive=0 and comm_stat=0 and type_comm<>2')));
        $referralduedateCount=count(Referral::model()->findAll(array('condition'=>'referral_stat = 0 and now() > duedate')));
        $meetingResoCount=count(Referral::model()->countCommMeetingReso());
        $meetingOrdiCount=count(Referral::model()->countCommMeetingOrdi());
        $rfTotal=0;
        $rfTotal=$referralCount+$meetingOrdiCount+$meetingResoCount+$referralduedateCount;

        $notifRFTotal=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$rfTotal==0? 'info':'important',
    'label'=>$rfTotal, 
), true);

   $notifRFrefduedate=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$referralduedateCount==0? 'info':'important',
    'label'=>$referralduedateCount, 
), true);

        $notifRFref=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$referralCount==0? 'info':'important',
    'label'=>$referralCount, 
), true);

        $notifRFreso=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$meetingResoCount==0? 'info':'important',
    'label'=>$meetingResoCount, 
), true);
        $notifRFordi=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$meetingOrdiCount==0? 'info':'important',
    'label'=>$meetingOrdiCount, 
), true);

        $resoCount=count(Status::model()->countResolution());
        $ordiCount=count(CommMeetingOrdi::model()->findAll(array('condition'=>'archive=0 and comm_meeting_stat=1 and ord_remark=0 and action_taken=1')));
        
        $tTotal=0;
        $tTotal=$resoCount+$ordiCount;

        $notifTtotal=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$tTotal==0? 'info':'important',
    'label'=>$tTotal, 
), true);
        $notifTreso=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$resoCount==0? 'info':'important',
    'label'=>$resoCount, 
), true);

        $notifTordi=$this->widget('bootstrap.widgets.TbBadge', array(
    'type'=>$ordiCount==0? 'info':'important',
    'label'=>$ordiCount, 
), true);

        $role = Yii::app()->user->getState("roles");
        switch ($role) {
            case 'SCR-RC':
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
            'type' => 'inverse',
            'brand' =>'Home',
            'fixed' => false,
            'type' => 'inverse',
            'items' => array(
            array(
                'class' => 'bootstrap.widgets.TbMenu',
                'items' => array(
                array('label'=>'Communications','url'=>array('communication/viewTypeComm')),
                array('label'=>'Referrals','url'=>array('referral/index')),
                array('label'=>'Committee Meetings','url'=>array('#'), 'items'=>array(array('label'=>'Committee Meeting for Ordinances','url'=>array('commMeetingOrdi/index')),
                                                                                     array('label'=>'Committee Meeting for Resolutions','url'=>array('commMeetingReso/index')),)),
                array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/resolution/index')),
                                                                        array('label'=>'Ordinance','url'=>array('/ordinance/index')))),
                array('label'=>'Monitor Ordinances','url'=>array('/monitorOrd/index')),
                array('label'=>'Reports','url'=>array('#'),'items'=>array(array('label'=>'Resolution Reports','url'=>array('/reportsresolution/index')),
                                                                          array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                array('label'=>'Forum', 'url'=>array('/site/main_forum')),
                array('label'=>'Gallery', 'url'=>array('/site/viewphotosPage'), 'visible'=>Yii::app()->user->isGuest),
                ),
        ),
            
    array(
                    'class'=>'bootstrap.widgets.TbMenu',
                    'encodeLabel'=>false,
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                        
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
                            array('label'=>'Notifications '.$notifRC,'url'=>array('#'),'icon'=>'icon-bell icon-white','items'=>array(array('label'=>'For Referral '.$notifRC,'url'=>array('/communication/viewTypeComm')),
                                                                         // array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          //array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                    ),
            ),
        )
    )
);
                break;
            case 'SCR-T':
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
                 'type' => 'inverse',
            'fixed' => false,
            'brand' =>'Home',
            'items' => array(
            array(
                'class' => 'bootstrap.widgets.TbMenu',
                'items' => array(
                array('label'=>'Communications','url'=>array('communication/index')),
                array('label'=>'Referrals','url'=>array('referral/index')),
                array('label'=>'Committee Meetings','url'=>array('#'), 'items'=>array(array('label'=>'Committee Meeting for Ordinances','url'=>array('commMeetingOrdi/index')),
                                                                                     array('label'=>'Committee Meeting for Resolutions','url'=>array('commMeetingReso/index')),)),
                array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/resolution/resolutionList')),
                                                                        array('label'=>'Ordinance','url'=>array('/ordinance/ordinanceList')))),
                array('label'=>'Monitor Ordinances','url'=>array('/monitorOrd/index')),
                array('label'=>'Reports','url'=>array('#'),'items'=>array(array('label'=>'Resolution Reports','url'=>array('/reportsresolution/index')),
                                                                          array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                array('label'=>'Forum', 'url'=>array('/site/main_forum')),
                array('label'=>'Gallery', 'url'=>array('/site/viewphotosPage'), 'visible'=>Yii::app()->user->isGuest),
                ),
        ),
            
    array(
                    'class'=>'bootstrap.widgets.TbMenu',
                    'encodeLabel'=>false,
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                        
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
                            array('label'=>'Notifications '.$notifTtotal,'url'=>array('#'),'icon'=>'icon-bell icon-white','items'=>array(array('label'=>'For Ordinance '.$notifTordi,'url'=>array('/ordinance/ordinanceList')),
                                                                                                                                        array('label'=>'For Resolution '.$notifTreso,'url'=>array('/resolution/resolutionList')),
                                                                    )),
                    ),
            ),
        )
    )
);
                break;
            case 'SCR-RF':
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
                 'type' => 'inverse',
            'fixed' => false,
            'brand' =>'Home',
            'items' => array(
            array(
                'class' => 'bootstrap.widgets.TbMenu',
                'items' => array(
                array('label'=>'Communications','url'=>array('communication/index')),
                array('label'=>'Referrals','url'=>array('referral/referralList')),
                array('label'=>'Committee Meetings','url'=>array('#'), 'items'=>array(array('label'=>'Committee Meeting for Ordinances','url'=>array('commMeetingOrdi/commMeetingList')),
                                                                                     array('label'=>'Committee Meeting for Resolutions','url'=>array('commMeetingReso/commMeetingList')),)),
                array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/resolution/index')),
                                                                        array('label'=>'Ordinance','url'=>array('/ordinance/index')))),
                array('label'=>'Monitor Ordinances','url'=>array('/monitorOrd/index')),
                array('label'=>'Reports','url'=>array('#'),'items'=>array(array('label'=>'Resolution Reports','url'=>array('/reportsresolution/index')),
                                                                          array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                array('label'=>'Forum', 'url'=>array('/site/main_forum')),
                array('label'=>'Gallery', 'url'=>array('/site/viewphotosPage'), 'visible'=>Yii::app()->user->isGuest),
                ),
        ),
            
     array(
                    'class'=>'bootstrap.widgets.TbMenu',
                    'encodeLabel'=>false,
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                        
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
                            array('label'=>'Notifications '.$notifRFTotal,'url'=>array('#'),'icon'=>'icon-bell icon-white','items'=>array(array('label'=>'For Referral '.$notifRFref,'url'=>array('/referral/referralList')),
                                                                                                                                        array('label'=>'Referrals without action'.$notifRFrefduedate,'url'=>array('/referral/referraldue')),
                                                                                                                                        array('label'=>'Meeting for Resolution '.$notifRFreso,'url'=>array('/commMeetingReso/commMeetingList')),
                                                                                                                                        array('label'=>'Meeting for Ordinance '.$notifRFordi,'url'=>array('/commMeetingOrdi/commMeetingList')),
                                                                         // array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          //array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                    ),
            ),
        )
    )
);
                break;
            case 'BOKAL':
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
                 'type' => 'inverse',
            'fixed' => false,
            'brand' =>'Home',
            'items' => array(
            array(
                'class' => 'bootstrap.widgets.TbMenu',
                'items' => array(
                    array('label'=>'Communications','url'=>array('communication/index')),
                array('label'=>'Referrals','url'=>array('referral/index')),
                array('label'=>'Committee Meetings','url'=>array('#'), 'items'=>array(array('label'=>'Committee Meeting for Ordinances','url'=>array('commMeetingOrdi/index')),
                                                                                     array('label'=>'Committee Meeting for Resolutions','url'=>array('commMeetingReso/index')),)),
                array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/resolution/index')),
                                                                        array('label'=>'Ordinance','url'=>array('/ordinance/index')))),
                array('label'=>'Monitor Ordinances','url'=>array('/monitorOrd/index')),
                array('label'=>'Reports','url'=>array('#'),'items'=>array(array('label'=>'Resolution Reports','url'=>array('/reportsresolution/index')),
                                                                          array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                array('label'=>'Forum', 'url'=>array('/site/main_forum')),
                ),
        ),
            
    array(
                    'class'=>'bootstrap.widgets.TbMenu',
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                        
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
                    ),
            ),
        )
    )
);
                break;
            case 'SYSAD':
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
                'type' => 'inverse',
            'fixed' => false,
            'brand' =>'Home',
          
            'items' => array(
            array(
                'type' => 'inverse',
                'class' => 'bootstrap.widgets.TbMenu',
                
                'items' => array(
                array('label'=>'Communications','url'=>array('communication/viewTypeComm')),
                array('label'=>'Referrals','url'=>array('referral/referralList')),
                array('label'=>'Committee Meetings','url'=>array('#'), 'items'=>array(array('label'=>'Committee Meeting for Ordinances','url'=>array('commMeetingOrdi/commMeetingList')),
                                                                                     array('label'=>'Committee Meeting for Resolutions','url'=>array('commMeetingReso/commMeetingList')),)),
                array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/resolution/resolutionList')),
                                                                        array('label'=>'Ordinance','url'=>array('/ordinance/ordinanceList')))),
                
                array('label'=>'Others','url'=>array('#'),'items'=>array(array('label'=>'Agencies','url'=>array('/agency/index')),
                                                                        array('label'=>'Categories','url'=>array('/category/index')),
                                                                        array('label'=>'Committees','url'=>array('/committee/index')),
                                                                        array('label'=>'Departments','url'=>array('/department/index')),
                                                                        array('label'=>'Employees','url'=>array('/employee/index')),
                                                                        array('label'=>'Officials','url'=>array('/officials/index')),
                                                                        array('label'=>'Origins','url'=>array('/origin/index')),
                                                                        array('label'=>'Positions','url'=>array('/position/index')),
                                                                        array('label'=>'Add Old Resolution','url'=>array('/Resolution/addoldreso')),
                                                                        array('label'=>'Add Old Ordinance','url'=>array('/Ordinance/addoldordi')), 
                                                                        array('label'=>'Forum', 'url'=>array('/site/main_forum')),                                                                         
                                                                    )),
                array('label'=>'Utilities','url'=>array('#'),'items'=>array(array('label'=>'Audit Trails','url'=>array('/activity/index')),
                                                                        array('label'=>'User Maintenance','url'=>array('/user/index')),
                                                                        array('label'=>'System Backup and Restore','url'=>array('/sysbackup/index')),
                                                                    )),
                array('label'=>'Reports','url'=>array('#'),'items'=>array(array('label'=>'Resolution Reports','url'=>array('/reportsresolution/index')),
                                                                          array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                
                array('label'=>'Gallery', 'url'=>array('/site/viewphotosPage'), 'visible'=>Yii::app()->user->isGuest),
                            ),
        ),
    array(
                        'type' => 'inverse',
                    'class'=>'bootstrap.widgets.TbMenu',
                    'encodeLabel'=>false,
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                         
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
                            array('label'=>'Notif'.$notif,'url'=>array('#'),'icon'=>'icon-bell icon-white','items'=>array(array('label'=>'Unposted Topics '.$notif,'url'=>array('/ForumQuestion/confirmTopic')),
                                                                         // array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          //array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                    ),
            ),
                
            
        )
    )
);
                break;
            case 'SCR-BOK':
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
                 'type' => 'inverse',
            'fixed' => false,
            'brand' =>'Home',
            'items' => array(
            array(
                'class' => 'bootstrap.widgets.TbMenu',
                'items' => array(
                array('label'=>'Communications','url'=>array('communication/index')),
                array('label'=>'Referrals','url'=>array('referral/index')),
                array('label'=>'Committee Meetings','url'=>array('#'), 'items'=>array(array('label'=>'Committee Meeting for Ordinances','url'=>array('commMeetingOrdi/index')),
                                                                                     array('label'=>'Committee Meeting for Resolutions','url'=>array('commMeetingReso/index')),)),
                array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/resolution/index')),
                                                                        array('label'=>'Ordinance','url'=>array('/ordinance/index')))),
                array('label'=>'Monitor Ordinances','url'=>array('/monitorOrd/index')),
                array('label'=>'Reports','url'=>array('#'),'items'=>array(array('label'=>'Resolution Reports','url'=>array('/reportsresolution/index')),
                                                                          array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                array('label'=>'Forum', 'url'=>array('/site/main_forum')),
                array('label'=>'Gallery', 'url'=>array('/site/viewphotosPage'), 'visible'=>Yii::app()->user->isGuest),          
                ),
        ),
            
    array(
                    'class'=>'bootstrap.widgets.TbMenu',
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                        
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
                    ),
            ),
        )
    )
);
                break;
            case 'VG':
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
                 'type' => 'inverse',
            'fixed' => false,
            'brand' =>'Home',
            'items' => array(
            array(

                'class' => 'bootstrap.widgets.TbMenu',
                'items' => array(
                array('label'=>'Communications','url'=>array('communication/index')),
                array('label'=>'Referrals','url'=>array('referral/index')),
                array('label'=>'Committee Meetings','url'=>array('#'), 'items'=>array(array('label'=>'Committee Meeting for Ordinances','url'=>array('commMeetingOrdi/index')),
                                                                                     array('label'=>'Committee Meeting for Resolutions','url'=>array('commMeetingReso/index')),)),
                array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/resolution/index')),
                                                                        array('label'=>'Ordinance','url'=>array('/ordinance/index')))),
                array('label'=>'Monitor Ordinances','url'=>array('/monitorOrd/index')),
                array('label'=>'Reports','url'=>array('#'),'items'=>array(array('label'=>'Resolution Reports','url'=>array('/reportsresolution/index')),
                                                                          array('label'=>'Ordinance Reports','url'=>array('/reportsordinance/index')),
                                                                          array('label'=>'Other Reports','url'=>array('/reportsOthers/commReportMonthly')),
                                                                    )),
                array('label'=>'Forum', 'url'=>array('/site/main_forum')),
                array('label'=>'Gallery', 'url'=>array('/site/viewphotosPage'), 'visible'=>Yii::app()->user->isGuest),
                ),
        ),
            
    array(
                    'class'=>'bootstrap.widgets.TbMenu',
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                        
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
                    ),
            ),
        )
    )
);
                break;
            
            default:
                $this->widget(
            'bootstrap.widgets.TbNavbar',
            array(
                'type' => 'inverse',
            'fixed' => false,
            'brand' =>'Home',
            'items' => array(
            array(

                'class' => 'bootstrap.widgets.TbMenu',
                'items' => array(
                    array('label'=>'Legislative Enactments', 'url'=>array('#'),'items'=>array(array('label'=>'Resolution','url'=>array('/site/resolutions')),
                                                                        array('label'=>'Ordinance','url'=>array('/site/ordinances')))),
                  //array('label'=>'Events', 'url'=>array('/site/events')),
                array('label'=>'About', 'url'=>array('/site/page', 'view'=>'about')),
                array('label'=>'Contact', 'url'=>array('/site/contact')),
                array('label'=>'Forum', 'url'=>array('/site/main_forum')),
                //array('label'=>'Gallery', 'url'=>array('/site/viewphotosPage'), 'visible'=>Yii::app()->user->isGuest),
                ),
        ),
            
    array(
                    'class'=>'bootstrap.widgets.TbMenu',
                    'htmlOptions'=>array('class'=>'pull-right'),
                    'items'=>array(
                        
                            array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                            array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
                    ),
            ),
                
            
        )
    )
);
                break;
        }
        
        
        

        ?>
    

    <?php echo $content; ?>

    <div class="clear"></div>

    <div id="footer">
        <hr/>
        <div style="text-align:center;">
        Copyright &copy; <?php echo date('Y'); ?> by<br/>
        Provincial Government of La Union - Sangguniang Panlalawigan Office.<br/>
         All Rights Reserved<br/>
        Developed By:
        MVD, JBDM, AJLO, CMPS and EFM 
        <br/>BSIT batch 2014, CCSE - LORMA COLLEGES
        </div>
    </div><!-- footer -->

</div><!-- page -->

</body>
</html>