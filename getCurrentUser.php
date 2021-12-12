<?php

include("connection.php");

$query = "SELECT * FROM logged_in JOIN users ON logged_in.user_id = users.id;";

$stmt = $connection->prepare($query);
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
?>