
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>



<?php 

if ($_SERVER["REQUEST_METHOD"]==="POST"){

$username = $_SESSION["username"];

$status_desc =  $_POST["status_desc"];

$sql = "INSERT INTO `status` (`status_id`, `status_owner`, `status_content`, `status_date`) VALUES (NULL, '$username', '$status_desc' , current_timestamp());";

mysqli_query($conn, $sql);






}
$username = $_SESSION["username"];

$own_status_sql = "SELECT * FROM `status` WHERE status_owner = '$username' ORDER BY status_date DESC LIMIT 1";
$result = mysqli_query($conn, $own_status_sql);

$own_status = mysqli_fetch_array($result);


$friends_status_sql = "SELECT * FROM `status` WHERE status_owner IN ((SELECT to_friend FROM `friends` WHERE from_friend='$username')) ORDER BY status_date DESC LIMIT 10;";
$result2 = mysqli_query($conn, $friends_status_sql);


echo '<div class="container flex items-center  border-b mx-auto space-x-12 "><div class="flex px-2 py-4"><img src="https://www.91-cdn.com/hub/wp-content/uploads/2019/02/Instagram-Featured.jpg" width="120px" height="100px" /></div> <div class="flex flex-row p-4 space-x-6"> <a class="block text-gray-700 py-2 text-sm font-semibold "> Home </a> <a class="block text-gray-700 py-2  text-sm font-semibold "> Profile</a> <a class="block text-gray-700  py-2 text-sm font-semibold" href=""> Message </a> 

<a class="block text-gray-700  py-2 text-sm font-semibold" href="friends.php"> Friends</a>

<a class="block text-gray-700  py-2 text-sm  font-semibold" href="logout.php"> Logout</a>





</div>

</div>

<div class="container mx-auto px-6 mt-12  ">

<form action="home.php" method="POST">
<textarea name="status_desc" type = "text" id="status_desc" rows="2" class="block w-1/3 border border-b px-4 py-3 rounded-md mb-2 " placeholder="Write your thoughts here.... "/></textarea>
<button type="submit" class="ml-1 block px-4 py-1 rounded-md bg-red-600 text-white text-sm font-semibold">Post</button>

</form >

<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Your last status </h1>


<div class= "mt-10 border max-w-md p-4 ">
<div class="mb-2 block  text-sm text-gray-600 font-semibold   ">
 <a href="/profile.php?username='.$own_status["status_owner"].'">'.$own_status["status_owner"].'</a></div>
<p class="text-sm text-gray-500">

'.$own_status["status_content"].'
<div class="flex mx-auto mt-4 "><a href=" " class="pr-4 text-xs text-gray-600 font-semibold">100 Likes</a><a class=" pr-4  text-xs text-gray-600 font-semibold ">41 comments </a><a class=" text-xs text-gray-600 font-semibold ">reply </a></div>


</p>

<div>


</div>

<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Your friends status  </h1>



';

while($row=mysqli_fetch_array($result2)){
 

echo '
<div class= "mt-10 border max-w-md p-4 ">

<div class="mb-2 block  text-sm text-gray-600 font-semibold   ">
 <a href="/profile.php?username='.$row["status_owner"].'">'.$row["status_owner"].'</a></div>
<p class="text-sm text-gray-500">

'.$row["status_content"].'
<div class="flex mx-auto mt-4 "><a href=" " class="pr-4 text-xs text-gray-600 font-semibold">100 Likes</a><a class=" pr-4  text-xs text-gray-600 font-semibold ">41 comments </a><a class=" text-xs text-gray-600 font-semibold ">reply </a></div>


</p>

</div>'


;}




 ;?>