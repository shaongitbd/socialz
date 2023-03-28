
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>

<?php

$username=$_SESSION["username"];
$conversion_id  = $_GET["id"];
$msg_sql= "SELECT * FROM `message` WHERE conversion_id ='$conversion_id' ";
$result = mysqli_query($conn, $msg_sql);
$rows = [];
while($row = mysqli_fetch_array($result))
{


    echo'


<div class= "mt-10 border max-w-md p-4 ">
<div class="mb-2 block  text-sm text-gray-600 font-semibold   ">
 <a href="/profile.php?id='.$row["from_friend"].'">'.$row["from_friend"].'</a></div>
<p class="text-sm text-gray-500">

'.$row["msg_desc"].'



</p>

<div>


</div>';
}

?>

