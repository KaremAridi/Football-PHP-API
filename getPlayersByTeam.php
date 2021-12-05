<?php

include("connection.php");

if (isset($_GET["team_id"]) && ($_GET["team_id"] != "")) {
    $team_id = $_GET["team_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

$query = "SELECT * FROM players WHERE team_id=?";

$stmt = $connection->prepare($query);

$stmt->bind_param("i", $team_id);

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
