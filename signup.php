<?php
//Check if email exists!!
include("connection.php");
$data = json_decode(file_get_contents("php://input"));

$first_name = $data->first_name;
$last_name = $data->last_name;
$email = $data->email;
$password = hash("sha256", $data->password);

$mysql = $connection->prepare("INSERT INTO users(first_name, last_name, email, password) VALUES(?,?,?,?)");

$mysql->bind_param("ssss", $first_name, $last_name, $email, $password);
$mysql->execute();

$response = [];
$response[]="Worked!";

$res= json_encode($response);
echo $res;
$mysql->close();
$connection->close();
//REDIRECT
?>