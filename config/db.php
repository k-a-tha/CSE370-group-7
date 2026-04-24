<?php
// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', ''); // Add your XAMPP password here
define('DB_NAME', 'anya_forger');

// Create connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// Check connection
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// Set charset
$conn->set_charset('utf8');

// Sanitize input
function sanitize($input) {
    global $conn;
    return $conn->real_escape_string(trim($input));
}

// Hash password
function hashPassword($password) {
    return password_hash($password, PASSWORD_BCRYPT);
}

// Verify password
function verifyPassword($password, $hash) {
    return password_verify($password, $hash);
}

// Execute query
function executeQuery($query) {
    global $conn;
    return $conn->query($query);
}

// Get single row
function getRow($query) {
    global $conn;
    $result = $conn->query($query);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    }
    return null;
}

// Get all rows
function getAll($query) {
    global $conn;
    $result = $conn->query($query);
    $rows = array();
    if ($result && $result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $rows[] = $row;
        }
    }
    return $rows;
}

// Close connection when script ends
register_shutdown_function(function() {
    global $conn;
    if ($conn) {
        $conn->close();
    }
});
?>
