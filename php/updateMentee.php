<?php
session_start();

// Check if the user is logged in, if not redirect them to login page
if (!isset($_SESSION['id'])) {
    header("Location: ../login.php");
    exit();
}

// Include the database connection file
include './connection.php';

// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the mentee ID from the form
    $menteeId = $_POST['id'];

    // Get form data and sanitize input
    $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
    $phone = filter_var($_POST['phone'], FILTER_SANITIZE_STRING);
    $id_number = filter_var($_POST['id_number'], FILTER_SANITIZE_STRING);
    $occupation = filter_var($_POST['occupation'], FILTER_SANITIZE_STRING);
    $town_village = filter_var($_POST['town_village'], FILTER_SANITIZE_STRING);
    $province = filter_var($_POST['province'], FILTER_SANITIZE_STRING);
    $gender = filter_var($_POST['gender'], FILTER_SANITIZE_STRING);

    // Validate required fields
    if (empty($email) || empty($phone) || empty($id_number) || empty($occupation) || empty($town_village) || empty($province) || empty($gender)) {
        echo "All fields are required.";
        exit();
    }

    // Prepare the SQL UPDATE statement
    $stmt = $conn->prepare("UPDATE mentees SET email = ?, phone = ?, id_number = ?, occupation = ?, town_village = ?, province = ?, gender = ? WHERE id = ?");
    $stmt->bind_param("sssssssi", $email, $phone, $id_number, $occupation, $town_village, $province, $gender, $menteeId);

    // Execute the statement
    if ($stmt->execute()) {
        // Redirect back to mentee page or show success message
        header("Location: ../mentee.php?success=1");
    } else {
        echo "Error updating mentee: " . $conn->error;
    }

    // Close the statement and connection
    $stmt->close();
    $conn->close();
} else {
    echo "Invalid request method.";
}