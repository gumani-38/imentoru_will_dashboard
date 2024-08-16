<?php
include("./connection.php");

$sql = "SELECT first_name,last_name,gender,phone,province,email,active_since,occupation FROM mentees";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["first_name"]. ", " . $row["last_name"]. "</td>
                <td>" . $row["gender"]. "</td>
                <td>" . $row["phone"]. "</td>
                <td>" . $row["province"]. "</td>
                <td>" . $row["email"]. "</td>
                <td>" . $row["occupation"]. "</td>
                <td>" . $row["active_since"]. "</td>
                <td><button class='btn-edit'><i class='fa-solid fa-pen-to-square'></i></button> <button class='btn-remove'><i class='fa-solid fa-trash-can'></i></button></td>               
              </tr>";
    }
} else {
    echo "0 results";
}
$conn->close();
