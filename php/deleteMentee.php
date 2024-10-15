<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database connection
include './connection.php';

// Set content type to JSON
header('Content-Type: application/json');

// Check if the request method is POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['error' => 'Invalid request method.']);
    exit;
}

// Get the ID from the POST request
$id = isset($_POST['id']) ? (int)$_POST['id'] : null;

if (!$id) {
    echo json_encode(['error' => 'Invalid or missing ID.']);
    exit;
}

// SQL query to delete the record by ID
$query = "DELETE FROM mentees WHERE id = ?";

if ($stmt = mysqli_prepare($conn, $query)) {
    mysqli_stmt_bind_param($stmt, 'i', $id); // Bind the ID as an integer
    if (mysqli_stmt_execute($stmt)) {
        // Check if a row was actually deleted
        if (mysqli_stmt_affected_rows($stmt) > 0) {
            echo json_encode(['success' => 'Record deleted successfully']);
        } else {
            echo json_encode(['error' => 'Record not found or could not be deleted.']);
        }
    } else {
        echo json_encode(['error' => 'Error executing query: ' . mysqli_error($conn)]);
    }
    mysqli_stmt_close($stmt);
} else {
    echo json_encode(['error' => 'SQL Error: ' . mysqli_error($conn)]);
}

// Close the database connection
mysqli_close($conn);
