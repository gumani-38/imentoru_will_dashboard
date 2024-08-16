<?php
include("./connection.php");

$sql = "SELECT  event_name, event_start_date,event_end_date, event_end_time,event_start_time, event_description,date_created,event_status FROM events";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["event_name"]. "</td>
                <td>" . $row["event_description"]. "</td>
                <td>" . $row["event_start_date"]. " - ".$row["event_end_date"]."</td>
                <td>" . $row["event_start_time"]. " - " . $row["event_end_time"]. "</td>
                <td>" . $row["date_created"]. "</td>
                <td>" . $row["event_status"]. "</td>
                  <td><button class='btn-edit'><i class='fa-solid fa-pen-to-square'></i></button> <button class='btn-remove'><i class='fa-solid fa-trash-can'></i></button></td>          
              </tr>";
    }
} else {
    echo "0 results";
}
$conn->close();

