<?php
include_once 'db.php';
session_start();

$username=$_SESSION["username"];
$friends_list = "SELECT from_friend,to_friend,added_date FROM `friends` WHERE from_friend='$username'";
$result = mysqli_query($conn, $friends_list);
while($friends = mysqli_fetch_array($result))
{
   ////username url 
   echo $friends["to_friend"];

   
}


?>
