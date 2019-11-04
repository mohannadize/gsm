<?php
include "./functions/database.php";
include "./functions/functions.php";
if ($_SERVER['REQUEST_METHOD'] == "GET") {
    $id = (int) $_GET['id'];

    $query = $db->query("SELECT * from files where id='$id'");
    $query = $db->fetch_array($query);

    if ($query) {
        header("content-type: application/json");
        echo json_encode($query);
    } else {
        echo "null";
    }
}