<?php
session_start();
if(!$_SESSION["LoggedIn"]){


header("Location: login.php");

}



 ?>
