<?php
include '../../session.php';
error_reporting(0);
if(isset($_POST["Import"])){
		

		echo $filename=$_FILES["file"]["tmp_name"];
		

		 if($_FILES["file"]["size"] > 0)
		 {

		  	$file = fopen($filename, "r");
	         while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)
	         {
	    
	          //It wiil insert a row to our subject table from our csv file`
	           $sql = "INSERT into stg_order (`stg_Item_Name`, `stg_Width`, `stg_Height`, `stg_Color`,stg_Quantity, `stg_Price`,`stg_Customer_Name`,`stg_Customer_Contact`,`stg_Purchase_ID`) 
	            	values('$emapData[0]','$emapData[1]','$emapData[2]','$emapData[3]','$emapData[4]','$emapData[5]','$emapData[6]','$emapData[7]','$emapData[8]')";
	         //we are using mysql_query function. it returns a resource on true else False on error
	          $result = mysqli_query($ob->connect(),$sql);
				if(! $result )
				{
					echo "<script type=\"text/javascript\">
							alert(\"Invalid File:Please Upload CSV File.\");
							window.location = \"../../pages/forms/form_customer_dep.php\"
						</script>";
				
				}

	         }
	         fclose($file);
	         //throws a message if data successfully imported to mysql database from excel file
	         echo "<script type=\"text/javascript\">
						alert(\"CSV File has been successfully Imported.\");
						window.location = \"../../pages/forms/form_customer_dep.php\"
					</script>";
	        
			 //close of connection
			mysqli_close($ob->connect()); 
				
		 }
	}	 
?>		 