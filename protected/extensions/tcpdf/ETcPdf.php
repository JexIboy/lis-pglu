<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
require_once(dirname(__FILE__).'/myTCPDF.php');
 function __construct($orientation, $unit, $format, $unicode, $encoding, $docType = null)
{
  switch ($docType)
  {
    case null:
      $this->myTCPDF = new TCPDF($orientation, $unit, $format, $unicode, $encoding);
      return;
      break;
 
    case 'myPdf':
      $this->myTCPDF = new myTCPDF($orientation, $unit, $format, $unicode, $encoding);
      return;
      break;
  }
}
?>
