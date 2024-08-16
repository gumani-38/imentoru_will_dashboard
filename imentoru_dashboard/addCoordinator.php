<?php

include("./database/connection.php");

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email = $_POST['email'];
$phone_number = $_POST['phone_number'];
$occupation = $_POST['occupation'];
$town_vilage = $_POST['town_vilage'];
$id_number = $_POST['id_number'];
$whatsapp_number = $_POST['whatsapp_number'];
$province = $_POST['province'];
$gender = $_POST['gender'];
$country = $_POST['country'];
$address = $_POST['address'];


$sql = "INSERT INTO coordinators (first_name, last_name, email, phone_number, occupation, town_vilage, id_number, whatsapp_number, province, gender, country, address) VALUES ('$first_name', '$last_name', '$email', '$phone_number', '$occupation', '$town_vilage', '$id_number', '$whatsapp_number', '$province', '$gender', '$country', '$address')";

if (mysqli_query($conn, $sql)) {
    echo "New coordinator added successfully";
} else {
    echo "Error: coordinator not added " . $sql . "<br>" . mysqli_error($conn);
}


mysqli_close($conn);
