<?php

require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('P', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->SetTitle('Agenda Report');

// set default header data
//$pdf->SetHeaderData('banner.jpg', PDF_HEADER_LOGO_WIDTH, 'Capitol Legislative Management Information System v1.0');

// set header and footer fonts
//$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
//$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(20, 20, 20);
//$pdf->SetHeaderMargin(10);
//$pdf->SetFooterMargin(10);
$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);
// set auto page breaks
//$pdf->SetAutoPageBreak(FALSE, PDF_MARGIN_BOTTOM);

// set image scale factor
//$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}
$timezone = new DateTimeZone('Asia/Manila');

$times = new DateTime($model->session_time, $timezone);
// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', 'B', 20);

// add a page
$pdf->AddPage();
if(empty($communication)&&(empty($ordMeeting)||empty($resoMeeting))){
    $pdf->Write(0,'No Agenda!', '', 0, 'C', true, 0, false, false, 0);
    $pdf->Output('NoAgenda'.'pdf', 'I');

}
else{
    
$pdf->SetFont('helvetica', '', 13);
$pdf->Write(0,'Republic of the Philippines', '', 0, 'C', true, 0, false, false, 0);
$pdf->SetFont('helvetica', 'B', 14);
$pdf->Write(0,'PROVINCE OF LA UNION', '', 0, 'C', true, 0, false, false, 0);
$pdf->SetFont('helvetica', '', 13);
$pdf->Write(0,'City of San Fernando', '', 0, 'C', true, 0, false, false, 0);
$pdf->Ln(5);
$pdf->SetFont('helvetica', 'B', 14);
$pdf->Write(0,'TANGGAPAN NG SANGGUNIANG PANLALAWIGAN', '', 0, 'C', true, 0, false, false, 0);
$pdf->Ln(5);
$pdf->SetFont('helvetica', '', 13);
$pdf->Write(0,$model->session_no.'th '.$model->getSessionTypes($model->session_type).' of the', '', 0, 'C', true, 0, false, false, 0);
$pdf->Write(0,$model->sp_batch_no.'th SANGGUNIANG PANLALAWIGAN', '', 0, 'C', true, 0, false, false, 0);
$pdf->Write(0,date('F d, Y',strtotime($model->session_date)), '', 0, 'C', true, 0, false, false, 0);
$pdf->Write(0,"(".$times->format('g:i')." O'CLOCK P.M.)", '', 0, 'C', true, 0, false, false, 0);
$pdf->Ln(6);
$pdf->SetFont('helvetica', 'B', 19);
$pdf->Write(0,'ORDER AND CALENDAR OF BUSINESS', '', 0, 'C', true, 0, false, false, 0);
$pdf->Ln(5);
// -----------------------------------------------------------------------------
$pdf->SetFont('helvetica', '', 13);
$tbl ='<table cellspacing="0" cellpadding="0" >
         <tr style=" font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">I</td>
             <td style="font-weight:bold; width:85%;">CALL TO ORDER</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">II</td>
             <td style="font-weight:bold; width:85%;">INVOCATION</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">III</td>
             <td style=" font-weight:bold; width:85%;">NATIONAL ANTHEM</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">IV</td>
             <td style="font-weight:bold; width:85%;">LA UNION HYMN</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">V</td>
             <td style="font-weight:bold; width:85%;">ROLL CALL</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">VI</td>
             <td style="font-weight:bold; width:85%;">READING AND CONSIDERATION OF THE JOURNAL OF THE PREVIOUS SESSION</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">VII</td>
             <td style="font-weight:bold; width:85%;">PRIVILEGE HOUR</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">VIII</td>
             <td style="font-weight:bold; width:85%;">QUESTION HOUR</td>
        </tr>
        <tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">IX</td>
             <td style="font-weight:bold; width:85%;">READING AND REFERRAL OF PROPOSED MEASURES OR COMMUNICATIONS</td>
        </tr>
        <br/>';

$x=1;
$let=array('A','B','C','D','E','F','G');
foreach($communication as $value){
    
 $tbl .='<tr style="font-size:11px; text-align:left;">
             <td style="width:15%;"></td>
             <td style="width:80%;">'.$x.'. '.ucfirst($value->subject_matter).'</td>
        </tr>
        <br/>';
 $x++;
}

$tbl .='<tr style="font-weight:bold; font-size:11px; text-align:left;">
             <td style="width:15%;">X</td>
             <td style="width:85%;">COMMITTEE REPORTS</td>
        </tr>
        <br/>';
foreach($resoMeeting as $val){
    if(empty($val->ref->joint_committee)){
        $tbl .='<tr style="font-size:11px; text-align:left;">
             <td style="width:15%;"></td>
             <td style="font-style:italic; width:85%;">COMMITTEE REPORT OF THE '.strtoupper($val->ref->leadCommittee->comm_name).'</td>
        </tr>
        <br/>';

    }
    else{

    $x= explode(',',$val->ref->joint_committee);
    $comm='';
    foreach($x as $value){
        $comm=' AND '.Committee::model()->findByPK($value)->comm_name.$comm;
    }

        $tbl .='<tr style="font-size:11px; text-align:left;">
             <td style="width:15%;"></td>
             <td style="font-style:italic; width:85%;">JOINT COMMITTEE REPORT OF THE '.strtoupper($val->ref->leadCommittee->comm_name).strtoupper($comm).'</td>
        </tr>
        <br/>';
    }
}

foreach($ordMeeting as $vals){
    if(empty($vals->ref->joint_committee)){
        $tbl .='<tr style="font-size:11px; text-align:left;">
             <td style="width:15%;"></td>
             <td style="font-style:italic; width:85%;">COMMITTEE REPORT OF THE '.strtoupper($vals->ref->leadCommittee->comm_name).'</td>
        </tr>';

    }
    else{

    $x= explode(',',$vals->ref->joint_committee);
    $comm='';
    foreach($x as $values){
        $comm=' AND '.Committee::model()->findByPK($values)->comm_name.$comm;
    }

        $tbl .='<tr style="font-size:11px; text-align:left;">
             <td style="width:15%;"></td>
             <td style="font-style:italic; width:85%;">JOINT COMMITTEE REPORT OF THE '.strtoupper($vals->ref->leadCommittee->comm_name).strtoupper($comm).'</td>
        </tr>';
    }
}

$tbl .='<tr style="font-size:13px; text-align:left;">
             <td style="font-weight:bold; width:15%;">XI</td>
             <td style="font-weight:bold; width:85%;">CALENDAR OF BUSINESS</td>
        </tr>
        <br/>
        <tr style="font-size:11px; text-align:left;">
             <td style="font-weight:bold; width:15%;"></td>
             <td style="font-weight:bold; width:85%;">A. UNFINISHED BUSINESS</td>
        </tr>
         <br/>
            <tr style="font-size:11px; text-align:left;">
             <td style="font-weight:bold; width:15%;"></td>
             <td style="font-weight:bold; width:85%;">B. BUSINESS FOR THE DAY</td>
        </tr>
         <br/>
        <tr style="font-size:11px; text-align:left;">
             <td style="font-weight:bold; width:15%;"></td>
             <td style="font-weight:bold; width:85%;">C. UNASSIGNED BUSINESS</td>
        </tr>
         <br/>
        <tr style="font-size:11px; text-align:left;">
             <td style="font-weight:bold; width:15%;">XII</td>
             <td style="font-weight:bold; width:85%;">ANNOUNCEMENT</td>
        </tr>
         <br/>
        <tr style="font-size:11px; text-align:left;">
             <td style="font-weight:bold; width:15%;">XIII</td>
             <td style="font-weight:bold; width:85%;">ADJOURNMENT</td>
        </tr>';
        
$tbl .='</table>';


$pdf->writeHTML($tbl, true, false, false, false, '');



// -----------------------------------------------------------------------------

//Close and output PDF document
$pdf->Output('agenda-'.$model->session_date.'.pdf', 'I');
}
?>