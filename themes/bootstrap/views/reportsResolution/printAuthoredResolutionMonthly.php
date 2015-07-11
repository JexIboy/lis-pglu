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
           $pdf = new TCPDF('P', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->SetTitle($mon.' '.$year.' Monthly Authored Resolution of '.'Hon. '.$author->Fullname);
$pdf->Ln(20);
// set default header data
$pdf->SetHeaderData('banner.jpg', PDF_HEADER_LOGO_WIDTH, 'Legislative Information System - Provincial Government of La Union v1.0');

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(15, $pdf->GetY() + 50, 15);
$pdf->SetAutoPageBreak(true, 65);
$pdf->SetHeaderMargin(10);
$pdf->SetFooterMargin(30);

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

if(empty($author)){
    $pdf->Write(0, 'No Resolution Authored/Sponsored!', '', 0, 'C', true, 0, false, false, 0);
    $pdf->Output('NoResolutionAuthored'.'pdf', 'I');

}
else{



$pdf->SetFont('helvetica', '', 6);
$pdf->Ln(4);
// -----------------------------------------------------------------------------

$tbl ='<table cellspacing="0" cellpadding="8" border="1">
        <thead>
         <tr style="font-weight:bold; font-size:13px; background-color:#b6aeae; text-align:center; width:100%;">
             <td style="width:20%;">Resolution No.</td>
             <td style="width:60%;">Subject Matter</td>
             <td style="width:20%;">Date Passed</td>
        </tr>
        </thead>';
        foreach($list as $val){
            $tbl .='<tr style="text-align:center;">';
                $tbl .='<td style="width:20%;">'.$val->res_no.'</td>';
                $tbl .='<td style="width:60%;">'.$val->subj_matter.'</td>';
                $tbl .='<td style="width:20%;">'.$val->date_passed.'</td>';
            $tbl .='</tr>';
        }

$tbl .='</table>';


$pdf->writeHTML($tbl, true, false, false, false,'');



// -----------------------------------------------------------------------------

//Close and output PDF document
$pdf->Output('Authored Resolution of '.'Hon. '.$author->Fullname.'.pdf', 'I');
}
?>