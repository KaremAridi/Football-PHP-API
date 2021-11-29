<?php
//Check if email exists!!
include("connection.php");

if (isset($_POST["user_id"]) && ($_POST["user_id"] != "")) {
    $user_id = $_POST["user_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_POST["team_id"]) && ($_POST["team_id"] != "")) {
    $team_id = $_POST["team_id"];
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