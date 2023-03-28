<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>

<?php



$username=$_SESSION["username"];
$friends_list = "SELECT from_friend,to_friend,added_date FROM `friends` WHERE from_friend='$username'";
$result = mysqli_query($conn, $friends_list);
echo '<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Friends List </h1>';
while($friends = mysqli_fetch_array($result))
{
   ////username url 

echo'


<div class= "mt-10 border max-w-md p-4 ">
<div class="mb-2 block  text-sm text-gray-600 font-semibold   ">
 <a href="/profile.php?id='.$friends["to_friend"].'">'.$friends["to_friend"].'</a>
 
 
 </div>
</div>



   ';
}


?>
