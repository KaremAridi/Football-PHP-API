<?php
include("connection.php");
$data = json_decode(file_get_contents("php://input"));

$user_id = $data->user_id;
$league_id = $data->league_id;

$mysql = $connection->prepare("INSERT INTO likes_leagues(user_id,league_id) VALUES(?,?)");

$mysql->bind_param("ii", $user_id, $league_id);
$mysql->execute();

$response = [];
$response[]="Worked!";

$res= json_encode($response);
echo $res;

$mysql->close();
$connection->close();
//REDIRECT
?>