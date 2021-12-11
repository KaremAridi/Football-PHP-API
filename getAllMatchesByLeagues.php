<?php

include("connection.php");

if (isset($_GET["league_id"]) && ($_GET["league_id"] != "")) {
    $league_id = $_GET["league_id"];
} else {
    die("We took your IP address and the FBI is on his way");
}

// SELECT matches.id, matches.date, matches.score_1, matches.score_2, matches.ended, teams.name, a.name, matches.league_id
// FROM matches
// JOIN teams 
// ON matches.team_1 = teams.id 
// JOIN teams as a
// ON matches.team_2 = a.id AND matches.league_id=1;

$query = "SELECT matches.id, matches.date, matches.score_1, matches.score_2, matches.ended, teams.name AS `name1`, a.name AS `name2`, matches.league_id FROM matches JOIN teams ON matches.team_1 = teams.id JOIN teams as a ON matches.team_2 = a.id AND matches.league_id=?;";


$stmt = $connection->prepare($query);

$stmt->bind_param("i", $league_id);

$stmt->execute();

$result = $stmt->get_result();

$temp_array = [];

while ($row = $result->fetch_assoc()) {
    $temp_array[] = $row;
}

$json = json_encode($temp_array);
print $json;

$stmt->close();
$connection->close();
    //REDIRECT
