<?php
$db=new PDO("mysql:host=localhost; dbname=lis-pglu", "root", "");
$dbst=$db->prepare("SELECT subj_matter FROM tbl_ordinance WHERE ord_no=:id");

$sub='';
$dbst->execute(array('id'=>$_GET['ord_no']));

while($row=$dbst->fetch()){
    
    $sub=$row[0];
     
}

echo $sub;
?>
