<?php
session_start();
include("./connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];


    // Prepare and bind
    $stmt = $conn->prepare("SELECT id, password,first_name,last_name,email FROM users WHERE email = ?");
    $stmt->bind_param("s", $username);

    // Execute the statement
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        // Bind result variables
        $stmt->bind_result($id, $hashed_password, $first_name, $last_name, $user_name);
        $stmt->fetch();

        if ($password == $hashed_password) {
            $_SESSION['username'] = $user_name;
            $_SESSION['id'] = $id;
            $_SESSION["Fullname"] = $first_name . ' ' . $last_name;
            $_SESSION["isLockedScreen"] = false;
            header("Location: ../index.php");
            exit();
        } else {
            // Display an error message if password is not valid
            echo "The password you entered was not valid.";
        }
    } else {
        // Display an error message if username doesn't exist
        echo "No account found with that username.";
    }

    // Close statement and connection
    $stmt->close();
    $conn->close();
}
