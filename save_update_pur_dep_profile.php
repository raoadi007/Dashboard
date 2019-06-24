<?php

include '../../session.php';

//$id=$_GET['id'];
  //Start session
if (isset($_POST['update'])){
	// new data
$id 	= $_POST['id'];
$a 		= $_POST['full_name'];
$b 		= $_POST['username'];
$c 		= $_POST['password'];
$d 		= $_POST['status'];

// query
$sql = "UPDATE user
        SET full_name = '$a', username = '$b', password = '$c', status = '$d' WHERE User_ID = '$id' ";

$query = mysqli_query($ob->connect(),$sql);

header("location: purchase_dep_profile.php");
}
?>