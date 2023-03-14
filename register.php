
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<body>
       <?php
       
    
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $username=$_POST["username"];
        $fname=$_POST["fname"];
        $lname=$_POST["lname"];
        $gender=$_POST["gender"];
        $email=$_POST["email"];
        $phone_no=$_POST["phone_no"];
        $date_of_birth=$_POST["dof"];
        $address=$_POST["address"];
        $password=$_POST["password"];


        $sql = "INSERT INTO user_info VALUES('$username','$fname','$lname','$gender','$email','$phone_no','$date_of_birth','$address','$password')";
        
    
        if (mysqli_query($conn, $sql)) {
          echo "Data stored successfully.";
              } 
        else {
          echo "Error: " . mysqli_error($sql);
             }
    
    
    
    
    
    }
       else {
   
       

echo 
'<center><form class="" action="" method="post">
  <label for="fname">First name :</label><br>
  <input type="text" id="fname" name="fname" required><br><br>


  <label for="lname">Last name :</label><br>
  <input type="text" id="lname" name="lname" required><br><br>

  <label for="Gender">Gender :</label><br>
  <input type="radio" id="gender" name="gender" value="Male" required>Male
  <input type="radio" id="gender" name="gender" value="female" required>Female <br><br>

 
  <label for="fname">Email :</label><br>
  <input type="email" id="email" name="email" required><br><br>

  <label for="lname">Phone No :</label><br>
  <input type="text" id="phone_no" name="phone_no" required><br><br>

  
  <label for="fname">Date of Birth :</label><br>
  <input type="date" id="dof" name="dof" required><br><br>

  <label for="lname">Address : </label><br>
  <input type="text" id="address" name="address" required><br><br>

  <label for="lname">Username : </label><br>
  <input type="text" id="username" name="username" required><br><br>

  <label for="lname">Password : </label><br>
  <input type="password" id="password" name="password" autocomplete="off" required><br><br>

  <input type="submit" name="register">


</form></center>';

       }


?>

</body>
<?php require_once "footer.php"; ?>
</html>