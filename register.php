<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regiter</title>
</head>
<body>
       <?php
    
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $fname=$_POST["fname"];
        $lname=$_POST["lname"];
        $email=$_POST["email"];
        $phone_no=$_POST["phone_no"];
        $date_of_birth=$_POST["dof"];
        $address=$_POST["address"];
        $username=$_POST["username"];
        $password=$_POST["password"];


        
    
    
    
    
    
    
    
    }
       else {
   
       

echo 
'<center><form action="register.php" method="post">
  <label for="fname">First name :</label><br>
  <input type="text" id="fname" name="fname" required><br><br>


  <label for="lname">Last name :</label><br>
  <input type="text" id="lname" name="lname" required><br><br>

  <form>
  <label for="fname">Email :</label><br>
  <input type="email" id="email" name="email" required><br><br>

  <label for="lname">Phone No :</label><br>
  <input type="text" id="phone_no" name="phone_no" required><br><br>

  <form>
  <label for="fname">Date of Birth :</label><br>
  <input type="date" id="dof" name="dof" required><br><br>

  <label for="lname">Address : </label><br>
  <input type="text" id="address" name="address" required><br><br>

  <label for="lname">Username : </label><br>
  <input type="text" id="username" name="username" required><br><br>

  <label for="lname">Password : </label><br>
  <input type="password" id="password" name="password" autocomplete="off" required><br><br>

  <input type="submit">

</form>
</form>
</form></center>';

       }


?>


</body>
</html>