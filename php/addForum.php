<?php
session_start();
include("./connection.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $message = trim($_POST['message']);
    $username =   $_SESSION['username'];

    if (!empty($message)) {

        $stmt = $conn->prepare("INSERT INTO quick_forum (username, message, date_sent, time_sent, deleted) VALUES (?, ?, CURDATE(), CURTIME(), 0)");

        $stmt->bind_param("ss", $username, $message);
        if ($stmt->execute()) {
            header("Location: ../index.php");
            exit();
        } else {
            echo "Error: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Please enter a message.";
    }
}

// Close the connection
$conn->close();