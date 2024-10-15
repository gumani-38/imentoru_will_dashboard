<?php
// Enable error reporting for debugging
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

// Check database connection
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
$query = "SELECT * FROM partners WHERE name LIKE '%$search%' OR email LIKE '%$search%' LIMIT $offset, $limit";
$result = mysqli_query($conn, $query);

if (!$result) {
    echo json_encode(['error' => 'SQL Error: ' . mysqli_error($conn)]);
    exit;
}

// Build HTML table rows
$html = '';
while ($row = mysqli_fetch_assoc($result)) {
    $html .= "<tr>";
    $html .= "<td>{$row['name']}</td>";
    $html .= "<td>{$row['website']}</td>";
    $html .= "<td>{$row['province']}</td>";
    $html .= "<td>{$row['partnership_type']}</td>";
    $html .= "<td>{$row['phone']}</td>";
    $html .= "<td>{$row['email']}</td>";
    $html .= "<td>{$row['summary']}</td>";
    $html .= "<td><button class='btn-edit' data-id='" . htmlspecialchars($row['id']) . "'>
                                    <i class='fa-solid fa-pen-to-square'></i>
        </button></td>";
    $html .= "</tr>";
}

// Send the response as JSON
$response = [
    'html' => $html,
    'page' => $page,
    'totalPages' => $totalPages
];
echo json_encode($response);

// No need for additional output after this point