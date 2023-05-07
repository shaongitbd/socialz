
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>



<?php 

if ($_SERVER["REQUEST_METHOD"]==="POST"){

$username = $_SESSION["username"];

$status_desc =  $_POST["status_desc"];

if (isset($_FILES["status_image"])  && $_FILES["status_image"]!=''){


$status_image = $_FILES["status_image"]["name"];

$file_ext = explode('.',$status_image); 

$allowed_types = ['image/jpeg', 'image/png', 'image/gif'];
$mime = getimagesize($_FILES["status_image"]["tmp_name"])['mime'];

if(in_array($mime,$allowed_types)){

$upload_dir=  "images/status/".$file_ext[0].".".$file_ext[1];
move_uploaded_file($_FILES["status_image"]["tmp_name"],$upload_dir);

$sql = "INSERT INTO `status` (`status_id`, `status_owner`, `status_content`, `status_date`,`status_image`) VALUES (NULL, '$username', '$status_desc' , current_timestamp(), '$upload_dir');";


}

}
else{

$sql = "INSERT INTO `status` (`status_id`, `status_owner`, `status_content`, `status_date`) VALUES (NULL, '$username', '$status_desc' , current_timestamp());";


}
mysqli_query($conn, $sql);






}
$username = $_SESSION["username"];

$own_status_sql = "SELECT (SELECT COUNT(*) from `status_comments` WHERE status_id = temp.status_id)'total_comments',(SELECT  `profile_pic` from `user_info` WHERE username='$username')'profile_pic',status_id,status_owner,status_content,status_image,(SELECT COUNT(*) from `status_likes` WHERE temp.status_id = status_id)'total_likes', TIMESTAMPDIFF(day,status_date, CURRENT_TIMESTAMP)'day',TIMESTAMPDIFF(hour, CURRENT_TIMESTAMP,status_date)'hour' FROM `status` AS temp  WHERE status_owner = '$username' ORDER BY status_date DESC LIMIT 1";
$result = mysqli_query($conn, $own_status_sql);

$own_status = mysqli_fetch_array($result);


$friends_status_sql = "SELECT (SELECT COUNT(*) from `status_comments` WHERE status_id = temp.status_id)'total_comments',(SELECT COUNT(*) from `status_likes` WHERE status_id = temp.status_id)'total_likes',(SELECT  `profile_pic` from `user_info` WHERE username=temp.status_owner)'profile_pic', status_id,status_owner,status_content,status_image, TIMESTAMPDIFF(day,status_date, CURRENT_TIMESTAMP)'day',TIMESTAMPDIFF(hour, CURRENT_TIMESTAMP,status_date)'hour' FROM `status` AS temp WHERE status_owner IN ((SELECT to_friend FROM `friends` WHERE from_friend='$username')) ORDER BY status_date DESC LIMIT 10;";
$result2 = mysqli_query($conn, $friends_status_sql);

echo'
<div class="container mx-auto px-6 mt-12  ">

<form action="home.php" method="POST"  enctype="multipart/form-data">
<textarea name="status_desc" type = "text" id="status_desc" rows="2" class="block w-1/3 border border-b px-4 py-3 rounded-md mb-2  border-gray-300 " placeholder="Write your thoughts here.... "/></textarea>
<input class="text-sm" type="file" name="status_image" >
<button type="submit" class="mt-2 ml-1 block px-8 py-2 rounded-md bg-gray-800 text-white text-md font-semibold">Post</button>

</form >
';
if(mysqli_num_rows($result) != 0){

echo '



<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Your last status </h1>


<div class= "mt-10  border-2  border-solid border-slate-200	max-w-md shadow-sm">
<div class="mb-2 mt-6  mx-4 block  text-sm text-gray-600 font-semibold   flex   justify-between ">
<div class="flex items-center">
 <img class="rounded-full" src="'.$own_status["profile_pic"].'" height=60 width=60/> <a class="mx-4 text-sm "  href="/profile.php?username='.$own_status["status_owner"].'">'.$own_status["status_owner"].'</a></div>
 
 <div class="date " >'.$own_status["day"].' days '.$own_status["hour"]. ' hour  </div>
 </div>


<p class=" mx-4 mt-4 text-sm text-gray-500">


'.$own_status["status_content"].' 


</p>
<br/>';
 if ($own_status["status_image"]!='') { echo '<img src="'.$own_status["status_image"].'"  width=600 height=400 /> '; } 

echo'<div class="flex mx-auto mt-4 mb-4 px-4 "><a href="/liked.php?id='.$own_status["status_id"].'&status" class="pr-4 text-xs text-gray-600 font-semibold">'.$own_status["total_likes"].' Likes</a><a href="/status.php?id='.$own_status["status_id"].'" class=" pr-4  text-xs text-gray-600 font-semibold ">'.$own_status["total_comments"].' comments </a><a class=" text-xs text-gray-600 font-semibold ">reply </a></div>





</div>';

}

echo'

<h1 class="mt-10 text-sm text-gray-600 font-semibold "> Your friends status  </h1>



';

while($row=mysqli_fetch_array($result2)){
 

echo '
<div class= "mt-10    rounded-md border  border-solid border-gray-300	max-w-lg	 shadow-sm">
            <div class="mx-4 mb-2 mt-6   block  text-sm text-gray-600 font-semibold   flex   justify-between ">
<div class="flex items-center">
<img class="rounded-full" src="'.$row["profile_pic"].'" height=60 width=60/> <a class="mx-4 text-sm "  href="/profile.php?username='.$row["status_owner"].'">'.$row["status_owner"].'</a></div>
 
 <div class="date " >'.$row["day"].' days '.$row["hour"]. ' hour  </div>
 </div>


 <p class=" mx-6 mt-4 text-sm text-gray-500">


'.$row["status_content"].' 


</p>
<br/>
';

if ($row["status_image"]!='') { echo '<img src="'.$row["status_image"].'"  width=600 height=400 /> '; } 

echo'
<div class="flex mx-auto mt-4 mb-4 px-4"><a href="/liked.php?id='.$row["status_id"].'&status" class="pr-4 text-xs text-gray-600 font-semibold">'.$row["total_likes"].' Likes</a><a href="/status.php?id='.$row["status_id"].'"  class=" pr-4  text-xs text-gray-600 font-semibold ">'.$row["total_comments"].' comments </a><a class=" text-xs text-gray-600 font-semibold ">reply </a></div>





</div>'


;}




 ;?>