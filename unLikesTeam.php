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

$mysql = $connection->prepare("DELETE FROM likes_teams WHERE user_id = ? AND team_id = ?");

$mysql->bind_param("ii", $user_id, $team_id);
$mysql->execute();

$mysql->close();
$connection->close();
//REDIRECT
?>