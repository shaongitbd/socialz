
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php require_once "time.php"; ?>
<div class="mx-6">      <?php
       
       if ($_SERVER["REQUEST_METHOD"]==="POST"){


        $comment_desc = $_POST["comment_desc"];
        $status_id =$_GET["id"];
        $username = $_SESSION["username"];
        $insert_sql = "insert into `status_comments`(status_id, comment_id,comment_owner,comment_desc) values($status_id,NULL , '$username', '$comment_desc')";
   

        $exec = mysqli_query($conn,$insert_sql);  

       }


    if (isset($_GET["id"])) {
        $status_id=$_GET["id"];
        $username = $_SESSION["username"];

        $sql = "SELECT first_name,last_name,username, profile_pic, status_id,status_owner,status_content,status_image,status_date, (SELECT COUNT(*) from `status_likes` WHERE status_id = $status_id)'total_likes',(SELECT COUNT(*) from `status_comments` WHERE status_id = $status_id)'total_comments' FROM `status`  LEFT JOIN `user_info`  ON   status.status_owner=user_info.username  WHERE status_id = $status_id  ";
        $result = mysqli_query($conn, $sql);
        $owner_profile_pic = "SELECT profile_pic from user_info where username='$username'";
        $profile_pic_res =mysqli_query($conn, $owner_profile_pic);

        

        $result_profile_pic=mysqli_fetch_array($profile_pic_res);
        $row = mysqli_fetch_array($result) ;

        $status_date = time_con($row["status_date"]);

        
        
        

        


         

            echo
            '<div class= "mt-10    	max-w-xl	shadow-md	">
            <div class="mx-4 mb-2 mt-6   block  text-sm text-gray-600 font-semibold   flex   justify-between ">
            
            <div class="flex items-center ">
           
            <img class="rounded-full" src="'.$row["profile_pic"].'" height=60 width=60/> <div  class="flex-col"><a class="mx-4 text-md  "  href="/profile.php?username='.$row["status_owner"].'">'.$row["first_name"].' '.$row["last_name"].' </a> <div class="mx-4 text-sm text-gray-400 ">'.$status_date.'</div></div></div>
        
            
             </div>
             
            
            <p class=" mx-6 mt-4 text-sm text-gray-500">
            
            
            '.$row["status_content"].' ;
            
            
            </p>
            <br/>';

            
            if ($row["status_image"]!='') { echo '<img src="'.$row["status_image"].'"  width=600 height=400 />' ; }          
            
            
            
            echo'
            <div class="flex mx-auto mt-4 mb-4 px-4 border-l border-r border-t p-2 border-gray-300 "><a class="pr-4 text-xs text-gray-600 font-semibold" href="like.php?id='.$row["status_id"].'"> Like </a><a href="#" class="pr-4 text-xs text-gray-600 font-semibold"><i class="fa fa-thumbs-up" aria-hidden="true"></i>            '.$row["total_likes"].' </a><a href="/status.php?id='.$row["status_id"].'" class=" pr-4  text-xs text-gray-600 font-semibold ">'.$row["total_comments"].' comments </a></div>

           
            <div class=" p-4 flex border-x border-gray-300 ">
            <div class="content-center	">
            <img class="rounded-full" src="'.$result_profile_pic["profile_pic"].'" height=80 width=80/>
        
             
 
             </div>
             
            <form class="mx-2 w-full" action="status.php?id='.$status_id.'" method="POST"  enctype="multipart/form-data">
            <div class="flex   ">
            <div class="w-full"><textarea name="comment_desc" type = "text" rows="3" class="block  w-full border border-b px-4 py-3 rounded-md mb-2  border-gray-400 " placeholder="Write your thoughts here.... "/></textarea></div>
<div class="mx-1"><button type="submit" class="mx-2 mt-1 ml-1 block px-4 py-2 rounded-md bg-gray-800 text-white text-md font-semibold">Comment</button></div>
</div>
</form > 
</div>

<div class="border-x border-gray-300 pb-10">

         
            
         ';
           
           
           $comments_sql = "SELECT first_name,last_name,username, profile_pic, comment_id,comment_owner,comment_desc,comment_date,(SELECT count(*) from `comment_likes` where comment_id  = S.comment_id )total_likes  FROM `status_comments` as S LEFT JOIN `user_info`  ON   S.comment_owner=user_info.username  WHERE status_id = $status_id  " ;
           $comment_res = mysqli_query($conn,$comments_sql) ;
           while($cmt = mysqli_fetch_array($comment_res) ){

            $comment_date = time_con($cmt["comment_date"]);



             echo'
             <div class="mx-5 mt-6 "> <div class="flex items-center">
             <img class="rounded-full" src="'.$cmt["profile_pic"].'" height=40 width=40/> <div  class="flex-col"><a class="mx-4 text-sm font-semibold text-gray-700 "  href="/profile.php?username='.$cmt["comment_owner"].'">'.$cmt["first_name"].' '.$cmt["last_name"].' </a> <div class="mx-4 text-sm text-gray-400 font-semibold ">'.$comment_date.'</div></div></div>
         
              
              <div class="flex"><div class="px-3 ">.</div>
              <p class="mx-8 mt-2 text-sm  text-gray-700 "> '.$cmt["comment_desc"].'</p></div> </div>
              <div class="flex"><div class="px-3 ">.</div>

              <div class="flex  mt-4 mb-4 px-4">
<a class="pr-4 text-xs text-gray-600 font-semibold" href="comment_like.php?id='.$cmt["comment_id"].'&status_id='.$status_id.'"> Like </a><a href="/liked.php?id='.$cmt["comment_id"].'&comment" class="pr-4 text-xs text-gray-600 font-semibold"><i class="fa fa-thumbs-up" aria-hidden="true"></i>            '.$cmt["total_likes"].'</div>


</div></div>
             
             ';


           }
        

        
echo  '</div></div>';

} 
    

?>

</div>
<?php require_once "footer.php"; ?>
