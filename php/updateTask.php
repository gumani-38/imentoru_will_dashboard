<?php
// updateTask.php
include('./connection.php');

header('Content-Type: application/json');
$input = json_decode(file_get_contents('php://input'), true);

if (isset($input['id']) && isset($input['active'])) {
    $id = (int)$input['id'];
    $active = (int)$input['active'];

    $stmt = $conn->prepare("UPDATE tasks SET active = ? WHERE id = ?");
    $stmt->bind_param("ii", $active, $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Update failed']);
    }
    $stmt->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid input']);
}

$conn->close();
