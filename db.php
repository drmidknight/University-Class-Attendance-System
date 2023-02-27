<?php

$host = 'localhost';
$user = 'root';
$password = '';
$dbName = 'class_attendance';

$conn = mysqli_connect($host, $user, $password, $dbName);

if($conn){
    // echo 'connected';
}else{
    echo 'not connected';
}