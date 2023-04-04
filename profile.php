
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php session_start(); ?>




  <?php
   $username = $_SESSION["username"];
   $id  = $_GET["username"];
   $sql = "SELECT first_name, last_name,profile_pic,email, address,date_of_birth,phone_no FROM `user_info` WHERE username =  '$id ' ";
   $profile_q = mysqli_query($conn, $sql);
   $profile_result = mysqli_fetch_array($profile_q);
   

    
   echo'<div  class="mt-14 flex space-x-4">

     <div class="img"><img class="rounded-full" src="'.$profile_result["profile_pic"].'" height=70 width=70/></div>
     <div class="flex flex-col">
     <h2 class="font-semibold text-xl text-gray-700">'.$profile_result["first_name"].' '.$profile_result["last_name"].'</h2>
     <p class="font-semibold text-md text-gray-500">'.$profile_result["address"].'</p>
     </div>';

  $friend_check = "SELECT * FROM `friends` where from_friend='$username' and to_friend = '$id' ";
  $friend_check_res = mysqli_query($conn, $friend_check);
 

  if(mysqli_num_rows($friend_check_res) != 0){

    echo '<div><a href="friends.php?remove='.$id.'" class="mt-2 mx-2  text-sm px-3 py-2 bg-red-800 text-semibold text-white rounded-md">Remove</a></div>';

    }
    else{

  echo '<div><a href="friends.php?add='.$id.'" class="mt-2 mx-2  text-sm px-3 py-2 bg-red-800 text-semibold text-white rounded-md">Add Friend</a></div>';

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
$total_friends =  mysqli_num_rows($friends_list_res);

echo'<div class=" text-lg text-gray-500 ">'.$total_friends.' Friends</div>
<div  class="text-lg text-gray-500 ">.. Following</div>
<div class="text-lg text-gray-500 "> .. Following</div>

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



$status = "SELECT (SELECT COUNT(*) from `status_comments` WHERE status_id = status_id)'total_comments',(SELECT COUNT(*) from `likes` WHERE status_id = status_id)'total_likes',(SELECT  `profile_pic` from `user_info` WHERE username='$id')'profile_pic', status_id,status_owner,status_content,status_image, TIMESTAMPDIFF(day,status_date, CURRENT_TIMESTAMP)'day',TIMESTAMPDIFF(hour, CURRENT_TIMESTAMP,status_date)'hour' FROM `status` WHERE status_owner = '$id' and status_image !=''  ORDER BY status_date DESC LIMIT 9";
$status_q =mysqli_query($conn, $status);

while($status = mysqli_fetch_array($status_q))
{

echo'
<a href="status.php?id='.$status["status_id"].'"><img src="'.$status["status_image"].'" height=100 width=100/></a>;
';


}
echo'



</div>

</div>';

 

?>


<?php require_once "footer.php"; ?>
</html>