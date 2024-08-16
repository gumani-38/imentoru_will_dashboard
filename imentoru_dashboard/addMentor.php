<?php
include("./database/connection.php");


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST["first_name"];
    $last_name = $_POST["last_name"];
    $email = $_POST["email"];
    $phone_number = $_POST["phone_number"];
    $occupation = $_POST["occupation"];
    $town_vilage = $_POST["town_vilage"];
    $id_number = $_POST["id_number"];
    $whatsapp_number = $_POST["whatsapp_number"];
    $province = $_POST["province"];
    $gender = $_POST["gender"];
    $country = $_POST["country"];
    $address = $_POST["address"];

    if (empty($firstName) || empty($lastName) || empty($email) || empty($phone_number)  || empty($phone_number) || empty($occupation) || empty($town_vilage)) {
        echo "Required fields are missing.";
        exit;
    }


    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "Invalid email format.";
        exit;
    }



    $sql = "INSERT INTO mentors (first_name, last_name, email, phone_number, occupation, town_vilage, id_number, whatsapp_number, province, gender, country, address) VALUES ('$first_name', '$last_name', '$email', '$phone_number', '$occupation', '$town_vilage', '$id_number', '$whatsapp_number', '$province', '$gender', '$country', '$address')";

    if ($conn->query($sql) === TRUE) {
        echo "New mentor added successfully";
    } else {
        echo "Error: mentor not added" . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
