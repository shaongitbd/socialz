<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
   


</head>

<?php
session_start();
if(isset($_SESSION["username"])){

$username = $_SESSION["username"]; 

echo'<div class="container mx-auto px-6 mt-12  "><div class="container flex items-center  border-b mx-auto space-x-12 "><div class="flex px-2 py-4"><img src="https://www.91-cdn.com/hub/wp-content/uploads/2019/02/Instagram-Featured.jpg" width="120px" height="100px" /></div> <div class="flex flex-row p-4 space-x-6"> <a href="/home.php" class="block text-gray-700 py-2 text-sm font-semibold "> Home </a> <a href="profile.php?username='.$username.'" class="block text-gray-700 py-2  text-sm font-semibold "> Profile</a> <a  href="conversion.php" class="block text-gray-700  py-2 text-sm font-semibold" href=""> Message </a> 

<a class="block text-gray-700  py-2 text-sm font-semibold" href="friends.php"> Friends</a>



<form class="flex items-center" action="search.php" method ="get">   
    <label for="simple-search" class="sr-only">Search</label>
    <div class="relative w-full">
        <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
            <svg aria-hidden="true" class="w-3 h-3 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"></path></svg>
        </div>
        <input name="q" type="text" id="simple-search" class="bg-gray-50 border border-gray-300 text-gray-500 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-1 s" placeholder="Search" required>
    </div>
    <button type="submit" class="p-2 ml-2 text-sm font-medium text-white bg-gray-600 rounded-lg border border-blue-700 hover:bg-gray-800 focus:ring-4 focus:outline-none focus:ring-blue-300 ">
        <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
        <span class="sr-only">Search</span>
    </button>
</form>


<a class="block text-gray-700  py-2 text-sm  font-semibold" href="logout.php"> Logout</a>';

}

?>

</div>

</div>
<body >