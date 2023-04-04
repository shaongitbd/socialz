<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>

<?php



$username=$_SESSION["username"];
$friends_list = "SELECT first_name, last_name,profile_pic,username ,to_friend,added_date FROM `friends` INNER JOIN `user_info` ON friends.to_friend=user_info.username WHERE from_friend='$username'";
$result = mysqli_query($conn, $friends_list);




if (isset($_GET["add"])){

   $friend = $_GET['add'];  
  
  
  $step_one = "insert into `friends`(from_friend, to_friend,added_date) VALUES ('$username', '$friend',current_timestamp())";
  $step_one_q = mysqli_query($conn, $step_one);

  $step_two = "insert into `friends`(from_friend, to_friend,added_date) VALUES ('$friend','$username', current_timestamp())";
  $step_two_q = mysqli_query($conn, $step_two);
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



echo '<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Friends List </h1><div class="max-w-sm">';
while($friends = mysqli_fetch_array($result))
{
   ////username url 

echo'


<div class=" flex flex-row justify-content my-7 ">
<img class=" rounded-full" src="'.$friends["profile_pic"].'"   width=80 height=80/>
<div class="flex flex-col w-1/4 mx-4 ">
 <a class="text-sm text-gray-500 font-semibold  " href=" /profile.php?id='.$friends["to_friend"].'">'.$friends["first_name"].'  '.$friends["last_name"].'</a>
 <a  href="friends.php?remove='.$friends["to_friend"].'" class="mt-4 text-sm px-2 py-1.5 bg-red-800 text-semibold text-white rounded-md "> Remove</a>
 </div>
 </div>




   ';
}

echo'</div>';

?>
