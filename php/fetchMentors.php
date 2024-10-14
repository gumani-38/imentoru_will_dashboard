<?php
include("./connection.php");

// Set content type to JSON
header('Content-Type: application/json');

// Get the search term and pagination details from the request
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 5;
$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';
$offset = ($page - 1) * $limit;

// SQL query to count total records based on the search term
$totalQuery = "SELECT COUNT(*) as total FROM mentors WHERE first_name LIKE '%$search%' OR last_name LIKE '%$search%' OR email LIKE '%$search%' OR province LIKE '%$search%'";
$totalResult = $conn->query($totalQuery);
$totalRow = $totalResult->fetch_assoc();
$totalRecords = $totalRow['total'];
$totalPages = ceil($totalRecords / $limit);

// Query to fetch mentor data with pagination and search filter
$sql = "SELECT first_name, last_name, gender, phone, province, email, home_language 
        FROM mentors 
        WHERE first_name LIKE '%$search%' 
        OR last_name LIKE '%$search%' 
        OR email LIKE '%$search%' 
        OR province LIKE '%$search%' 
        LIMIT $offset, $limit";
$result = $conn->query($sql);

// Initialize the response array
$data = [
    'html' => '',
    'totalPages' => $totalPages,
    'page' => $page,
];

// Check if any mentors are found
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data['html'] .= "<tr>
                            <td>" . htmlspecialchars($row["first_name"] . " " . $row["last_name"]) . "</td>
                            <td>" . htmlspecialchars($row["gender"]) . "</td>
                            <td>" . htmlspecialchars($row["province"]) . "</td>
                            <td>" . htmlspecialchars($row["phone"]) . "</td>
                            <td>" . htmlspecialchars($row["email"]) . "</td>
                            <td>" . htmlspecialchars($row["home_language"]) . "</td>
                            <td>
                                <button class='btn-edit'><i class='fa-solid fa-pen-to-square'></i></button>
                                <button class='btn-remove'><i class='fa-solid fa-trash-can'></i></button>
                            </td>
                          </tr>";
    }
} else {
    $data['html'] = "<tr><td colspan='7'>No results found</td></tr>";
}

// Output JSON response
echo json_encode($data);

// Close the database connection
$conn->close();
