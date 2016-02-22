<?php
$host="localhost"; // Host name 
$username="root"; // Mysql username
$db_name="lis-pglu"; // Database name 
$db_pass="yobiadmin"; // Database name 
$tbl_name="tbl_comm_meeting_ordi"; // Table name 
// Connect to server and select databse.
mysql_connect("$host", "$username", "$db_pass")or die("cannot connect"); 
mysql_select_db("lis-pglu")or die("cannot select DB");
// get value of id that sent from address bar 

?>