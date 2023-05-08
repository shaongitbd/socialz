
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<body>


   <?php
   
       if(isset($_GET["id"])){
       $id = $_GET["id"];
       $username=$_SESSION["username"];
       $sql ="insert into `status_likes`(likes_id, liked_by,status_id) values(NULL,'$username',$id)";
       
       
       $check_if_liked_sql = "SELECT * from `status_likes` where liked_by = '$username' and status_id = $id ";
       $check_if_liked_exe  = mysqli_query($conn, $check_if_liked_sql );


       if (mysqli_num_rows($check_if_liked_exe) != 0) {
       
       header("Location: status.php?id=$id");
        
     }
     else{
       $res = mysqli_query($conn, $sql  );
       
     header("Location: status.php?id=$id");
     }
   

       
}



?>

