<?php
$server = "localhost";
$user = "root";
$password = "";
$dbName = "imentoru";
$conn = new mysqli($server, $user, $password, $dbName);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
}
