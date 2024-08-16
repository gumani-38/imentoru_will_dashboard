<?php
include("./connection.php");

$sql = "SELECT province_name,province_code,coordinates,country_code,active FROM province";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["province_name"]. "</td>
                <td>" . $row["province_code"]. "</td>
                <td>" . $row["coordinates"]. "</td>
                <td>" . $row["country_code"]. "</td>
                <td>" . $row["active"]. "</td>  
                            <td><button class='btn-edit'><i class='fa-solid fa-pen-to-square'></i></button> <button class='btn-remove'><i class='fa-solid fa-trash-can'></i></button></td>             
              </tr>";
    }
} else {
    echo "0 results";
}
$conn->close();
