<?php

	include 'session.php';
	
	//Start session
	
	//Array to store validation errors
	$errmsg_arr = array();
	
	//Validation error flag
	$errflag = false;
	
	//Connect to mysql server
	//$link = mysqli_connect('localhost','root',"","db_pointofsale");	
	
	//Sanitize the POST values
	$login = $_POST['username'];
	$password = $_POST['password'];	
	
	//Create query
	$qry  ="SELECT * FROM user WHERE username='$login' AND password='$password'";
	$result = mysqli_query($ob->connect(),$qry);
	$row = mysqli_fetch_array($result);
		$num_row = mysqli_num_rows($result);
		$pass=$row['password'];
		$status =$row['status'];
		
		if( $num_row > 0 ) { 
		

		$_SESSION['id']=$row['User_ID'];
		
		
		if($status=='Administrator'){
			
			echo "<script type='text/javascript'> 
                		window.location='dashboard.php'; 
                		</script>";
	
	}elseif{
		echo "<script type='text/javascript'> 
                		window.location='dashboard1.php'; 
                		</script>";
	}else{

		echo "<script type='text/javascript'> 
                		alert('Wrong Input Details');
                		window.location='index.php'; 
                		</script>";
	}
	}
?>