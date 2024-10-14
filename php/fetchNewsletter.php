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
$totalQuery = "SELECT COUNT(*) as total FROM newsletter WHERE email LIKE '%$search%'";
$totalResult = $conn->query($totalQuery);
$totalRow = $totalResult->fetch_assoc();
$totalRecords = $totalRow['total'];
$totalPages = ceil($totalRecords / $limit);

// Query to fetch newsletter emails with pagination and search filter
$sql = "SELECT id, email, date_reg FROM newsletter 
        WHERE email LIKE '%$search%' 
        LIMIT $offset, $limit";
$result = $conn->query($sql);

// Initialize the response array
$data = [
    'html' => '',
    'totalPages' => $totalPages,
    'page' => $page,
];

// Check if any newsletter entries are found
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data['html'] .= "<tr>
                            <td>" . htmlspecialchars($row["id"]) . "</td>
                            <td>" . htmlspecialchars($row["email"]) . "</td>
                            <td>" . htmlspecialchars($row["date_reg"]) . "</td>
                            <td><button class='btn-remove'><i class='fa-solid fa-trash-can'></i></button></td>
                          </tr>";
    }
} else {
    $data['html'] = "<tr><td colspan='4'>No results found</td></tr>";
}

// Output JSON response
echo json_encode($data);

// Close the database connection
$conn->close();
