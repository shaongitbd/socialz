<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>

<?php



$username=$_SESSION["username"];
$friends_list = "SELECT first_name, last_name,profile_pic,username ,to_friend,added_date FROM `friends` INNER JOIN `user_info` ON friends.to_friend=user_info.username WHERE from_friend='$username'";
$result = mysqli_query($conn, $friends_list);




if (isset($_GET["add"])){

   $friend = $_GET['add'];  
  
   $step_one = "insert into `pending_request`(from_friend, to_friend,request_by) VALUES ('$username', '$friend','$username')";
  $step_one_q = mysqli_query($conn, $step_one);

  $friends_list = "SELECT first_name, last_name,profile_pic,username ,to_friend,added_date FROM `friends` INNER JOIN `user_info` ON friends.to_friend=user_info.username WHERE from_friend='$username'";
  $result = mysqli_query($conn, $friends_list);
  
  
  }


if (isset($_GET["remove"])){

 $friend = $_GET['remove'];  


$remove_sql = "DELETE FROM `friends` WHERE from_friend = '$friend' OR  to_friend = '$friend'";
$remove_res = mysqli_query($conn, $remove_sql);
$friends_list = "SELECT first_name, last_name,profile_pic,username ,to_friend,added_date FROM `friends` INNER JOIN `user_info` ON friends.to_friend=user_info.username WHERE from_friend='$username'";
$result = mysqli_query($conn, $friends_list);


}


if (isset($_GET["accept"])){

   $friend = $_GET['accept'];  
  
  $remove_sql =   "UPDATE `pending_request` SET `status` = 'accept' WHERE `pending_request`.`from_friend` = '$friend' AND `pending_request`.`to_friend` = '$username'";

  $remove_res = mysqli_query($conn, $remove_sql);
  $remove_pending = "DELETE  FROM `pending_request` WHERE from_friend = '$friend' and to_friend = '$username'";
  $remove_pending_exe = mysqli_query($conn, $remove_pending);

  $friends_list = "SELECT first_name, last_name,profile_pic,username ,to_friend,added_date FROM `friends` INNER JOIN `user_info` ON friends.to_friend=user_info.username WHERE from_friend='$username'";
  $result = mysqli_query($conn, $friends_list);
  
  
  }


$pending_request_sql = "SELECT first_name, last_name,profile_pic,username ,to_friend,from_friend FROM `pending_request` INNER JOIN `user_info` ON pending_request.from_friend=user_info.username   WHERE to_friend = '$username' and request_by != '$username'  ";
$pending_request_exe = mysqli_query($conn, $pending_request_sql);




echo '<h1 class="mt-10 text-sm text-gray-600 font-semibold ">Pending Request </h1><div class="max-w-sm">';
while($pen_req = mysqli_fetch_array($pending_request_exe))
{
   ////username url 

echo'


<div class=" flex flex-row justify-content my-7 ">
<img class=" rounded-full" src="'.$pen_req["profile_pic"].'"   width=80 height=80/>
<div class="flex flex-col w-1/4 mx-4 ">
 <a class="text-sm text-gray-500 font-semibold  " href=" /profile.php?username='.$pen_req["from_friend"].'">'.$pen_req["first_name"].'  '.$pen_req["last_name"].'</a>
 <a  href="friends.php?accept='.$pen_req["from_friend"].'" class="mt-4 text-sm px-2 py-1.5 bg-red-800 text-semibold text-white rounded-md "> Accept </a>
 </div>
 </div>




   ';
}

echo'</div>';




echo '<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Friends List </h1><div class="max-w-sm">';
while($friends = mysqli_fetch_array($result))
{
   ////username url 

echo'


<div class=" flex flex-row justify-content my-7 ">
<img class=" rounded-full" src="'.$friends["profile_pic"].'"   width=80 height=80/>
<div class="flex flex-col w-1/4 mx-4 ">
 <a class="text-sm text-gray-500 font-semibold  " href=" /profile.php?username='.$friends["to_friend"].'">'.$friends["first_name"].'  '.$friends["last_name"].'</a>
 <a  href="friends.php?remove='.$friends["to_friend"].'" class="mt-4 text-sm px-2 py-1.5 bg-red-800 text-semibold text-white rounded-md "> Remove</a>
 </div>
 </div>




   ';
}

echo'</div>';

?>
