<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Schedule Train</title>
  <link rel="icon" type="image/x-icon" href="images/IRCTC1.jpg">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" type="text/css" href="new.css">
</head>
<body>

	<?php
		session_start();

		require "connect_database.php";
		if ($conn->connect_error) 
        {
            die("Connection failed: ".$conn->connect_error);
        }

		$i=0;
		$x=0;
		$p=0;
		//echo" ".$_SESSION["ns"]." ";
		while ($i<$_SESSION["ns"]) 
		{
			$j=$i+1;
			while($j<$_SESSION["ns"]+1)
			{
				if($_POST["s1".$p]>0)
				{
					$sql = "INSERT INTO classcargo (train_number,start_point,destination_point,journey_date,class_name,available_cargo,cargo_fare1) VALUES ('".$_SESSION["trainno"]."','".$_SESSION["st".$i]."','".$_SESSION["st".$j]."','".$_POST["d1".$p]."','Oil tanker','".$_POST["s1".$p]."','".$_POST["f1"]."')";
					$flag=($conn->query($sql));
									
					$x=$x+1;
				}
				if($_POST["s2".$p]>0)
				{
					$sql = "INSERT INTO classcargo (train_number,start_point,destination_point,journey_date,class_name,available_cargo,cargo_fare1) VALUES ('".$_SESSION["trainno"]."','".$_SESSION["st".$i]."','".$_SESSION["st".$j]."','".$_POST["d1".$p]."','Gas tanker','".$_POST["s2".$p]."','".$_POST["f2"]."')";
					$flag=($conn->query($sql));
					
					$x=$x+1;
				}
				if($_POST["s3".$p]>0)
				{
					$sql = "INSERT INTO classcargo (train_number,start_point,destination_point,journey_date,class_name,available_cargo,cargo_fare1) VALUES ('".$_SESSION["trainno"]."','".$_SESSION["st".$i]."','".$_SESSION["st".$j]."','".$_POST["d1".$p]."','Car carrier','".$_POST["s3".$p]."','".$_POST["f3"]."')";
					$flag=($conn->query($sql));
					
					$x=$x+1;
				}
				if($_POST["s4".$p]>0)
				{
					$sql = "INSERT INTO classcargo (train_number,start_point,destination_point,journey_date,class_name,available_cargo,cargo_fare1) VALUES ('".$_SESSION["trainno"]."','".$_SESSION["st".$i]."','".$_SESSION["st".$j]."','".$_POST["d1".$p]."','Industrial goods','".$_POST["s4".$p]."','".$_POST["f4"]."')";
					$flag=($conn->query($sql));
					
					$x=$x+1;
				}
				if($_POST["s5".$p]>0)
				{
					$sql = "INSERT INTO classcargo (train_number,start_point,destination_point,journey_date,class_name,available_cargo,cargo_fare1) VALUES ('".$_SESSION["trainno"]."','".$_SESSION["st".$i]."','".$_SESSION["st".$j]."','".$_POST["d1".$p]."','Solid Good','".$_POST["s5".$p]."','".$_POST["f5"]."')";
					$flag=($conn->query($sql));
					
					$x=$x+1;
				}
				if($_POST["s6".$p]>0)
				{
					$sql = "INSERT INTO classcargo (train_number,start_point,destination_point,journey_date,class_name,available_cargo,cargo_fare1) VALUES ('".$_SESSION["trainno"]."','".$_SESSION["st".$i]."','".$_SESSION["st".$j]."','".$_POST["d1".$p]."','Coal carrier','".$_POST["s6".$p]."','".$_POST["f6"]."')";
					$flag=($conn->query($sql));
					
					$x=$x+1;
				}
				$j=$j+1;
				$p=$p+1;
			}
			$i+=1;
		}
		if($x==0)
		{
			echo "
                    <div class=\"alert alert-danger alert-dismissible\">
                        <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;
                        </button>
                        <strong> You need to add at least one seat <strong> </strong> <i class=\"fa fa-frown\"></i>.<a href=\"http://localhost/railway/schedule_train.php\" style=\"color:blue;\">Go to scehdule page</a>.
                    </div>
            ";
            die();
		}
		if ($flag === TRUE) 
		{
    		echo "
                    <div class=\"alert alert-suIndustrial goodsess alert-dismissible\">
                        <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;
                        </button>
                        <strong> Train Number ".$_SESSION["trainno"]."</strong> has been suIndustrial goodsessfully scheduled on <strong> ".$_SESSION["doj"]."</strong> <i class=\"far fa-smile\"></i>.
                    </div>
            ";
		}
		else
		{
    		echo "Error: " . $sql . "<br>" . $conn->error;
		}
		
	?>
	<div class="text-center">
        
        <a href="http://localhost/railway/admin_login.html" class=" text-dark font-weight-bold">
            <button class="btn btn-danger text-dark p-2" style="margin-right: 20px;"> 
               <span style="margin-right:7px;">Logout</span><i class="fa fa-sign-out" aria-hidden="true"></i> 
            </button>
        </a>
        <?php
        		echo"
        				<a class=\"nav-link\" href=\"http://localhost/railway/admin_menu.php?username=".$_SESSION["username"]."&password=".$_SESSION["password1"]."\">
        					<button class=\"btn btn-primary text-dark p-2\" style=\"margin-left: 20px;\">
        						<i class=\"fa fa-home\"></i> Home Page
        					</button>
        				</a>
        		";  
        ?>
    </div>
</body>
</html>
