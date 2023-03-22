<?php
include_once 'db.php';
session_start();

$username=$_SESSION["username"];
$conversion_sql= "SELECT conversion_id  FROM `conversion` WHERE friend_one ='$username' or friend_two='$username'";
$result = mysqli_query($conn, $conversion_sql);
$rows = [];
while($row = mysqli_fetch_array($result))
{
    $rows[] = $row;
}
echo mysqli_num_rows($result);
echo $rows[0];
?>