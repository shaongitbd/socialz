
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php session_start(); ?>

?>     


  <?php
   $username = $_SESSION["username"];
   $id  = $_GET["username"];
   $sql = "SELECT first_name, last_name,profile_pic,email, address,date_of_birth,phone_no FROM `user_info` WHERE username =  '$id ' ";
   $profile_q = mysqli_query($conn, $sql);
   $profile_result = mysqli_fetch_array($profile_q);
   

    
   echo'<div  class="mt-14 flex space-x-4">

     <div class="img"><img class="rounded-full" src="'.$profile_result["profile_pic"].'" height=70 width=70/></div>
     <div class="flex flex-col">
     <h2 class="font-semibold text-xl text-gray-700">Rabbi Hasan</h2>
     <p class="font-semibold text-md text-gray-500">Dhaka, Bangladesh</p>
     </div>';

  $friend_check = "SELECT * FROM `friends` where from_friend='$username' and to_friend = '$id' ";
  $friend_check_res = mysqli_query($conn, $friend_check);

  if(mysqli_num_rows($friend_check_res) != 0){

    echo '<div><a href="friends.php?remove='.$id.'" class="mt-2 mx-2  text-sm px-3 py-2 bg-red-800 text-semibold text-white rounded-md">Remove</p></div>';

    }
    else{

   '<div><a href="friends.php?add='.$id.'" class="mt-2 mx-2  text-sm px-3 py-2 bg-red-800 text-semibold text-white rounded-md">Add Friend</a></div>';

    }
echo'
</div>

<div class="mt-10 flex flex-col space-y-2">
<div class=" text-md text-gray-500"><i class="fa fa-regular fa-phone"></i> '.$profile_result["phone_no"].'</div>
<div class=" text-md text-gray-500"> <i class="fa fa-light fa-envelope"></i> '.$profile_result["email"].'</div>

</div>
<div class="mt-10 flex space-x-3">';

$friends_list = "SELECT first_name, last_name,profile_pic,username ,to_friend,added_date FROM `friends` INNER JOIN `user_info` ON friends.to_friend=user_info.username WHERE from_friend='$id' LIMIT 6";
$friends_list_res = mysqli_query($conn, $friends_list);


echo'<div class=" text-lg text-gray-500 ">100 Friends</div>
<div  class="text-lg text-gray-500 ">15k Following</div>
<div class="text-lg text-gray-500 "> 15k Following</div>

</div>

<p  class="mt-14 text-md font-semibold text-gray-500">Friends </p>
<div class="mt-2 flex space-x-3"> 
';
while($friends = mysqli_fetch_array($friends_list_res))
{
  echo'




<div><a href="profile.php?username='.$friends["username"].'"  ><img class="rounded-full " src="'.$friends["profile_pic"].'" height=70 width=70/> <p class="font-medium text-gray-500 text-sm	">'.$friends["first_name"].' '.$friends["last_name"].'</p></a></div>

';

}


echo'
</div>


<p  class="mt-14 text-md font-semibold text-gray-500">Posts</p>

<div class="mt-2 flex space-x-1 "> ';




while($status = mysqli_fetch_array($status_list))
{

echo'
<img  src="images/profile/rabbi.jpg" height=100 width=100/>
';


}
echo'



</div>

</div>';

 

?>


<?php require_once "footer.php"; ?>
</html>