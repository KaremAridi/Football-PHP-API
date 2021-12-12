<?php

include("connection.php");

if (isset($_GET["email"]) && ($_GET["email"] != "")) {
    $email = $_GET["email"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_GET["password"]) && ($_GET["password"] != "")) {
    $password = hash("sha256", $_GET["password"]);
} else {
    die("We took your IP address and the FBI is on his way");
}

$query = "SELECT * FROM logged_in JOIN users ON logged_in.user_id = logged_in.id AND user_id=1;";

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