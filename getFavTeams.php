<?php

include("connection.php");

if (isset($_GET["user_id"]) && ($_GET["user_id"] != "")) {
    $user_id = $_GET["user_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

$query = "SELECT * FROM likes_teams JOIN teams ON likes_teams.team_id = teams.id AND user_id=?;";

$stmt = $connection->prepare($query);

$stmt->bind_param("i", $user_id);

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