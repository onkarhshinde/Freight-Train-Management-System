<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cargo Booking</title>
<link rel="icon" type="image/x-icon" href="images/IRCTC1.jpg">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" type="text/css" href="new.css">
<style type="text/css">
    table, th, td, tr {
        border: 1px solid black;
        border-collapse: collapse;
    }
</style>
</head>
<body>
<?php 
    session_start();
    require "connect_database.php";

    $tno=$_SESSION["tno"];
    $doj=$_SESSION["doj"];
    $sp=$_SESSION["sp"];
    $dp=$_SESSION["dp"];
    $class1=$_SESSION["class"];

    $query = "SELECT cargo_fare1, available_cargo FROM classcargo WHERE train_number='".$tno."' AND class_name='".$class1."' AND journey_date='".$doj."' AND start_point='".$sp."' AND destination_point='".$dp."'";
    $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
    $row = mysqli_fetch_array($result);
    $fare = $row['cargo_fare1'];
    $available_cargo = $row['available_cargo'];

    // Assume each bogie costs a certain amount and you have to book the entire bogie
    $total_fare = $available_cargo * $fare;

    $sql = "INSERT INTO reservation(user_id, train_number, start_point, destination_point, journey_date, cargo_fare1, class_name, number_of_Cargo) VALUES ('".$_SESSION["id"]."', '".$tno."', '".$sp."', '".$dp."', '".$doj."', '".$total_fare."', '".$class1."', '".$available_cargo."')";

    if ($conn->query($sql) === TRUE) {
        echo "
            <div class=\"alert alert-success\">
                <strong>Booking Successful!</strong> The total fare for your journey is Rs. $total_fare. Details have been sent to your registered email.
            </div>
        ";
    } else {
        echo "<div class=\"alert alert-danger\">Unable to book cargo. Error: " . $conn->error . "</div>";
    }
    $conn->close();
?>
<div class="text-center" style="margin-top:20px;">
    <a href="http://localhost/railway/index.html"><button class="btn btn-primary">Go to Home Page</button></a>
</div>
</body>
</html>
