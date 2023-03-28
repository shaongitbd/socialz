
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>

<?php

$username=$_SESSION["username"];
$conversion_sql= "SELECT conversion_id  FROM `conversion` WHERE friend_one ='$username' or friend_two='$username'";
$result = mysqli_query($conn, $conversion_sql);
$rows = [];
echo '<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Your Messages</h1>';
while($row = mysqli_fetch_array($result))
{
    $id=$row["conversion_id"];
    $sql = "SELECT to_friend,msg_time,msg_desc  FROM `message`  WHERE conversion_id=$id  ORDER BY msg_time DESC LIMIT 1";
    $res_one = mysqli_query($conn, $sql);
    $msg=mysqli_fetch_array($res_one);


    echo'


<div class= "mt-10 border max-w-md p-4 ">
<div class="mb-2 block  text-sm text-gray-600 font-semibold   ">
 <a href="/message.php?id='.$id.'">'.$msg["to_friend"].'</a></div>
<p class="text-sm text-gray-500">

'.$msg["msg_desc"].'



</p>

<div>


</div>';
}

?>

