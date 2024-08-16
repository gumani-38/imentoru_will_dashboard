<?php
include("./connection.php");

$tables = ["mentors", "mentees", "programmes", "directors", "country", "partners", "sponsors", "coordinators", "province"];
$counts = [];

foreach ($tables as $table) {
    $sql = "SELECT COUNT(*) as count FROM $table";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $counts[$table] = $row["count"];
    } else {
        $counts[$table] = 0;
    }
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($counts);
?>