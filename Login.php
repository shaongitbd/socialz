
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
<?php session_start(); ?>
<body><?php
if(isset($_SESSION["LoggedIn"])){


header("Location: home.php");

}
?>       <?php
       
    
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $username=$_POST["username"];
        $password=$_POST["password"];


        $sql = "select * from  user_info where username='$username' and password = '$password'";
        $result = mysqli_query($conn, $sql);
          echo mysqli_num_rows($result);

    
        if (mysqli_num_rows($result) != 0) {
          echo "Logged in .";
         $_SESSION["LoggedIn"] = true;
          $_SESSION["username"] =  $username;
        header("Location: home.php");
       
     
         die();


              }
        
         else{


          header("Location: login.php");
          die();
} 
    
    
    
    
    
    }
       else {
   
       

echo 
'<div class="h-screen flex justify-center items-center  bg-gray-50">

  <div class="bg-white    gap-2 px-8 py-6 rounded-md w-1/4">
     <div class="col-span-2 mb-8">
    <h1 class="text-gray-500 text-md font-semibold"> Login </h1>
   </div>



<form action="login.php" method="post">
<div class="mb-2">
 
  <input class="w-full block text-gray-900 text-sm px-1 py-1.5 border border-gray-300 rounded-md" placeholder-gray-300" type="text" id="username" name="username" required placeholder="Username"/>
 

</div>

<div class="mb-2">

  <input class="w-full block  text-gray-900  text-sm  bg-white border-gray-300 mb-2 px-1 py-1.5 border border-gray-300 rounded-md" type="password" id="password" name="password" autocomplete="off" required placeholder="Password"/>


 

</div>
<button class="mt-6 text-white block py-1 w-full  bg-red-600 rounded-lg text-sm font-semibold "  type="submit" > Submit </button>  
</form>

</div></div>';

       }


?>

</body>
<?php require_once "footer.php"; ?>
</html>