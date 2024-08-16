<?php
#DB Connection 
// $server = "localhost:3306";
// $user = "imentoru_foundation";
// $password = "imentoru_foundation";
// $conn = mysqli_connect($server, $user, $password);
$server = "localhost";
$user = "root";
$password = "";
$dbName = "imentoru_foundation";
$conn = new mysqli($server, $user, $password, $dbName);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {

}
