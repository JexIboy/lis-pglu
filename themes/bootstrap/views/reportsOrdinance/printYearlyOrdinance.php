<?php

require(Yii::getPathOfAlias('webroot').'/protected/extensions/tcpdf/'.'tcpdf.php');
// Data loading
           $pdf = new TCPDF('L', PDF_UNIT, 'Legal', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor(User::model()->findByPK(Yii::app()->user->name)->emp->Fullname);
$pdf->Ln(10);
$pdf->SetTitle('Yearly Ordinance Report for FY '.$start_year.' - '.$end_year);

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
if(!empty($details)){

//header table

$pdf->SetFont('helvetica', 'B', 20);

// -----------------------------------------------------------------------------

$tbl = '<table cellspacing="0" cellpadding="8" border="1"  width="100%">
        <thead>
        <tr style="font-weight:bold; font-size:13px; background-color:#b6aeae;">
        <td style="text-align:center; width:10%;">Ordinance No.</td>
        <td style="text-align:center; width:35%;">Subject Matter</td>
        <td style="text-align:center; width:20%;">Author</td>
        <td style="text-align:center; width:20%;">Implementing Agency</td>
        <td style="text-align:center; width:15%;">Date Passed</td>
        </tr>
        </thead>';
    foreach($details as $values){
        
        $pdf->SetFont('helvetica', '', 8);
        $tbl .='<tr nobr="true">';
        $tbl .= '<td style="text-align:center; width:10%;">'.$values['ord_no'].'</td>';
        $tbl .= '<td style="text-align:center; width:35%;">'.$values->subj_matter.'</td>';

        $x=explode(',',$values['author']);
            $auth_name='';
            foreach($x as $y){
            $auth=Officials::model()->findByPK($y);
            $auth_name=$auth->Fullname.'<br/>'.$auth_name;
            }
        $tbl .= '<td style="text-align:center; width:20%;">'.$auth_name.'</td>';
        $x=explode(',',$values['imp_agency']);
            $agname='';
            foreach($x as $y){
            $ag=Agency::model()->findByPK($y);
            $agname=$ag->agency_name.'<br/>'.$agname;
            }

        $tbl .= '<td style="text-align:center; width:20%;">'.$agname.'</td>';
        $tbl .= '<td style="text-align:center; width:15%;">'.$values->date_passed.'</td>';
        $tbl .= '</tr>';
    }
    $tbl .= '</table>';


$pdf->writeHTML($tbl, true, false, false, false, '');

    }  
 else{
    $pdf->Write(0, 'No Ordinance for the Year '.date('Y',strtotime($start_year)). 'to'.date('Y',strtotime($end_year)), '', 0, 'C', true, 0, false, false, 0);
 }
// reset pointer to the last page
$pdf->lastPage();

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('OrdinanceForTheYearOf'.$start_year.'to'.$end_year.'.pdf', 'I');

?>