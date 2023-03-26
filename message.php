
<?php
include_once 'db.php';
session_start();

$username=$_SESSION["username"];
$conversion_sql= "SELECT conversion_id  FROM `conversion` WHERE friend_one ='$username' or friend_two='$username'";
$result = mysqli_query($conn, $conversion_sql);
$rows = [];
while($row = mysqli_fetch_array($result))
{
    $id=$row["conversion_id"];
    $sql = "SELECT to_friend,msg_time,msg_desc  FROM `message`  WHERE conversion_id=$id  ORDER BY msg_time LIMIT 1";
    $res_one = mysqli_query($conn, $sql);
    $msg=mysqli_fetch_array($res_one);

    echo $msg["to_friend"]. " ";
    echo $msg["msg_time"];
    echo $msg["msg_desc"];
}
//echo mysqli_num_rows($result);
//echo $rows[0];
?>

