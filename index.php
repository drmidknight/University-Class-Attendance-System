<?php
session_start();
include 'db.php';

//Processing user to log the user in


if(isset($_POST['login'])){
   echo $email = mysqli_real_escape_string($conn, $_POST['email']);
   echo $password = mysqli_real_escape_string($conn, $_POST['password']);
   echo $usertype = mysqli_real_escape_string($conn, $_POST['usertype']);

       
        // check if user exist
        $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password' AND userType = '$usertype'";
        $userQuery = mysqli_query($conn, $sql);
        
        //checking
        $userCount = mysqli_num_rows($userQuery);
        
        if($userCount > 0){
            //then login
            //set session variables
            $row = mysqli_fetch_assoc($userQuery);
        $_SESSION['uid'] = $row['user_id'];
        $_SESSION['uType'] = $row['userType'];
        $_SESSION['firstName'] = $row['firstName'];
        $_SESSION['login'] = true;
        header("Location: admin/pages/dashboard.php");
        }else{
            // error
            $_SESSION['error'] = "Hey Admin!! Please your login details are invalid";
            header("Location: index.php");
        }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Class Attendance System</title>
    <link rel="stylesheet" href="bootsrap/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <!-- <link rel="stylesheet" href="css/index.css" type="text/css"> -->
</head>
<body>
    <div class="wrapper">
        <div class="logo">
            <img src="images/ITSA l ogo.png" alt="" style="width: 70px;">
            <p>Online Class Attendance System</p>
            <div class="singupBtn">
            <div class="btnCover">
                <!-- <button>Register</button> -->
            </div>
            </div>
        </div>
       
        <div class="container">
    <!-- submit for to the action page to process the form to login 
    the user in with ther username name and password.

    //Making a request now
    -->

            <form action="index.php" method="post">
             <div class="login_ind_Img">
                <div class="imgCover">
                    <img src="" alt="">
                  </div>
                  <div class="title">
                      <h2>Login</h2>
                  </div>
             </div>  
              <p>Welcome to UPSA attendance System</p>

              <?php
    if(isset($_SESSION['error'])){
        $error = $_SESSION['error'];
        echo '<div class="errorMessage">
        <p>'.$error.'</p>
        </div>';
        unset($_SESSION['error']);
    }else{
        echo "";
    }
              ?>
              <!-- <div class="errorMessage">
                <p></p>
                </div> -->

         <div class="form-group">
            <input type="text" placeholder="index number or student email" name="email" class="form-control">
            
         </div>
         <div class="form-group">
            <input type="password" placeholder="Password" name="password" class="form-control">
          </div>

         <div class="form-group">
            <select name="usertype" id="usertype" class="form-control">  
                <option value="User">Class Rep</option>
                <option value="Admin">Admin</option>
            </select>
          </div>

          <!-- <a href="#">Forgot Password?</a> -->
          
              <div class="btnCover">
                  <button type="submit" name="login">Login</button>
              </div>
            </form>
        </div>
    </div>

    <footer>
        <p>UPSA online attendance system, All Rights Reserved &copy; 2022 </p>
    </footer>
</body>
</html>