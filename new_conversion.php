
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>







  <?php
   $username = $_SESSION["username"];
   $id  = $_GET["username"];
   echo $id;
   
    if(isset($_POST["msg_desc"])){
    $msg_desc = $_POST["msg_desc"];
    $new_conversion_sql = "insert into `conversion`(friend_one,friend_two) VALUES('$username','$id')";
    $new_conversion_q = mysqli_query($conn,$new_conversion_sql) ;
    $conversion_sql = "SELECT conversion_id from `conversion` where (friend_one='$username' and friend_two = '$id') or (friend_one='$id' and friend_two = '$username') ";
    $conversion_sql_q = mysqli_query($conn,$conversion_sql);
    $conversion_sql_res =mysqli_fetch_array($conversion_sql_q);
    $conversion_id=$conversion_sql_res["conversion_id"];


    $insert_msg_sql = "insert into  `message`(from_friend, to_friend,msg_desc,msg_time,conversion_id) VALUES ('$username', '$id','$msg_desc',current_timestamp(),$conversion_id)"; 
    $res_msg_insert = mysqli_query($conn, $insert_msg_sql);
    header("Location: message.php?id=$conversion_id");



}
   $exiting_conversion_check = "SELECT conversion_id from `conversion` where (friend_one='$username' and friend_two = '$id') or (friend_one='$id' and friend_two = '$username') ";
   $exiting_conversion_check_q =mysqli_query($conn,$exiting_conversion_check);
   
   if(mysqli_num_rows($exiting_conversion_check_q)!=0){
      $conversion_sql_res =mysqli_fetch_array($exiting_conversion_check_q);
      $conversion_id=$conversion_sql_res["conversion_id"];
      header("Location: message.php?id=$conversion_id");
       

   }

  

   $sql = "SELECT first_name, last_name,profile_pic,email, address,date_of_birth,phone_no FROM `user_info` WHERE username =  '$id ' "; 
   $sql_q = mysqli_query($conn,$sql);
   $sql_res = mysqli_fetch_array($sql_q);

    

   echo'
<div class=" flex flex-row justify-content items-center my-7 ">
<img class=" rounded-full" src="'.$sql_res["profile_pic"].'"   width=80 height=80/>
<div class=" w-1/4 mx-4 ">
 <a class="text-sm text-gray-500 font-semibold  " href=" /profile.php?id='.$id.'">'.$sql_res["first_name"].'  '.$sql_res["last_name"].'</a>
 </div>
 </div>

<div class="max-w-md p-6"><form  action="new_conversion.php?username='.$id.'" method="POST" enctype="multipart/form-data">
<textarea name="msg_desc" type="text" id="msg_desc" rows="4" class="block  border border-b px-4 py-3 rounded-md mb-2  w-full" placeholder="your message .... "></textarea>

<button type="submit" class="ml-1 block px-6 py-2 rounded-md bg-red-700 text-white text-sm font-semibold w-md">Send</button>

</form></div>

';
   



  
   
?>


<?php require_once "footer.php"; ?>
</html>