<?php

include("connection.php");

if (isset($_POST["league_id"]) && ($_POST["league_id"] != "")) {
    $league_id = $_POST["league_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

$query = "SELECT * FROM matches WHERE league_id=?";

$stmt = $connection->prepare($query);

$stmt->bind_param("i", $league_id);

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
