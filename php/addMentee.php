<?php
include("./connection.php");

$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email = $_POST['email'];
$phone_number = $_POST['phone_number'];
$occupation = $_POST['occupation'];
$town_vilage = $_POST['town_vilage'];
$id_number = $_POST['id_number'];
$whatsapp_number = $_POST['whatsapp_number'];
$school_attending = $_POST['school_attending'];
$province = $_POST['province'];
$gender = $_POST['gender'];
$country = $_POST['country'];
$address = $_POST['address'];




$sql = "INSERT INTO mentees (first_name, last_name, email, phone_number, occupation, town, id_number, whatsapp, school, province, gender, country,p_address)
VALUES ('$first_name', '$last_name', '$email', '$phone_number', '$occupation', '$town_vilage', '$id_number', '$whatsapp_number', '$school_attending', '$province', '$gender', '$country', '$address')";

if ($conn->query($sql) === TRUE) {
    header("Location: ../mentee.php");
} else {
    echo "Error: mentee not added " . $sql . "<br>" . $conn->error;
}


$conn->close();
