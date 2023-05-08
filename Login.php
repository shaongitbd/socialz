
<?php require_once "header.php"; ?>
<?php require_once "db.php"; ?>
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
'<div class=" h-screen flex justify-center items-center  bg-gray-50   "  style="background-image: url(images/bg.jpg);">

  <div class="border border-gray-300 bg-white   gap-2 px-8 py-6 rounded-md w-1/5 shadow-md ">
     <div class="mt-4 col-span-2 mb-10">
    <h1 class="text-gray-700 text-xl font-semibold text-center	"> Login </h1>
    <div class="mt-4 flex-grow border-2 border-gray-300 "></div>

   </div>


<form action="login.php" method="post">
<div class="col-span-2">
<label class="mx-1 text-md text-gray-500 font-semibold">Username</label>
 
  <input class="mt-2 bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-md focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-2" type="text" id="username" name="username" required placeholder="Username"/>
 

</div>

<div class="mt-4 col-span-2">
<label class="mx-1 text-md text-gray-500 font-semibold">Password</label>
  <input class="mt-2 bg-gray-100 border border-gray-300 text-gray-500 text-sm rounded-md focus:ring-blue-500 focus:border-blue-500 block w-full pl-2 p-2" type="password" id="password" name="password" autocomplete="off" required placeholder="Password"/>


 

</div>
<button class="mt-4 text-white block px-6 py-2.5  w-full  bg-gray-700 rounded-lg text-sm font-semibold"  type="submit" > Submit </button>  

<div class="mt-4 mb-6 flex justify-center"><p class=" text-sm text-gray-500 font-normal"  > Dont have an account? </p> <a class="mx-2 text-sm text-gray-600 font-semibold" href="/register.php">Register here</a></div> 
</form>
</div>

</div></div>';

       }


?>

</body>
<?php require_once "footer.php"; ?>
</html>