<?php
//Check if email exists!!
include("connection.php");

if (isset($_GET["user_id"]) && ($_GET["user_id"] != "")) {
    $user_id = $_GET["user_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

if (isset($_GET["league_id"]) && ($_GET["league_id"] != "")) {
    $league_id = $_GET["league_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

$mysql = $connection->prepare("DELETE FROM likes_leagues WHERE user_id = ? AND league_id = ?");

$mysql->bind_param("ii", $user_id, $league_id);
$mysql->execute();

$mysql->close();
$connection->close();
//REDIRECT
?>