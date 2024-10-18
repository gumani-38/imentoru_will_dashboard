<?php
// Include the database connection file
include './connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the posted form data
    $id = $_POST['id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $id_number = $_POST['id_number'];
    $province = $_POST['province'];
    $partnership_type = $_POST['partnership_type'];

    // Prepare the SQL statement to update the partner's information
    $stmt = $conn->prepare("UPDATE partners SET name = ?, email = ?, phone = ?, id_number = ?, province = ?, partnership_type = ? WHERE id = ?");
    $stmt->bind_param("ssssssi", $name, $email, $phone, $id_number, $province, $partnership_type, $id);

    if ($stmt->execute()) {
        // Successfully updated
        header("Location: partner.php?success=1");
        exit();
    } else {
        echo "Error updating partner: " . $conn->error;
    }
}