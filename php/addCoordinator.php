<?php

include("./connection.php");

echo "Connection successfully";

// Retrieve form data
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

// Prepare and bind
$stmt = $conn->prepare("INSERT INTO coordinators (first_name, last_name, email, phone, occupation, town, id_number, whatsapp, province, gender, country,p_address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssssssssss", $first_name, $last_name, $email, $phone_number, $occupation, $town_vilage, $id_number, $whatsapp_number, $province, $gender, $country, $address);

// Execute the prepared statement
if ($stmt->execute()) {
    header("Location: ../coordinator.php");
} else {
    echo "Error: coordinator not added " . $stmt->error;
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>

