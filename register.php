
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>

<body>
<?php

if(isset($_SESSION["LoggedIn"])){


header("Location: home.php");

};?>
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
        if (isset($_FILES["profile_pic"])){


          $status_image = $_FILES["profile_pic"]["name"];
          
          $file_ext = explode('.',$status_image); 
          
          $allowed_types = ['image/jpeg', 'image/png', 'image/gif'];
          $mime = getimagesize($_FILES["profile_pic"]["tmp_name"])['mime'];
          
          if(in_array($mime,$allowed_types)){
          
          $upload_dir=  "images/profile/".$file_ext[0].".".$file_ext[1];
          move_uploaded_file($_FILES["profile_pic"]["tmp_name"],$upload_dir);

          $sql = "INSERT INTO user_info VALUES('$username','$fname','$lname','$gender','$email','$phone_no','$date_of_birth','$address','$password','$upload_dir')";
          
          }
          }

        else{
        $sql = "INSERT INTO user_info VALUES('$username','$fname','$lname','$gender','$email','$phone_no','$date_of_birth','$address','$password')";
        }
        
       try{
        if (mysqli_query($conn, $sql)) {
         
           header("Location: login.php");
            
         die();
         }

              } 
        catch (Exception $e) {
           $_SESSION['message'] = 'Registration failed. Please check your infomation. ';
            header("Location: register.php");

             }
    
    
    
    
    
    }
       else {
   
       

echo 
'<form action="register.php" method="post" enctype="multipart/form-data"><div class="flex justify-center items-center bg-gray-50">
  
  <div class="bg-white grid grid-cols-4 gap-4  px-12 py-8 rounded-md">
   
    <h1 class="text-gray-500 text-xl col-span-6 font-semibold"> Register </h1>
    <?php echo $_SESSION["message"]?>
    <div class="col-span-2"  >
    <div class="bg-white justify-center border-gray-300 px-2 py-1.5 border border-gray-300 rounded-md">
    <input class="block text-gray-900  text-sm placeholder-gray-300" type="text" id="fname" name="fname" required placeholder="First Name"/>
   

  </div>
</div>

<div class="col-span-2">
    <div class=" bg-white justify-center border-gray-300 px-2 py-1.5 border border-gray-300  rounded-md">
    <input class="block text-gray-900 text-sm placeholder-gray-300" type="text" id="lname" name="lname" required placeholder="Last  Name"/>
   

  </div>


  
</div>


<div class="col-span-4">
  <div class="bg-white justify-center border-gray-300 px-2 py-1.5 border border-gray-300 rounded-md">
  <input class="block text-gray-900 text-sm placeholder-gray-300" type="text" id="email" name="email" required placeholder="Email"/>
 

</div>
</div>


<div class="col-span-4">
  <div class="bg-white justify-center border-gray-300 px-2 py-1.5  border border-gray-300 rounded-md">
  <input class="block text-gray-900 text-sm placeholder-gray-300" type="text" id="phone_no" name="phone_no" required  placeholder="Phone number"/>
 

</div>
</div>


<div class="col-span-4">
  <div class="bg-white justify-center border-gray-300 px-2 py-1.5  border border-gray-300 rounded-md">
  <input class="block text-gray-900 text-sm placeholder-gray-300" type="date" id="dof" name="dof" required placeholder="Date of bith"/>
 

</div>
</div>

<div class="col-span-4">
  <div class="bg-white justify-center border-gray-300 px-2 py-1.5  border border-gray-300 rounded-md">
  <input class="block text-gray-900 text-sm placeholder-gray-300" type="text" id="address" name="address" required placeholder="Address"/>
 

</div>
</div>

<div class="col-span-4">
    <div class=" bg-white justify-center border-gray-300 px-2 py-1.5  border border-gray-300  rounded-md">
    <input class="block text-gray-900 text-sm placeholder-gray-300" type="text" id="gender" name="gender" required placeholder="Gender"/>
   

  </div>


</div>

<div class="col-span-4">
  <div class="bg-white justify-center border-gray-300 px-2 py-1.5  border border-gray-300 rounded-md">
  <input class="block text-gray-900 text-sm placeholder-gray-300" type="text" id="username" name="username" required placeholder="Username"/>
 

</div>
</div>

<div class="col-span-4">
  <div class="bg-white justify-center border-gray-300 px-2 py-1.5  border border-gray-300 rounded-md">
  <input class="block text-gray-900 text-sm placeholder-gray-300" type="password" id="password" name="password" autocomplete="off" required placeholder="Password"/>


 

</div>
</div>
<div class="col-span-4">
<input type="file" name="profile_pic">
<button class="text-white block py-1 w-full  bg-red-600 rounded-lg text-sm font-semibold"  type="submit" > Submit </button>  
</div>

</div>
</form>';

       }


?>

</body>
<?php require_once "footer.php"; ?>
</html>