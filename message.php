
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>
<div class="mx-6"><h1 class="mt-5 mb-6 text-sm text-gray-600 font-semibold "><div class="absolute left-1/2 -ml-0.5 w-0.5 h-screen bg-gray-300 shadow-sm"></div>


<?php

$username=$_SESSION["username"];
$conversion_id  = $_GET["id"];
$msg_sql= "SELECT first_name,last_name, profile_pic, to_friend, msg_desc,msg_time,from_friend  FROM `message`  LEFT JOIN `user_info`  ON   message.from_friend=user_info.username  WHERE conversion_id='$conversion_id' ";
$result = mysqli_query($conn, $msg_sql);

$res_arr = mysqli_fetch_array($result);




if($res_arr["to_friend"]==$username){

    $friend = $res_arr["from_friend"];

}
else{

    $friend = $res_arr["to_friend"];


}

$user_info_sql = "SELECT first_name,last_name,profile_pic,username from user_info where username='$friend'";
$user_info_exec = mysqli_query($conn, $user_info_sql);
$user_info = mysqli_fetch_array($user_info_exec);

echo'<div class="mb-20 rounded-md border border-gray-200 shadow-md flex bg-gray-100 w-1/2 px-2 py-2 items-center "><div class="content-center	">
<img class="rounded-full" src="'.$user_info["profile_pic"].'" height=40 width=40/>

 

 </div>
 <a class="text-lg mx-4  font-semibold  text-gray-700" href="profile.php?username='.$friend.'">'.$user_info["first_name"].' '.$user_info["last_name"].'</a></div>';


if(isset($_POST["msg_desc"])){
    $msg_desc = $_POST["msg_desc"];


    $insert_msg_sql = "insert into  `message`(from_friend, to_friend,msg_desc,msg_time,conversion_id) VALUES ('$username', '$friend','$msg_desc',current_timestamp(),$conversion_id)"; 
    $res_msg_insert = mysqli_query($conn, $insert_msg_sql);

    $msg_sql= "SELECT first_name,last_name, profile_pic, to_friend, msg_desc,msg_time,from_friend  FROM `message`  LEFT JOIN `user_info`  ON   message.from_friend=user_info.username  WHERE conversion_id='$conversion_id' ";
    $result = mysqli_query($conn, $msg_sql);

    

}

$result = mysqli_query($conn, $msg_sql);


while($row = mysqli_fetch_array($result))
{


    echo'


<div class= "flex mt-2  grow-0 max-w-md p-4 ">
<div>
<img class="rounded-full" src="'.$row["profile_pic"].'"   width=60 height=60/></div>
<div class="flex flex-col w-full"><p class="px-5 mb-2">'.$row["first_name"].' '.$row["last_name"].'</p><p class="border-2 bg-gray-200 px-4 py-2  mx-4 text-sm text-gray-500  rounded-lg w-full ">

'.$row["msg_desc"].'



</p>
</div>



</div>';


}


echo'<div class="max-w-md p-6"><form  action="message.php?id='.$conversion_id.'" method="POST" enctype="multipart/form-data">
<textarea name="msg_desc" type="text" id="status_desc" rows="4" class="block  border border-b px-4 py-3 rounded-md mb-2  w-full" placeholder="your messsage.... "></textarea>
<input class="text-sm font-semibold  py-2" type="file" name="msg_image">
<button class="mt-4 text-white block px-6 py-2.5  w-full  bg-gray-700 rounded-lg text-sm font-semibold"  type="submit" > Send </button>  
</form></div>

</div>';




?>

