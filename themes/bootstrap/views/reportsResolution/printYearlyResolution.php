<?php
require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('L', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information

$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->SetTitle('Yearly Resolution Report for FY '.$start_year.' - '.$end_year);
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
if(!empty($details)){
//$pdf->SetY();
//header table
$pdf->SetFont('helvetica', 'B', 20);

// -----------------------------------------------------------------------------

$tbl = '<div><table cellspacing="0" cellpadding="8" border="1"  width="100%">
        <thead>
        <tr style=" width:100%; font-weight:bold; font-size:13px; background-color:#b6aeae;">
            <td style="text-align:center; width:10%;">Resolution No.</td>
            <td style="text-align:center; width:35%;">Subject Matter</td>
            <td style="text-align:center; width:20%;">Author</td>
            <td style="text-align:center; width:20%;">Origin</td>
            <td style="text-align:center; width:15%;">Date Passed</td>
        </tr>
        </thead>';
        $b=1;
    foreach($details as $values){
        
        $pdf->SetFont('helvetica', '', 8);
        $tbl .='<tr style="width:100%;" nobr="true">';
        $tbl .= '<td style="text-align:center; width:10%;">'.$values['res_no'].'</td>';
        $tbl .= '<td style="text-align:left;width:35%;">'.$values->subj_matter.'</td>';

        $x=explode(',',$values['author']);
            $auth_name='';
            foreach($x as $y){
            $auth=Officials::model()->findByPK($y);
            $auth_name=$auth->Fullname.'<br/>'.$auth_name;
            }
        $orig = !empty($values->ctrlNo->ctrlNo->orig->orig_name) ? $values->ctrlNo->ctrlNo->orig->orig_name : 'No Origin';
        $tbl .= '<td style="text-align:center;width:20%;">'.$auth_name.'</td>';
        $tbl .= '<td style="text-align:center;width:20%;">'.$orig.'</td>';   
        $tbl .= '<td style="text-align:center;width:15%;">'.$values->date_passed.'</td>';

        $tbl .= '</tr>';
    }
    $tbl .= '</table></div>';


$pdf->writeHTML($tbl, true, false, false, false, '');

    }  
 else{
    $pdf->Ln(15);
     $pdf->Write(0, 'No Resolutions for the Year '.$start_year. ' to '.$end_year, '', 0, 'C', true, 0, false, false, 0);
 }
// reset pointer to the last page
$pdf->lastPage();

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('ResolutionForTheYearOf'.$start_year.'to'.$end_year.'.pdf', 'I');

?>