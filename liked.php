
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<body>


   <?php
       if(isset($_GET["status"])){
       $id = $_GET["id"];
       $sql ="SELECT first_name, last_name, profile_pic,username,  liked_by,Time from `status_likes` LEFT JOIN  `user_info` ON status_likes.liked_by=user_info.username where status_id='.$id.'";
   

       
}

else{

    $id = $_GET["id"];
    $sql = "SELECT first_name, last_name, profile_pic,username,  liked_by,time from `comment_likes` LEFT JOIN  `user_info` ON comment_likes.liked_by=user_info.username where comment_id='.$id.'";

}


$sql_q = mysqli_query($conn, $sql);




while($likers = mysqli_fetch_array($sql_q) ){
    $username=$_SESSION["username"];
    $user=$likers['username'];

    $check_if_friend =  "SELECT * FROM `friends` where from_friend='$username' and to_friend = '$user' ";
    $friend_check_res=mysqli_query($conn,$check_if_friend);


echo'
<div class=" flex flex-row justify-content my-7 ">
<img class=" rounded-full" src="'.$likers["profile_pic"].'"   width=40 height=40/>
<div class="flex flex-col w-1/4 mx-4 "><a class="text-sm text-gray-500 font-semibold  " href=" /profile.php?username='.$likers["username"].'">'.$likers["first_name"].'  '.$likers["last_name"].'</a>';


 
 if(mysqli_num_rows($friend_check_res) != 0){}

 else{
 
 echo'<div class="mt-2"><a  href="friends.php?add='.$likers["username"].'" class="mt-4 text-sm px-2 py-1.5 bg-red-800 text-semibold text-white rounded-md "> Add Friend</a></div>';

}
 
echo'</div>
 </div>';



}


?>

</body>
<?php require_once "footer.php"; ?>
</html>