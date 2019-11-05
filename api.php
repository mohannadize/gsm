<?php
include "./functions/database.php";
include "./functions/functions.php";
header("content-type: application/json");

$_POST = json_decode(file_get_contents("php://input"), true);
if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["action"])) $action = $_POST['action'];
else {
    echo "null";
    exit;
};

switch ($action) {
    case 'details':
        $id = (int) $_POST['id'];
        $query = $db->query("SELECT * from files where id='$id'");
        $query = $db->fetch_array($query);
        $json = json_encode($query);
        break;
    case 'get':
        $type = (isset($_POST['type']) && $_POST['type'] == '1') ? 1 : 0; 
        $page = (isset($_POST['type']) && is_int($_POST['page'])) ? (int) $_POST['page'] : 1;
        $search = isset($_POST['search']) ? $_POST['search'] : null;
        $offset = 15 * ($page - 1);
        $query = "SELECT * FROM files where `type`='$type'";
        if ($search) $query .= " AND `search_text` like '%$search%'";
        $pages = $db->query($query);
        $pages = ceil($db->num_rows($pages) / 15);
        $query .= " ORDER BY id DESC limit 15 offset $offset";
        $query = $db->query($query);
        $array = [];
        $array['rows'] = [];
        $array['pages'] = $pages;

        while ($row = $db->fetch_array($query)) {
            $row['size'] = bytes_to_human($row['size']);
            array_push($array['rows'], $row);
        }

        $json = json_encode($array);
        break;
    case "test":
        $json = json_encode($_SESSION);
        break;
    default:
        $json = null;
        break;
}




echo $json ? $json : "null";
