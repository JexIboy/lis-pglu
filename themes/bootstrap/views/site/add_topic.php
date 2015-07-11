<?php
exit;
$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="lis-pglu"; // Database name 
$tbl_name="forum_question"; // Table name 

// Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");

// get data that sent from form 
$topic=$_POST['topic'];
$detail=$_POST['detail'];
$name=$_POST['name'];
$email=$_POST['email'];

$datetime=date('Y-m-d H:i:s'); //create date time

$sql="INSERT INTO $tbl_name(topic, detail, name, email, datetime)VALUES('$topic', '$detail', '$name', '$email', '$datetime')";
$result=mysql_query($sql);

if($result){

echo '<script>function myFunction(){
	alert("YES")
}</script>';
		
	$this->redirect(array('main_forum'));
}
else {
echo "ERROR";
}
mysql_close();
?>

