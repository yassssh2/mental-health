<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <title>Signup</title>
    </head>
  <body>
<nav class="nav">
<div class="list">
   <ul>
        <li><a href="loginpage.php">Login</a></li>
   </ul>
</div>
</nav>
<?php 
  $servername="localhost";
  $username="root";
  $password="";
  $database="mentalhealth";
  $conn = mysqli_connect("$servername","$username","$password","$database");
 // echo" connect";
   $showAlert=false;
  if($_SERVER["REQUEST_METHOD"]=="POST"){
        $username=$_POST["email"];
        $password=$_POST["password"];
        $sql="INSERT INTO `loginp`(`Name`,`Password`) VALUES ('$username', '$password');";
        $result=mysqli_query($conn,$sql);
        if($result){
             $showAlert=true;
          }   
      }
 ?>
 
<?php 
 if($showAlert){
        echo'<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Login Successfully!</strong> thanks for login.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
 }
?>
 <section class="fromlog">
    <div class="divvv">
<div class="login">
       <center> <h1>Sign Up</h1></center>
    </div>
<form action="signuppage.php" method="post">
  <div class="in ">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
  </div>
  <div class="mb-3 in">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword1">
  </div>
  <div class="inn">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label inn" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>