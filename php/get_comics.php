<?php
header('Content-Type: application/json');
require_once '../config/db.php';

$query = "SELECT ID, Name, Synopsis, HardCopyLink FROM comic LIMIT 12";
$comics = getAll($query);

echo json_encode($comics);
?>