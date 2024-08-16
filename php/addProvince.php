<?php
include("./connection.php");


$country = $_POST['country'];
$province = $_POST['province'];
$country_code = $_POST['country_code'];




$sql = "INSERT INTO provinces (country, province, country_code)
VALUES ('$country', '$province', '$country_code')";

if ($conn->query($sql) === TRUE) {
    header("Location: ../Province.php");
} else {
    echo "Error:  province not added" . $sql . "<br>" . $conn->error;
}


$conn->close();
