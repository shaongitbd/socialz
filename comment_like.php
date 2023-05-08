
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<body>


   <?php
   
       if(isset($_GET["id"])){
       $status_id =  $_GET["status_id"];
       $id = $_GET["id"];

       $username=$_SESSION["username"];
       $sql ="insert into `comment_likes`(comment_like_id, liked_by,comment_id) values(NULL,'$username',$id)";
       
       
       $check_if_liked_sql = "SELECT * from `comment_likes` where liked_by = '$username' and comment_id = $id ";
       $check_if_liked_exe  = mysqli_query($conn, $check_if_liked_sql );


       if (mysqli_num_rows($check_if_liked_exe) != 0) {
       
        header("Location: status.php?id=$status_id");
     }
     else{
       $res = mysqli_query($conn, $sql  );
       
     header("Location: status.php?id=$status_id");
     }
   

       
}



?>

