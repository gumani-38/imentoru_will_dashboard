<?php

include("./database/connection.php");

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email = $_POST['email'];
$role = $_POST['role'];
$phone_number = $_POST['phone_number'];
$occupation = $_POST['occupation'];
$town_vilage = $_POST['town_vilage'];
$id_number = $_POST['id_number'];
$whatsapp_number = $_POST['whatsapp_number'];
$province = $_POST['province'];
$gender = $_POST['gender'];
$country = $_POST['country'];
$address = $_POST['address'];



$sql = "INSERT INTO directors (first_name, last_name, email, role, phone_number, occupation, town_vilage, id_number, whatsapp_number, province, gender, country, address)
VALUES ('$first_name', '$last_name', '$email', '$role', '$phone_number', '$occupation', '$town_vilage', '$id_number', '$whatsapp_number', '$province', '$gender', '$country', '$address')";

if ($conn->query($sql) === TRUE) {
    echo "New director added successfully";
} else {
    echo "Error: director not added " . $sql . "<br>" . $conn->error;
}


$conn->close();
