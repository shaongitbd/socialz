<?php



function  time_con($time) {

  $time_db = strtotime($time);
  $dbDate = new DateTime($time);
  $currDate = new DateTime();
  $interval = $currDate->diff($dbDate);
  
  $days_i = $interval->d;
  $hour_i  = $interval->h;
  $formated_time = "";


  if($days_i == 0){
    
     if($hour_i === 0){
    
      $formated_time  = $interval->m."m ";
    }

    else{
  
      $formated_time  = $interval->h."h ";
   }
   
    }





else{

   $formated_time  = $interval->d."d ".$interval->h."h";

   }


   return $formated_time;
}








;?>
