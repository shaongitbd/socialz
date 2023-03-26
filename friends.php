<?php
include_once 'db.php';
session_start();

$username=$_SESSION["username"];
$friends_list = "SELECT from_friend FROM `friends` WHERE from_friend=(SELECT username FROM user_info WHERE username="$username")";
$result = mysqli_query($conn, $friends_list);
$rows = [];
while($row = mysqli_fetch_array($result))
{
    $id=$row["from_friend"];
    $sql = "SELECT to_friend,added_date  FROM `friends`  WHERE from_friend=$id ";
    $res= mysqli_query($conn, $sql);
    $msg=mysqli_fetch_array($res);

   
}
echo mysqli_num_rows($result);
echo $rows[0];
?>
