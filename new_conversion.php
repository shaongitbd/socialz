
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>





  <?php
   $username = $_SESSION["username"];
   $id  = $_GET["username"];
   $sql = "SELECT first_name, last_name,profile_pic,email, address,date_of_birth,phone_no FROM `user_info` WHERE username =  '$id ' "; 
   echo'
<div class=" flex flex-row justify-content my-7 ">
<img class=" rounded-full" src="'.$friends["profile_pic"].'"   width=80 height=80/>
<div class="flex flex-col w-1/4 mx-4 ">
 <a class="text-sm text-gray-500 font-semibold  " href=" /profile.php?id='.$friends["to_friend"].'">'.$friends["first_name"].'  '.$friends["last_name"].'</a>
 <a  href="profile.php?remove='.$friends["to_friend"].'" class="mt-4 text-sm px-2 py-1.5 bg-red-800 text-semibold text-white rounded-md "> Remove</a>
 </div>
 </div>';
   



  
   
?>


<?php require_once "footer.php"; ?>
</html>