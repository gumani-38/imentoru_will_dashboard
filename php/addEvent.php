<?php
include("./connection.php");

$name = $_POST['name'];
$start_date = $_POST['start_date'];
$end_date = $_POST['end_date'];
$event_link = $_POST['event_link'];
$start_time = $_POST['start_time'];
$end_time = $_POST['end_time'];
$event_location = $_POST['event_location'];
$description = $_POST['description'];




$sql = "INSERT INTO events (event_name, event_start_date, event_end_date, event_link, event_start_time, event_end_time, event_location, event_description)
VALUES ('$name', '$start_date', '$end_date', '$event_link', '$start_time', '$end_time', '$event_location', '$description')";

if ($conn->query($sql) === TRUE) {
    header("Location: ../event.php");
} else {
    echo "Error: event not added " . $sql . "<br>" . $conn->error;
}


$conn->close();
