<?php
include("./connection.php");

$sql = "SELECT program_name,activities,activity_description,date_start,date_end,active FROM programmes";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["program_name"]. "</td>
                <td>" . $row["activities"]. "</td>
                <td>" . $row["date_start"]. " - " . $row["date_end"]. "</td>
                <td>" . $row["active"]. "</td>
                <td>" . $row["activity_description"]. "</td>         
                            <td><button class='btn-edit'><i class='fa-solid fa-pen-to-square'></i></button> <button class='btn-remove'><i class='fa-solid fa-trash-can'></i></button></td>
              </tr>";
    }
} else {
    echo "No data Found";
}
$conn->close();
