
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>





  <?php
   $username = $_SESSION["username"];
   $id  = $_GET["username"];
   $sql = "SELECT first_name, last_name,profile_pic,email, address,date_of_birth,phone_no FROM `user_info` WHERE username =  '$id ' ";
   $profile_q = mysqli_query($conn, $sql);
   $profile_result = mysqli_fetch_array($profile_q);

   
   $status = "SELECT (SELECT COUNT(*) from `status_comments` WHERE status_id = status_id)'total_comments',  (SELECT COUNT(*) from `status` where status_owner='$username')'total_posts', (SELECT  `profile_pic` from `user_info` WHERE username='$id')'profile_pic', status_id,status_owner,status_content,status_image, TIMESTAMPDIFF(day,status_date, CURRENT_TIMESTAMP)'day',TIMESTAMPDIFF(hour, CURRENT_TIMESTAMP,status_date)'hour' FROM `status` WHERE status_owner = '$id' and status_image !=''  ORDER BY status_date DESC LIMIT 9";
   $status_q =mysqli_query($conn, $status);
   $status_res = mysqli_fetch_array($status_q);

   

    
   echo'
   <div class="mx-6  max-w-lg ">
   <div class="bg-blue-400  "><img  " src="https://arielle.com.au/wp-content/uploads/2016/04/together-we-travel-dark.jpg" width=800 height=500 /></div>
   <div class="flex relative   pt-20  -mt-40 z-1 justify-center "><img class="rounded-full" src="'.$profile_result["profile_pic"].'" height=110 width=110/>
   
   
   </div>
   
   <div  class=" flex space-x-4  justify-center ">
   
   
   
     
     <div class="flex flex-col">
     <h2 class="font-semibold text-3xl text-gray-700">'.$profile_result["first_name"].' '.$profile_result["last_name"].'</h2>
     
     <p class="mt-1 text-md text-gray-500 font-semibold"><i class="mx-2 fa fa-light fa-map-marker"></i>'.$profile_result["address"].'</p>
     
     </div></div>
     <div class="mt-4 flex space-x-2  justify-center ">';
  if($id!=$username){

  $friend_check = "SELECT * FROM `friends` where from_friend='$username' and to_friend = '$id' ";
  $friend_check_res = mysqli_query($conn, $friend_check);
 

  if(mysqli_num_rows($friend_check_res) != 0){

    echo '<div><a href="friends.php?remove='.$id.'" class="mt-2  text-sm px-6 py-2.5 bg-red-800  font-semibold text-white rounded-md">Remove</a></div>
    <div><a href="new_conversion.php?username='.$id.'" class="mt-2  text-sm px-6 py-2.5 bg-gray-700 font-semibold text-white rounded-md">Message</a></div>';

    }
    else{

  echo '<div class="mt-2"><a href="friends.php?add='.$id.'" class="mt-2   text-sm px-3 py-2 bg-gray-700 text-semibold text-white rounded-md">Add Friend</a></div>';

    }

  }

  else{

    echo '<div class="mt-2"><a href="edit_profile.php" class="mt-2   text-sm px-3 py-2 bg-gray-700 text-semibold text-white rounded-md">Edit Profile</a></div>';

  }
echo'
</div>

<div class="mt-10 flex flex space-x-12 ">
<div class=" text-sm text-gray-400 font-semibold"><i class="fa fa-regular fa-phone"></i> '.$profile_result["phone_no"].'</div>
     <div class=" text-sm text-gray-400  font-semibold"> <i class="fa fa-light fa-envelope"></i> '.$profile_result["email"].'</div>
     <div class=" text-sm text-gray-400  font-semibold"> <i class="fa fa-light fa-map-marker"></i> '.$profile_result["address"].'</div>

</div>
<div class="mt-10 flex space-x-3 justify-center">';

$friends_list = "SELECT first_name, last_name,profile_pic,username ,to_friend,added_date FROM `friends` INNER JOIN `user_info` ON friends.to_friend=user_info.username WHERE from_friend='$id' LIMIT 6";
$friends_list_res = mysqli_query($conn, $friends_list);
$total_friends =  mysqli_num_rows($friends_list_res);

echo'<div class="flex space-x-4  "> <div class="flex flex-col justify-center"><div class="text-xl text-gray-500 font-bold text-center ">'.$total_friends.'</div><div class=" text-md text-gray-600 font-normal "> Friends</div></div>
<div class="flex flex-col"><div class="text-xl text-gray-500 text-center font-bold">'.$total_friends.'</div><div class=" text-md text-gray-600 font-normal "> Following</div></div>';

if (mysqli_num_rows($status_q) != 0){
echo'
<div class="flex flex-col"><div class="text-xl text-gray-500 text-center font-bold">'.$status_res["total_posts"].'</div><div class=" text-md text-gray-600 font-normal "> Total Post</div></div>
</div></div>

<div class="mt-14 mb-3 flex justify-between"><div class=""><p  class="text-md font-semibold text-gray-700">Friends </p></div><div class=""><a class="text-sm font-semibold text-gray-700" href="friends.php">view all </a></div></div>
<div class="mt-2 flex space-x-3"> 
';}

else{
  echo'
  <div class="flex flex-col"><div class="text-xl text-gray-500 text-center font-bold">0</div><div class=" text-md text-gray-600 font-normal "> Total Post</div></div>
  </div></div>
  
  <div class="mt-14 mb-3 flex justify-between"><div class=""><p  class="text-md font-semibold text-gray-700">Friends </p></div><div class=""><a class="text-sm font-semibold text-gray-700" href="friends.php">view all </a></div></div>
  <div class="mt-2 flex space-x-3"> 
  ';


}


while($friends = mysqli_fetch_array($friends_list_res))
{
  echo'




<div><a href="profile.php?username='.$friends["username"].'"  ><img class="rounded-full " src="'.$friends["profile_pic"].'" height=70 width=70/> <p class="mt-2 font-medium text-gray-600 text-sm	">'.$friends["first_name"].' '.$friends["last_name"].'</p></a></div>

';

}


echo'
</div>


<p  class="mt-14 mb-4 text-md font-semibold text-gray-800">Posts</p>

<div class="mt-2 flex space-x-1 "> ';


$status_q =mysqli_query($conn, $status);

while($status = mysqli_fetch_array($status_q))
{

echo'
<a href="status.php?id='.$status["status_id"].'"><img src="'.$status["status_image"].'" height=150 width=150/></a>';



}


echo'



</div>

</div></div>';

 

?>


<?php require_once "footer.php"; ?>
</html>