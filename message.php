
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>

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
<p class="border-2 bg-gray-200 px-4 py-2  mx-4 text-sm text-gray-500  rounded-lg w-full ">

'.$row["msg_desc"].'



</p>




</div>';


}


echo'<div class="max-w-md p-6"><form  action="message.php?id='.$conversion_id.'" method="POST" enctype="multipart/form-data">
<textarea name="msg_desc" type="text" id="status_desc" rows="4" class="block  border border-b px-4 py-3 rounded-md mb-2  w-full" placeholder="your messsage.... "></textarea>
<input class="text-sm font-semibold  py-2" type="file" name="msg_image">
<button type="submit" class="ml-1 block px-6 py-2 rounded-md bg-red-700 text-white text-sm font-semibold w-md">Send</button>

</form></div>';




?>

