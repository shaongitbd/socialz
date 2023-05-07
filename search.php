
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<body>   

 <?php
       
    
    if (isset($_GET["q"])) {
        
    $search_term =  $_GET["q"];

     echo "<div class='text-sm text-gray-500 font-semibold'>your  search result for  <b>$search_term </b></div>";


    $sql_query =  "SELECT first_name, last_name, profile_pic,username from user_info WHERE first_name LIKE  '%$search_term%' ";
 
    $sql_res =  mysqli_query($conn, $sql_query);

    while($row=mysqli_fetch_array($sql_res)){

      $username=$_SESSION["username"];
      $user =  $row["username"];


       $check_if_friend =  "SELECT * FROM `friends` where from_friend='$username' and to_friend = '$user' ";
    $friend_check_res=mysqli_query($conn,$check_if_friend);


echo'
<div class=" flex flex-row justify-content my-7 ">
<img class=" rounded-full" src="'.$row["profile_pic"].'"   width=40 height=40/>
<div class="flex flex-col w-1/4 mx-4 "><a class="text-sm text-gray-500 font-semibold  " href=" /profile.php?username='.$row["username"].'">'.$row["first_name"].'  '.$row["last_name"].'</a>';


 
 if(mysqli_num_rows($friend_check_res) != 0){}

 else{
 
 echo'<div class="mt-2"><a  href="friends.php?add='.$row["username"].'" class="mt-4 text-sm px-2 py-1.5 bg-red-800 text-semibold text-white rounded-md "> Add Friend</a></div>';

}
 
echo'</div>
 </div>';
  

   
         }
    }
      


?>

</body>
<?php require_once "footer.php"; ?>
</html>