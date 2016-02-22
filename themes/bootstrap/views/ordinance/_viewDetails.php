<?php
$db=new PDO("mysql:host=localhost; dbname=lis-pglu", "root", "yobiadmin");
$dbst=$db->prepare("SELECT ref_id FROM tbl_comm_meeting_ordi WHERE meeting_ordi_id=:id");
$dbst1=$db->prepare("SELECT ctrl_no FROM tbl_referral WHERE ref_id=:id");
$dbst2=$db->prepare("SELECT subject_matter,ctrl_no FROM tbl_communication WHERE ctrl_no=:id");

$meet='';
$dbst->execute(array('id'=>$_GET['meeting_ordi_id']));

while($row=$dbst->fetch()){
    $meet=$row[0];
}

$ref='';
$dbst1->execute(array('id'=>$meet));
while($row1=$dbst1->fetch()){
	$ref=$row1[0];
}

$comm='';
$ctrl='';
$dbst2->execute(array('id'=>$ref));
while($row2=$dbst2->fetch()){
	$comm=$row2[1];
	$ctrl=$row2[0];
}

echo $comm."é".$ctrl;

?>
