<?php

session_start();

if(isset($_SESSION["LoggedIn"])){
$_SESSION = array();




session_destroy();

header("Location: login.php");




}
?>  