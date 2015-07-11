<?php

require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('P', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);

$pdf->SetTitle('Resolution History Report');

// set default header data
$pdf->SetHeaderData('banner.jpg', PDF_HEADER_LOGO_WIDTH, 'Legislative Information System - Provincial Government of La Union v1.0');

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

$pdf->SetMargins(15, $pdf->GetY() + 40, 15);
$pdf->SetHeaderMargin(10);
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


// add a page
$pdf->AddPage();
if(empty($model)){
    $pdf->SetFont('helvetica', 'B', 15);
    $pdf->Write(0, 'No Resolution Found!', '', 0, 'C', true, 0, false, false, 0);
    $pdf->Output('NoResolutionFound'.'pdf', 'I');

}
else{

$pdf->SetFont('helvetica', 'B', 15);
$pdf->Ln(10);
$pdf->Write(0, 'Resolution No. '.$model->res_no, '', 0, 'C', true, 0, false, false, 0);
$pdf->Ln(10);
$pdf->SetFont('helvetica', 'B', 12);
$pdf->Write(0, $model->subj_matter, '', 0, 'C', true, 0, false, false, 0);
$pdf->SetFont('helvetica', '', 9);
$pdf->Ln(10);
// -----------------------------------------------------------------------------
$timezone = new DateTimeZone('Asia/Manila');
$agenda = !empty($model->ctrlNo->ctrlNo->date_agenda) ? $model->ctrlNo->ctrlNo->date_agenda : '0000-00-00';
$origin = !empty($model->ctrlNo->ctrlNo->orig->orig_name) ? $model->ctrlNo->ctrlNo->orig->orig_name : 'N/A';
$referral = !empty($model->ref->date_referred) ? $model->ref->date_referred : '0000-00-00';
$date_report = !empty($model->ctrl_no) ? $model->getReportDate($model->ctrl_no) : '0000-00-00';
$datepassed = $model->date_passed;
#
#if (!empty($model->ref->date_referred))
#    {
#$referral = $model->ref->date_referred;
   # } else if (empty($referral)) {
        # code...
   # }

$agenda1 = new DateTime($agenda, $timezone);
$refer1 = new DateTime($referral, $timezone);
$daterport = new DateTime($date_report, $timezone);
$datepassed1 = new DateTime($datepassed, $timezone);
$tbl ='<table style="padding:40; text-align:center; font-size:12px; width:100%; border-bottom-style: 1px solid black;">';
   if ($agenda == '0000-00-00'){
                $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">A) Date Agenda</td>
                 <td style="border-top-style: 1px solid black;">: N/A </td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">A) Date Agenda</td>
                 <td style="border-top-style: 1px solid black;">'.$agenda1->format('M j, Y').'</td>';
                     }
    $tbl .='</tr>';
    $tbl .='<tr nobr="true">
             <td style="border-top-style: 1px solid black; font-size:15px; font-weight:bold;">B) Origin</td>
             <td style="border-top-style: 1px solid black;">'.$origin.'</td>';
    $tbl .='</tr>';

   if ($referral == '0000-00-00'){
    $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">C) Referral Date</td>
                 <td style="border-top-style: 1px solid black;">: N/A</td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">C) Referral Date</td>
                 <td style="border-top-style: 1px solid black;">'.$refer1->format('M j, Y').'</td>';
                     }
                   
    $tbl .='</tr>';
    $tbl .='<tr nobr="true">
             <td style="border-top-style: 1px solid black; font-size:15px; font-weight:bold;">D) Date Meeting/s</td>';
             $meetings='';
                $temp=Referral::model()->findByAttributes(array('ctrl_no'=>$model->ctrl_no));
                if(empty($temp)){$meetings= '0000-00-00';}
                else{
            $x=CommMeetingReso::model()->find(array('condition'=>'ref_id = "'.$temp->ref_id.'"'));
            if($x==null){
                $meetings= '0000-00-00';
            }else{
            $IAs= CommMeetingReso::model()->findAll(array('condition'=>'ref_id = "'.$temp->ref_id.'"','order'=>'date_meeting desc'));
            $iaName = CHtml::listData($IAs,'date_meeting','date_meeting'); 
            
            foreach($iaName as $val){
                $meetings= $val.''.$meetings;
                }
            }}

     $meetings1 = new DateTime($meetings, $timezone);
     
    if($meetings == '0000-00-00'){

     $tbl  .='<td style="border-top-style: 1px solid black;"> N/A </td>';
    }
    else{$tbl  .='<td style="border-top-style: 1px solid black;">'.$meetings1->format('M j, Y').'</td>';}

    $tbl .='</tr>';
    if ($date_report == '0000-00-00'){
    $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">E) Date Reported</td>
                 <td style="border-top-style: 1px solid black;">N/A</td>';
                     }
                     else{
                         $tbl .='<tr nobr="true">
                 <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">E) Date Reported</td>
                 <td style="border-top-style: 1px solid black;">' .$daterport->format('M j, Y').'</td>';
                     }
    $tbl .='</tr>';
    $tbl .='<tr nobr="true">
             <td style="border-top-style: 1px solid black; font-size:16px; font-weight:bold;">F) Date Passed</td>
             <td style="border-top-style: 1px solid black; ">: '.
               $datepassed1->format('M j, Y')
            .'</td>';
    $tbl .='</tr>';
    $tbl .='</table>';


$pdf->writeHTML($tbl, true, false, false, false,'');



// -----------------------------------------------------------------------------

//Close and output PDF document
$pdf->Output('ResolutionHistoryReportResNo -'.$model->res_no.'pdf', 'I');
}
?>