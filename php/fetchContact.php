<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database connection
include './connection.php';

// Set content type to JSON
header('Content-Type: application/json');

// Initialize pagination and search variables
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 10;
$search = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : ''; // Prevent SQL injection
$offset = ($page - 1) * $limit;

if (!$conn) {
    echo json_encode(['error' => 'Connection failed: ' . mysqli_connect_error()]);
    exit;
}

// Query to get total number of records
$totalQuery = "SELECT COUNT(*) as total FROM partners WHERE name LIKE '%$search%' OR email LIKE '%$search%'";
$totalResult = mysqli_query($conn, $totalQuery);

if (!$totalResult) {
    echo json_encode(['error' => 'SQL Error: ' . mysqli_error($conn)]);
    exit;
}
$totalRow = mysqli_fetch_assoc($totalResult);
$totalRecords = $totalRow['total'];
$totalPages = ceil($totalRecords / $limit);

// Query to fetch the relevant records for the current page
$query = "SELECT * FROM contact WHERE name LIKE '%$search%' OR email LIKE '%$search%' LIMIT $offset, $limit";
$result = mysqli_query($conn, $query);

if (!$result) {
    echo json_encode(['error' => 'SQL Error: ' . mysqli_error($conn)]);
    exit;
}

if ($result->num_rows > 0) {
    $html = ''; // Initialize HTML variable
    while ($row = $result->fetch_assoc()) {
        $html .= "<tr>";
        $html .= "<td>" . htmlspecialchars($row['name']) . "</td>";
        $html .= "<td>" . htmlspecialchars($row['email']) . "</td>";
        $html .= "<td>" . htmlspecialchars($row['phone']) . "</td>";
        $html .= "<td>" . htmlspecialchars($row['province']) . "</td>";
        $html .= "<td>" . htmlspecialchars($row['date_reg']) . "</td>";
        $html .= "<td>" . htmlspecialchars($row['subject']) . "</td>";
        $html .= "<td>" . htmlspecialchars($row['message']) . "</td>";
        $html .= "<td><button class='btn-remove' data-id='" . htmlspecialchars($row['id']) . "'>
            <i class='fa-solid fa-trash-can'></i></button></td>";
        $html .= "</tr>";
    }
} else {
    $html .= "<tr><td colspan='8'>No data found</td></tr>";
}


$response = [
    'html' => $html,
    'page' => $page,
    'totalPages' => $totalPages
];
echo json_encode($response);
