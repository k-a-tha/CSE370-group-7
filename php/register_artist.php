<?php
session_start();
require_once '../config/db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = sanitize($_POST['email']);
    $name = sanitize($_POST['name']);
    $gender = sanitize($_POST['gender']);
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // Validation
    if (empty($email) || empty($name) || empty($password) || empty($confirm_password)) {
        echo "<script>alert('All fields are required'); window.history.back();</script>";
        exit;
    }

    if ($password !== $confirm_password) {
        echo "<script>alert('Passwords do not match'); window.history.back();</script>";
        exit;
    }

    // Check if email already exists
    $check_query = "SELECT ID FROM artist WHERE Email = '$email'";
    $check_result = getRow($check_query);

    if ($check_result) {
        echo "<script>alert('Email already registered'); window.history.back();</script>";
        exit;
    }

    // Hash password
    $password_hash = hashPassword($password);

    // Insert artist
    $insert_query = "INSERT INTO artist (Email, Name, Gender, PasswordHash) 
                     VALUES ('$email', '$name', '$gender', '$password_hash')";

    if (executeQuery($insert_query)) {
        echo "<script>alert('Registration successful! Please login.'); window.location.href = 'artist_login.html';</script>";
    } else {
        echo "<script>alert('Registration failed. Try again.'); window.history.back();</script>";
    }
}
?>