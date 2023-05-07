
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>

<body>
<div class="mx-6"> 
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

          $sql = "UPDATE user_info SET username='$username',first_name='$fname',last_name='$lname',gender = '$gender',email='$email',phone_no = '$phone_no',date_of_birth  = '$date_of_birth', address='$address',password= '$password', profile_pic = '$upload_dir'";
          
          }
          }

        else{
        $sql = "UPDATE user_info SET username='$username',first_name='$fname',last_name='$lname',gender = '$gender',email='$email',phone_no = '$phone_no',date_of_birth  = '$date_of_birth', address='$address',password= '$password', profile_pic = ''";
        }
        
       try{
        if (mysqli_query($conn, $sql)) {
         
           header("Location: edit_profile.php");
            
         die();
         }

              } 
        catch (Exception $e) {
           $_SESSION['message'] = 'update failed. Please check your infomation. ';
            header("Location: edit_profile.php");

             }
    
    
    
    
    
    }
       else {
   
       
        $username = $_SESSION["username"];
        $sql = "SELECT first_name, last_name,profile_pic,email,password,username, address,gender,date_of_birth,phone_no FROM `user_info` WHERE username =  '$username ' ";
        $profile_q = mysqli_query($conn, $sql);
        $profile_result = mysqli_fetch_array($profile_q);

echo 
'<form action="edit_profile.php" method="post" enctype="multipart/form-data"><div class="flex  items-center bg-gray-50">
  
  <div class="bg-white grid grid-cols-4 gap-4 py-8 rounded-md">
   
    <h1 class="text-gray-500 text-xl col-span-6 font-semibold"> Upadate your  profile   </h1>
    <?php echo $_SESSION["message"]?>
    <div class="col-span-2"  >
    <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="text" id="fname" name="fname" required placeholder="First Name" value="'.$profile_result["first_name"].'"/>
   

 
</div>

<div class="col-span-2">
    <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="text" id="lname" name="lname" required placeholder="Last  Name" value="'.$profile_result["last_name"].'"/>
   




  
</div>


<div class="col-span-4">

  <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="text" id="email" name="email" required placeholder="Email" value="'.$profile_result["email"].'"/>
 


</div>


<div class="col-span-4">
 
  <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="text" id="phone_no" name="phone_no" required  placeholder="Phone number" value="'.$profile_result["phone_no"].'"/>
 


</div>


<div class="col-span-4">

  <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="date" id="dof" name="dof" required placeholder="Date of bith" value="'.$profile_result["date_of_birth"].'"/>
 


</div>

<div class="col-span-4">

  <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="text" id="address" name="address" required placeholder="Address" value="'.$profile_result["address"].'"/>
 


</div>

<div class="col-span-4">

    <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="text" id="gender" name="gender" required placeholder="Gender" value="'.$profile_result["gender"].'"/>
   




</div>

<div class="col-span-4">

  <input class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="text" id="username" name="username" required placeholder="Username" value="'.$profile_result["username"].'"/>
 


</div>

<div class="col-span-4">
  
  <input class="bbg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-1" type="password" id="password" name="password" autocomplete="off" required placeholder="Password" value="'.$profile_result["password"].'"/>


 


</div>
<div class="col-span-4">
<input class="text-sm" type="file" name="profile_pic">
<button class="mt-4 text-white block px-6 py-2.5  w-full  bg-gray-700 rounded-lg text-sm font-semibold"  type="submit" > Update </button>  
</div>

</div>
</form>

</div>';

       }


?>

</body>
<?php require_once "footer.php"; ?>
</html>