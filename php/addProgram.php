<?php
include("./connection.php");

$name = $_POST['name'];
$start_date = $_POST['start_date'];
$end_date = $_POST['end_date'];
$activities = $_POST['activities'];
$description = $_POST['description'];
$date_reg = date('d M Y'); // Get current date in the format "10 Feb 2024"

$sql = "INSERT INTO programmes (program_name, date_start, date_end, activities, activity_description, date_reg, active)
VALUES ('$name', '$start_date', '$end_date', '$activities', '$description', '$date_reg', 1)";

if ($conn->query($sql) === TRUE) {
    header("Location: ../program.php");
} else {
    echo "Error: event not added " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
