<?php
$mon='';
switch ($month) {
   case "01":
        $mon='January';
        break;
    case "02":
        $mon='February';
        break;
    case "03":
        $mon='March';
        break;
    case "04":
        $mon='April';
        break;
    case "05":
        $mon='May';
        break;
    case "06":
        $mon='June';
        break;
    case "07":
        $mon='July';
        break;
    case "08":
        $mon='August';
        break;
    case "09":
        $mon='September';
        break;
    case "10":
        $mon='October';
        break;
    case "11":
        $mon='November';
        break;
    case "12":
        $mon='December';
        break;
}
require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('L', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->SetTitle($mon.' '.$year.' Monthly Committee Report of '.$comm_name);

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

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', 'B', 20);

// add a page
$pdf->AddPage();


if(empty($listReso) || empty($listOrd)){
    

$pdf->SetFont('helvetica', '', 8);


// -----------------------------------------------------------------------------

$tbl ='<table cellspacing="0" cellpadding="8" border="1" style="width:100%;">
        <thead>
         <tr style="font-weight:bold; font-size:13px; background-color:#b6aeae; text-align:center; width:100%;">
             <td style="width:20%;">Control No.</td>
             <td style="width:40%;">Subject Matter</td>
             <td style="width:20%;">Committee Report</td>
             <td style="width:20%;">Action Taken</td>
        </tr>
        </thead>';
        foreach($listReso as $val){
            $tbl .='<tr style="text-align:center;" nobr="true">';
                $tbl .='<td style="width:20%;">'.$val->ControlNumber.'</td>';
                $tbl .='<td style="width:40%;">'.$val->ref->ctrlNo->subject_matter.'</td>';
                $tbl .='<td style="width:20%;">'.$val->comm_report.'</td>';
                $tbl .='<td style="width:20%;">'.$val->ActionTaken.'</td>';
            $tbl .='</tr>';
        }
        foreach ($listOrd as $key ) {
            $tbl .='<tr style="text-align:center; " nobr="true">';
                $tbl .='<td style="width:20%;">'.$key->ControlNumber.'</td>';
                $tbl .='<td style="width:40%;">'.$key->ref->ctrlNo->subject_matter.'</td>';
                $tbl .='<td style="width:20%;">'.$key->comm_report.'</td>';
                $tbl .='<td style="width:20%;">'.$key->ActionTaken.'</td>';
            $tbl .='</tr>';
        }
$tbl .='</table>';


$pdf->writeHTML($tbl, true, false, false, false, '');



// -----------------------------------------------------------------------------

//Close and output PDF document
$pdf->Output('CommReportBy'.$comm_name.'.pdf', 'I');
}
else{
    $pdf->Write(0,'No Report Found!', '', 0, 'C', true, 0, false, false, 0);
    $pdf->Ln(5);
    $pdf->Output('NoReportFound'.'pdf', 'I');

}
?>