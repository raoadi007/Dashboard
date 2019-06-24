<?php 
include '../../session.php';
              
              if (isset($_POST['save'])) {
                $sql_load = "INSERT INTO main_order SELECT * FROM stg_order";
              $query = mysqli_query($ob->connect(),$sql_load);

              $sql_rm = "TRUNCATE TABLE stg_order";
              $query1 = mysqli_query($ob->connect(),$sql_rm);
              //print_r($query);
              //exit();
              header("location: ../../pages/forms/form_customer_dep.php");
              }
              
              ?>