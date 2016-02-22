<?php
$db=new PDO("mysql:host=localhost; dbname=lis-pglu", "root", "yobiadmin");
$dbst=$db->prepare("SELECT subj_matter FROM tbl_resolution WHERE res_no=:id");

$sub='';
$dbst->execute(array('id'=>$_GET['res_no']));

while($row=$dbst->fetch()){
    
    $sub=$row[0];
     
}

echo $sub;
?>
