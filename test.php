<?php

include("connection.php");
$team_id = $_GET["team_id"];
$query = "SELECT * FROM players WHERE team_id='$team_id'";

$stmt = $connection->prepare($query);

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
