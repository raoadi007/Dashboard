<?php

	include('conn.php');

		$ob = new conn;

 session_start(); 

if (!isset($_SESSION['id']) || (trim($_SESSION['id']) == '')) { ?>
<script>
window.location = "index.php";
</script>
<?php
}
$session_id=$_SESSION['id'];
$query= mysqli_query($ob->connect(),"select * from user where User_ID = '$session_id'");
	$row = mysqli_fetch_array($query);
	$user_username = $row['username'];
?>