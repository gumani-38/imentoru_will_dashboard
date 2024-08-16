<?php
include("./connection.php");

$sql = "SELECT  first_name,last_name,ticket_no,phone,province,email,date_reg,message,subject FROM contact";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["ticket_no"]. "</td>
                <td>" . $row["first_name"]. ", " . $row["last_name"]. "</td>
                <td>" . $row["email"]. "</td>
                <td>" . $row["phone"]. "</td>
                <td>" . $row["province"]. "</td>     
                <td>" . $row["date_reg"]. "</td>  
                <td>" . $row["subject"]. "</td>
                <td>" . $row["message"]. "</td>   
             <td> <button class='btn-remove'><i class='fa-solid fa-trash-can'></i></button></td>    
              </tr>";
    }
} else {
    echo "No data Found";
}
$conn->close();
