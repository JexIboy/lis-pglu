<?php
$db=new PDO("mysql:host=localhost; dbname=lis-pglu", "root", "yobiadmin");
$dbst=$db->prepare("SELECT subject_matter FROM tbl_communication WHERE ctrl_no=:id");

$sub='';
$dbst->execute(array('id'=>$_GET['ctrl_no']));

while($row=$dbst->fetch()){
    
    $sub=$row[0];
     
}

echo $sub;
?>
