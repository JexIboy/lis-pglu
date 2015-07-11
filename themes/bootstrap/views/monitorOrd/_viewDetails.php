<?php
$db=new PDO("mysql:host=localhost; dbname=lis-pglu", "root", "");
$dbst=$db->prepare("SELECT subj_matter 
                    FROM tbl_ordinance WHERE ord_no=:id");

$dbst->execute(array('id'=>$_GET['ord_no']));
$subj_matter='';
while($row=$dbst->fetch()){
   
    $subj_matter=$row[0];
}

echo $subj_matter.'/';
?>
