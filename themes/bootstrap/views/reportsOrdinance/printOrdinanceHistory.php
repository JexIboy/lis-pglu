<?php

require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('P', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->SetTitle('History Ordinance Report');

// set default header data
$pdf->SetHeaderData('banner.jpg', PDF_HEADER_LOGO_WIDTH, 'Legislative Information System - Provincial Government of La Union v1.0');

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(10, $pdf->GetY() + 40, 15);
$pdf->SetHeaderMargin(5);
$pdf->SetFooterMargin(30);
$pdf->SetAutoPageBreak(true, 65);
// set auto page breaks
//$pdf->SetAutoPageBreak(FALSE, PDF_MARGIN_BOTTOM);
// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', 'B', 18);

// add a page
$pdf->AddPage();
if(empty($model)){
    $pdf->Write(0, 'No Ordinance Found!', '', 0, 'C', true, 0, false, false, 0);
    $pdf->Output('NoOrdinanceFound'.'pdf', 'I');

}
else{
$pdf->SetFont('helvetica', 'B', 17);
$pdf->Ln(25);
$pdf->Write(0, 'Ordinance No. '.$model->ord_no, '', 0, 'C', true, 0, false, false, 0);
$pdf->Ln(15);
$pdf->SetFont('helvetica', 'B', 14);
$pdf->Write(0, $model->subj_matter, '', 0, 'C', true, 0, false, false, 0);
$pdf->SetFont('helvetica', '', 10);
$pdf->Ln(10);
// -----------------------------------------------------------------------------
$timezone = new DateTimeZone('Asia/Manila');
$agenda = !empty($model->meeting_ordi_id) ? $model->getAgendaDate($model->meeting_ordi_id) : '0000-00-00';
$origin = !empty($model->meeting_ordi_id) ?  $model->getOrigin($model->meeting_ordi_id) : 'Unknown Origin';
$referral = !empty($model->meeting_ordi_id) ? $model->getReferralDate($model->meeting_ordi_id) : '0000-00-00';
$date_report = !empty($model->meeting_ordi_id) ? $model->getReportDate($model->meeting_ordi_id) : '0000-00-00';
$agency = Agency::model()->FindByPK($model->imp_agency)->agency_name;
$first = $model->firstreading;
$second = $model->secondreading;
$third = $model->thirdreading;
$datepassed = $model->date_passed;

$agenda1 = new DateTime($agenda, $timezone);
$refer1 = new DateTime($referral, $timezone);
$daterport = new DateTime($date_report, $timezone);
$firstread = new DateTime($first, $timezone);
$secondread = new DateTime($second, $timezone);
$thirdread = new DateTime($third, $timezone);
$datepassed1 = new DateTime($datepassed, $timezone);

$tbl ='<table style="padding:10; font-size:16px; width:100%; border-bottom-style: 1px solid black;">';

            if ($agenda == '0000-00-00'){
                $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">A) Date Agenda</td>
                 <td style="border-top-style: 1px solid black;">: N/A </td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">A) Date Agenda</td>
                 <td style="border-top-style: 1px solid black;">: ' .$agenda1->format('M j, Y').'</td>';
                     }
                                                                      

    $tbl .='</tr>';
    $tbl .='<tr nobr="true">
             <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">B) Author</td>
             <td style="border-top-style: 1px solid black;">: ' .$origin. '</td>';                                                   
    $tbl .='</tr>';

    if ($referral == '0000-00-00'){
    $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">C) Referral Date</td>
                 <td style="border-top-style: 1px solid black;">: N/A </td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">C) Referral Date</td>
                 <td style="border-top-style: 1px solid black;">: ' .$refer1->format('M j, Y').'</td>';
                     }
    $tbl .='</tr>';
    $tbl .='<tr nobr="true">
            <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">D) Committee Meeting/s</td>';
            $meetings='';
            if (!empty($model->meeting_ordi_id)) {
                $x=CommMeetingOrdi::model()->findByPK($model->meeting_ordi_id);
                if($x==null){
                    $meetings= 'No Committee Meeting';
                }else{

                    $IAs= CommMeetingOrdi::model()->findAll(array('condition'=>'date_meeting <>"0000-00-00" and ref_id = "'.$x->ref_id.'"','order'=>'date_meeting asc'));
                    $iaName = CHtml::listData($IAs,'date_meeting','date_meeting'); 
                    
                    foreach($iaName as $val){
                        $meetings= $val.''.$meetings;

                        }
                    if($meetings=='0000-00-00<br/>'){
                        $meetings='No Committee Meeting';
                    }
                }
            } else {
                $meetings = '0000-00-00';
            }

            $meetings1 =  new DateTime($meetings, $timezone);
    if ($meetings == '0000-00-00'){      
     $tbl  .='<td style="border-top-style: 1px solid black;"> : N/A </td>';
            }
            else{$tbl  .='<td style="border-top-style: 1px solid black;">: ' .$meetings1->format('M j, Y').'</td>';}
     $tbl .='</tr>';
     $tbl .='<tr nobr="true">
             <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">E) Public Hearing/s</td>';
            $hearing='';
            if (!empty($model->meeting_ordi_id)) {            
                $y=CommMeetingOrdi::model()->findByPK($model->meeting_ordi_id);
                if(!empty($y)){
                    
                    $hearing= 'N/A';
                }else{

                $phearing= CommMeetingOrdi::model()->findAll(array('condition'=>'public_hearing <> "0000-00-00" and ref_id = "'.$y->ref_id.'"','order'=>'date_meeting asc'));
                $meet = CHtml::listData($phearing,'public_hearing','public_hearing'); 
                
                foreach($meet as $val){
                    $hearing= $val.'<br/>'.$hearing;
                    }
                }
                if($hearing=='0000-00-00<br/>'){
                    $hearing='N/A';
                }
            } else {
                $hearing = ' N/A';
            }
     $tbl  .='<td style="border-top-style: 1px solid black;">: '.$hearing.'</td>';
    $tbl .='</tr>';

    if ($date_report == '0000-00-00'){
    $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">F) Comittee Report</td>
                 <td style="border-top-style: 1px solid black;">: N/A</td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">F) Committee Report:</td>
                 <td style="border-top-style: 1px solid black;">: ' .$daterport->format('M j, Y').'</td>';
                     }
    $tbl .='</tr>';

  
    if ($first == '0000-00-00'){
    $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">G) First Reading</td>
                 <td style="border-top-style: 1px solid black;">: N/A</td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">G) First Reading:</td>
                 <td style="border-top-style: 1px solid black;">: ' .$firstread->format('M j, Y').'</td>';
                     }
    $tbl .='</tr>';

   if ($second == '0000-00-00'){
    $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">H) Second Reading</td>
                 <td style="border-top-style: 1px solid black;">: N/A</td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">H) Second Reading</td>
                 <td style="border-top-style: 1px solid black;">: ' .$secondread->format('M j, Y').'</td>';
                     }
    $tbl .='</tr>';

   if ($third == '0000-00-00'){
    $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">I) Third Reading</td>
                 <td style="border-top-style: 1px solid black;">: N/A</td>';
                     }
                     else if($thirdread != '0000-00-00'){
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">I) Third Reading</td>
                 <td style="border-top-style: 1px solid black;">: ' .$thirdread->format('M j, Y').'</td>';
                     }
    $tbl .='</tr>';

    $tbl .='<tr nobr="true">
             <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">J) Date Passed</td>
             <td style="border-top-style: 1px solid black; ">: '.
               $datepassed1->format('M j, Y')
            .'</td>';
    $tbl .='</tr>';
    $tbl .='</table>';

$pdf->writeHTML($tbl, true, false, false, false,'');

// -----------------------------------------------------------------------------

//Close and output PDF document
$pdf->Output('OrdinanceHistoryReportOrdNo -'.$model->ord_no.'pdf', 'I');
}
?>