<?php
header('Access-Control-Allow-Headers: Content-Type');
header('Access-Control-Allow-Origin: *');
$server = "localhost";
$username = "root";
$password = "";
$dbname = "shoota";

$connection = new mysqli($server, $username, $password, $dbname);

if ($connection->connect_error) {
    die("failed");
}

?>