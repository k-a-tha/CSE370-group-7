<?php
session_start();
require_once '../config/db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = sanitize($_POST['email']);
    $password = $_POST['password'];

    // Check if user exists
    $query = "SELECT ID, PasswordHash FROM users WHERE Email = '$email'";
    $user = getRow($query);

    if ($user && verifyPassword($password, $user['PasswordHash'])) {
        $_SESSION['user_id'] = $user['ID'];
        $_SESSION['user_email'] = $email;
        $_SESSION['user_type'] = 'user';
        header("Location: ../index.html");
        exit;
    } else {
        echo "<script>alert('Invalid email or password'); window.history.back();</script>";
    }
}
?>