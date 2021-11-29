<?php

include("connection.php");

if (isset($_POST["email"]) && ($_POST["email"] != "")) {
    $email = $_POST["email"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_POST["password"]) && ($_POST["password"] != "")) {
    $password = hash("sha256", $_POST["password"]);
} else {
    die("We took your IP address and the FBI is on his way");
}

$query = "SELECT * FROM users WHERE email=? AND password=?";

$stmt = $connection->prepare($query);
$stmt->bind_param("ss",$email,$password);

$stmt->execute();

$result = $stmt->get_result();

$temp_array = [];

while ($row = $result->fetch_assoc()) {
    $temp_array[] = $row;
}

$json = json_encode($temp_array);
print $json;

$stmt->close();
$connection->close();
    //REDIRECT
?>