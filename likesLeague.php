<?php
//Check if email exists!!
include("connection.php");

if (isset($_POST["user_id"]) && ($_POST["user_id"] != "")) {
    $user_id = $_POST["user_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_POST["league_id"]) && ($_POST["league_id"] != "")) {
    $league_id = $_POST["league_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

$mysql = $connection->prepare("INSERT INTO likes_leagues(user_id,league_id) VALUES(?,?)");

$mysql->bind_param("ii", $user_id, $league_id);
$mysql->execute();

$mysql->close();
$connection->close();
//REDIRECT
?>