<?php

include("connection.php");

if (isset($_GET["user_id"]) && ($_GET["user_id"] != "")) {
    $user_id = $_GET["user_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_GET["team_id"]) && ($_GET["team_id"] != "")) {
    $team_id = $_GET["team_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

$query = "INSERT INTO likes_teams(user_id,team_id) VALUES(?,?)";

$stmt = $connection->prepare($query);
$stmt->bind_param("ss",$user_id,$team_id);

$stmt->execute();

$result = $stmt->get_result();

$json = json_encode($result);

$stmt->close();
$connection->close();
    //REDIRECT
?>