<?php
include("connection.php");

$user_id = $data->user_id;
$team_id = $data->team_id;

$mysql = $connection->prepare("INSERT INTO likes_teams(user_id,team_id) VALUES(?,?)");

$mysql->bind_param("ii", $user_id, $team_id);
$mysql->execute();

$mysql->close();
$connection->close();
//REDIRECT
?>