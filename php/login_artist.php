<?php
session_start();
require_once '../config/db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = sanitize($_POST['email']);
    $password = $_POST['password'];

    // Check if artist exists
    $query = "SELECT ID, PasswordHash FROM artist WHERE Email = '$email'";
    $artist = getRow($query);

    if ($artist && verifyPassword($password, $artist['PasswordHash'])) {
        $_SESSION['artist_id'] = $artist['ID'];
        $_SESSION['artist_email'] = $email;
        $_SESSION['user_type'] = 'artist';
        header("Location: ../index.html");
        exit;
    } else {
        echo "<script>alert('Invalid email or password'); window.history.back();</script>";
    }
}
?>
