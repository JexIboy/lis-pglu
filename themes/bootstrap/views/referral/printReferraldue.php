<?php
require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('L', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$referralduedateCount=count(Referral::model()->findAll(array('condition'=>'referral_stat = 0 and now() > duedate')));
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->SetTitle($referralduedateCount.'  Pending Referrals - Referrals without Committee Reports as of today');

// set default header data
$pdf->SetHeaderData('banner.jpg', PDF_HEADER_LOGO_WIDTH, 'Legislative Information System - Provincial Government of La Union v1.0');

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(15, $pdf->GetY() + 55, 15);
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
$pdf->SetFont('helvetica', 'B', 15);

// add a page
$pdf->AddPage();

//$pdf->SetLineWidth(2);

// set color for background
$pdf->SetFillColor(255, 255, 200);
if(!empty($model)){

//header table

$pdf->SetFont('helvetica', 'B', 20);
$timezone = new DateTimeZone('Asia/Manila');

// -----------------------------------------------------------------------------

$tbl = '<table cellspacing="0" cellpadding="7" border="1"  width="100%">
        <thead>
        <tr style="font-weight:bold; font-size:13px; background-color:skyblue;">
        <td style="text-align:center; width:10%;">Control No.</td>
        <td style="text-align:center; width:10%;">Date Referred</td>
        <td style="text-align:center; width:35%;">Subject Matter</td>
        <td style="text-align:center; width:25%;">Lead Committee</td>
        <td style="text-align:center; width:10%;">Duedate</td>
         <td style="text-align:center; width:10%;">Remarks</td>
        </tr>
        </thead>';
    foreach($model as $values){ 
    $sbj= Communication::model()->FindByPK($values->ctrl_no)->subject_matter;
    $comm= Committee::model()->FindByPK($values->lead_committee)->comm_name;
    $dateref = new DateTime($values->date_referred, $timezone);
    $dateref1 = new DateTime($values->duedate, $timezone);
        $pdf->SetFont('helvetica', '', 10);
        $tbl .='<tr nobr="true">';
        $tbl .= '<td style="text-align:center; width:10%;">'.$values->ctrl_no.'</td>';
        $tbl .= '<td style="text-align:center; width:10%;">'.$dateref->format('M j , Y').'</td>';
        $tbl .= '<td style="text-align:center; width:35%;">'.$sbj.'</td>';
        $tbl .= '<td style="text-align:center; width:25%;">'.$comm.'</td>';
        $tbl .= '<td style="text-align:center; width:10%;">'.$dateref1->format('M j , Y').'</td>';
        $tbl .= '<td style="text-align:center; width:10%;"></td>';
        $tbl .= '</tr>';
    }
    $tbl .= '</table>';
$pdf->writeHTML($tbl, true, false, false, false, '');

    }  
 else{
   
    $pdf->Write(0, 'Referrals without Action', '', 0, 'C', true, 0, false, false, 0);
 }
// reset pointer to the last page
$pdf->lastPage();

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('Pending Referrals.pdf', 'I');

?>