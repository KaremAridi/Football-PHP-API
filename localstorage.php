<?php
//Check if email exists!!
include("connection.php");
$data = json_decode(file_get_contents("php://input"));

$user_id = $data;

$mysql = $connection->prepare("INSERT INTO logged_in(user_id) VALUES(?)");

$mysql->bind_param("i", $user_id);
$mysql->execute();

$response = [];
$response[]="Worked!";

$res= json_encode($response);
echo $res;
$mysql->close();
$connection->close();
//REDIRECT
?>