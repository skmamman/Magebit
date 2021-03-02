<?php

$server = "localhost";
$user = "root";
$password = "";
$db ="magebitdb";

$con = mysqli_connect($server,$user,$password,$db);

if($con){
    //echo "<script type='text/javascript'>alert('connected');</script>";
}else{
    echo "<script type='text/javascript'>alert('no connection');</script>";
}

?>
