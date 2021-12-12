<?php
include("connection.php");
$data = json_decode(file_get_contents("php://input"));

$user_id = $data->user_id;
$team_id = $data->team_id;

$mysql = $connection->prepare("INSERT INTO likes_teams(user_id,team_id) VALUES(?,?)");

$mysql->bind_param("ii", $user_id, $team_id);
$mysql->execute();

$response = [];
$response[]="Worked!";

$res= json_encode($response);
echo $res;

$mysql->close();
$connection->close();
//REDIRECT
?>