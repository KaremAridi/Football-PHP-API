<?php

$server = "localhost";
$username = "root";
$password = "";
$dbname = "shoota";

$connection = new mysqli($server, $username, $password, $dbname);

if ($connection->connect_error) {
    die("failed");
}

?>