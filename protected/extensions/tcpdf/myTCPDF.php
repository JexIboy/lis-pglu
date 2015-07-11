<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
require_once(dirname(__FILE__).'/tcpdf.php');
class myTCPDF extends TCPDF
{
  public function __call($method, $params)
{
  return call_user_func_array(array($this->myTCPDF, $method), $params);
}
 
public function __set($name, $value)
{
   $this->myTCPDF->$name = $value;
}
 
public function __get($name)
{
   return $this->myTCPDF->$name;
}
}
?>
