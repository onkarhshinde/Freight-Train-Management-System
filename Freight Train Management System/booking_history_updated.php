<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Details</title>
<link rel="icon" type="image/x-icon" href="images/IRCTC1.jpg">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link rel="stylesheet" type="text/css" href="new.css">
</head>

<body style="background-image: url(images/irctc.jpg);background-repeat: no-repeat;background-size: cover;background-attachment: fixed;">
  <?php 
    session_start();
    require "connect_database.php";
    if ($conn->connect_error) 
    {
      die("Connection failed: " . $conn->connect_error);
    }
    $mobile=$_POST["mno"];
    $_SESSION["mobile_number"]=$mobile;
    $pwd=$_POST["password"];
    $_SESSION["password"]=$pwd;
    $query = mysqli_query($conn,"SELECT * FROM user_details WHERE user_details.mobile_number=BINARY $mobile AND user_details.password=BINARY '".$pwd."' ") or die(mysql_error());
    if(mysqli_num_rows($query) == 0)
    {
        echo "
              <div class=\"alert alert-danger alert-dismissible\">
                  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;
                  </button>
                  <strong>User does not exist or wrong password</strong> <i class=\"far fa-frown\"></i>. If you are new user 
                  <a href=\"http://localhost/railway/signup.html\" class=\"text-danger font-weight-bold\" style=\"color:blue;\">
                   Signup Here
                  </a>
              </div>
              <div class=\"text-center\">
                  <br>
                  <div class=\"text-center mt-3\">
                      <a href=\"http://localhost/railway/index.html\">
                          <button class=\"btn btn-primary\"><i class=\"fa fa-arrow-left\"></i> Back </button>
                      </a>
                  </div>
              </div>
        ";
        die();
    }
    echo"
            <nav class=\"navbar navbar-inverse\">
              <div class=\"container-fluid\">
                <div class=\"navbar-header\">
                  <a class=\"navbar-brand\" href=\"#\">Mini IRCTC</a>
                </div>
                <ul class=\"nav navbar-nav\">
                  <li class=\"active\">
                    <a class=\"nav-link\" href=\"#\"><i class=\"fa fa-home\"></i></a>
                  </li>
                  <li class=\"nav-item nav-dark\">
                    <a class=\"nav-link\" href=\"http://localhost/railway/book_cargo_1.php\"><b>Book cargo</b></a>
                  </li>
                  <li class=\"nav-item\">
                    <a class=\"nav-link\" href=\"http://localhost/railway/cancel_cargo_1.php\"><b>Cancel cargo</b></a>
                  </li>
                  <li class=\"nav-item\">
                    <a class=\"nav-link\" href=\"http://localhost/railway/user_booking_history_1.php\"><b>Booking History</b></a>
                  </li>
                </ul>
                <ul class=\"nav navbar-nav navbar-right\" style=\"background-color: red; color: white;\">
                  <li>
                    <a href=\"http://localhost/railway/index.html\" style=\"color:white;\"><span class=\"glyphicon glyphicon-log-in\"> </span><b> Logout</b> </a>
                  </li>
                </ul>
              </div>
            </nav>
    ";

    if($row = mysqli_fetch_array($query))
    {
      $_SESSION["id"]=$row['user_id'];
      echo"
            <div class=\"login-form text-center\">
              <form action=\"http://localhost/railway/edit_user_details_1.php?id=".$row["user_id"]."\" method=\"post\">
                  <div class=\"avatar\">
                    <i class=\"fa fa-user\"></i>
                  </div>
                  <h2 class=\"text-center\">User Details</h2>
                  <div class=\"form-group\"><b style=\"margin-right:10px;\">Full Name:</b> ".$row["fname"]." ".$row["lname"]."</div>
                  <div class=\"form-group\"><b style=\"margin-right:10px;\">Email Id: </b>".$row["emailid"]."</div>
                  <div class=\"form-group\"><b style=\"margin-right:10px;\">Mobile Number: </b>".$row["mobile_number"]."</div>
                  <div class=\"form-group\"><b style=\"margin-right:10px;\">Date Of Birth:</b>".$row["dob"]." </div>
                  <div class=\"form-group\"><b style=\"margin-right:10px;\">Password: </b>".$row["password"]." </div>
                  <div class=\"form-group\"><b style=\"margin-right:10px;\">Gender: </b>".$row["gender"]." </div>
                  <div class=\"form-group text-center\">
                      <button type=\"submit\" class=\"btn btn-success login-btn\" style=\"margin-right: 7%;\">
                        Edit
                      </button>
                  </div>
                </form>
            </div>
      ";
    }
  ?>

<script>
    function onlyNumberKey(evt) {
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
            return false;
        return true;
    }
</script>
</body>
</html>
