
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "auth_check.php"; ?>

<?php

$username=$_SESSION["username"];
$conversion_sql= "SELECT friend_one,friend_two,conversion_id  FROM `conversion` WHERE friend_one ='$username' or friend_two='$username'";
$which_friend  = "";
$result = mysqli_query($conn, $conversion_sql);




$rows = [];
echo '<h1 class="mt-20 mb-6 text-sm text-gray-600 font-semibold "> Your Messages</h1>';
while($row = mysqli_fetch_array($result))
{
    $id=$row["conversion_id"];
    $sql = "SELECT from_friend,to_friend FROM `message`  WHERE conversion_id=$id  ORDER BY msg_time DESC ";
    $res_one = mysqli_query($conn, $sql);
    $tmp=mysqli_fetch_array($res_one);
    if($tmp["from_friend"]==$username){

        $sql  =   "SELECT first_name,last_name, profile_pic, to_friend, msg_desc,msg_time,conversion_id FROM `message` LEFT JOIN `user_info`  ON message.to_friend=user_info.username   WHERE conversion_id=$id  ORDER BY msg_time DESC ";
    }
    
    else{    
        
        
        $sql  =   "SELECT first_name,last_name, profile_pic, from_friend,msg_desc,msg_time,conversion_id FROM `message` LEFT JOIN `user_info`  ON message.from_friend=user_info.username   WHERE conversion_id=$id  ORDER BY msg_time DESC ";
    }
    $res= mysqli_query($conn, $sql);   
    $msg=mysqli_fetch_array($res); 
    echo'

   

<div class= "flex max-w-md p-4 max-w-xl  pb-8">

<div><img class="rounded-full" src="'.$msg["profile_pic"].'"   width=80 height=80/></div>
<div class="mx-4 flex flex-col space-y-3  w-full ">
<div class=" flex space-x-4  justify-between w-full"> 
 <a class="text-gray-600 text-md font-semibold" href="/message.php?id='.$id.'">'.$msg["first_name"].' '.$msg["last_name"].'</a>




 <div class="time text-gray-500 text-sm ">9.11AM</div>

 </div>





<p class="text-sm text-gray-500 ">

'.$msg["msg_desc"].'


</p>



</div>

</div>
';
}

echo("</div>");
?>

