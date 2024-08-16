<?php
session_start();

include("./connection.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $description = trim($_POST['description']);
    $deadline = $_POST['deadline'];

    if (!empty($description) && !empty($deadline)) {
        // Prepare and bind
        $stmt = $conn->prepare("INSERT INTO task (username, task, date_due, active, updated, deleted, task_status, date_set, time_set, time_due) VALUES (?, ?, ?, 1, 0, 0, 'pending', CURDATE(), CURTIME(), ?)");

        $username =    $_SESSION['username'];
        $time_due = '23:59:59';

        $stmt->bind_param("ssss", $username, $description, $deadline, $time_due);
        if ($stmt->execute()) {
            header("Location: ../index.php");
            exit();
        } else {
            echo "Error: " . $stmt->error;
        }

        // Close the statement
        $stmt->close();
    } else {
        echo "Please fill all the required fields.";
    }
}

// Close the connection
$conn->close();