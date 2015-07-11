<?php

require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('P', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->SetTitle('Yearly Authored Ordinance of Hon. '.$author->Fullname);
$pdf->Ln(20);
// set default header data
$pdf->SetHeaderData('banner.jpg', PDF_HEADER_LOGO_WIDTH, 'Legislative Information System - Provincial Government of La Union v1.0');

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
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
$pdf->SetFont('helvetica', 'B', 15);

// add a page
$pdf->AddPage();
if(empty($list)){
    $pdf->Write(0, 'No Ordinance Authored!', '', 0, 'C', true, 0, false, false, 0);
    $pdf->Output('NoOrdinanceAuthored'.'pdf', 'I');

}
else{


$pdf->SetFont('helvetica', '', 6);
$pdf->Ln(4);
// -----------------------------------------------------------------------------

$tbl ='<table cellspacing="0" cellpadding="8" border="1">
        <thead>
         <tr style="font-weight:bold; font-size:13px; background-color:#b6aeae; text-align:center; ">
             <td style="width:20%;">Ordinance No.</td>
             <td style="width:60%;">Subject Matter</td>
             <td style="width:20%;">Date Passed</td>
        </tr>
        </thead>';
        foreach($list as $val){
            $tbl .='<tr style="text-align:center;" nobr="true">';
                $tbl .='<td style="width:20%;">'.$val->ord_no.'</td>';
                $tbl .='<td style="width:60%;">'.$val->subj_matter.'</td>';
                $tbl .='<td style="width:20%;">'.$val->date_passed.'</td>';
            $tbl .='</tr>';
        }

$tbl .='</table>';


$pdf->writeHTML($tbl, true, false, false, false,'');



// -----------------------------------------------------------------------------

//Close and output PDF document
$pdf->Output('Authored Ordinance of Hon. '.$author->Fullname.'.pdf', 'I');
}
?>