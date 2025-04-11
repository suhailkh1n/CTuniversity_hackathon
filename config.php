<?php
date_default_timezone_set('Asia/Kolkata');

$hostname = "localhost";
$username = "root";
$password = "";
$database = "db_eval";

// Establish connection
$conn = mysqli_connect($hostname, $username, $password, $database);

// Check connection
if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
} 

// Get current hour as integer
$time = (int)date("H");

// Set the greeting and corresponding image
if ($time < 12) {
    $greet = "Good Morning";
    $img = "img/mng.jpg";
} elseif ($time < 17) {
    $greet = "Good Afternoon";
    $img = "img/aftn.jpg";
} else {
    $greet = "Good Evening";
    $img = "img/evng.jpg";
}
?>
