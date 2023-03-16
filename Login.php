
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
'<div class=" container flex justify-center items-center bg-gray-50">
  
  <div class="bg-white grid grid-cols-3 gap-2  px-4 py-8 rounded-md">
   
    <h1 class="text-gray-500 text-md font-semibold"> Login </h1>
   



<form action="login.php" method="post">
<div class="col-span-full">
  <div class="bg-white mb-2 justify-center border-gray-300 px-1 py-1 border border-gray-300 rounded-md">
  <input class="block text-gray-900 text-sm  placeholder-gray-300" type="text" id="username" name="username" required placeholder="Username"/>
 

</div>
</div>

<div class="col-span-full">
  <div class="bg-white justify-center border-gray-300 mb-2 px-1 py-1 border border-gray-300 rounded-md">
  <input class="block text-gray-900  text-sm placeholder-gray-300" type="password" id="password" name="password" autocomplete="off" required placeholder="Password"/>


 

</div>
</div>
<button class="text-white block py-1.5 px-16  bg-red-600 rounded-lg text-sm "  type="submit" > Submit </button>  
</form>

</div></div>';

       }


?>

</body>
<?php require_once "footer.php"; ?>
</html>