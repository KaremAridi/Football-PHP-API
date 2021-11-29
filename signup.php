<?php
//Check if email exists!!
include("connection.php");

if (isset($_POST["first_name"]) && ($_POST["first_name"] != "")) {
    $first_name = $_POST["first_name"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_POST["last_name"]) && ($_POST["last_name"] != "")) {
    $last_name = $_POST["last_name"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_POST["email"]) && ($_POST["email"] != "")) {
    $email = $_POST["email"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_POST["password"]) && ($_POST["password"] != "") && ($_POST["password"] == $_POST["password_confirm"])) {
    $password = hash("sha256", $_POST["password"]);
} else {
    die("Passwords did not match");
}

$mysql = $connection->prepare("INSERT INTO users(first_name, last_name, email, password) VALUES(?,?,?,?)");

$mysql->bind_param("ssss", $first_name, $last_name, $email, $password);
$mysql->execute();

$mysql->close();
$connection->close();
//REDIRECT
?>