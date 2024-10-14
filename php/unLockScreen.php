<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    include("./connection.php");
    $user_id = $_SESSION['id'];
    $password = $_POST['password'];

    // Prepare and bind
    $stmt = $conn->prepare("SELECT password FROM users WHERE id = ?");
    $stmt->bind_param("i", $user_id);

    // Execute the statement
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        // Bind result variable
        $stmt->bind_result($hashed_password);
        $stmt->fetch();

        // Verify the password
        if ($password == $hashed_password) {
            // Password is correct, unlock the screen
            $_SESSION['isLockedScreen'] = false;
            header("Location: ../index.php");
            exit();
        } else {
            // Password is incorrect
            $error = "The password you entered was not valid.";
        }
    } else {
        // User not found
        $error = "User account not found.";
    }

    // Close statement and connection
    $stmt->close();
    $conn->close();
}
