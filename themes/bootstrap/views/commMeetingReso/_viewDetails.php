<?php
$db=new PDO("mysql:host=localhost; dbname=lis-pglu", "root", "");
$dbst=$db->prepare("SELECT subject_matter,ctrl_no FROM tbl_communication WHERE ctrl_no=:id");
$dbst1=$db->prepare("SELECT ctrl_no FROM tbl_referral WHERE ref_id=:id");

$ref='';

$dbst1->execute(array('id'=>$_GET['ref_id']));

while($row=$dbst1->fetch()){
    
    $ref=$row[0];
     
}
$ctrl='';
$sub='';
$dbst->execute(array('id'=>$ref));

while($row=$dbst->fetch()){
    
    $sub=$row[0];
    $ctrl=$row[1];
     
}
echo $sub."é".$ctrl;
?>
