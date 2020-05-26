<?php
include "./functions/database.php";
include "./functions/functions.php";
header("content-type: application/json");

$logged_in = check_login($db);

$_POST = json_decode(file_get_contents("php://input"), true);
$_POST = $db->escape_value($_POST);
if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["action"])) $action = $_POST['action'];
else {
    var_dump($_POST,file_get_contents("php://input"));
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
    case "user":
        if (!$logged_in['admin']) {
            $json = null;
            break;
        }
        $id = (int) $_POST['id'];
        $query = $db->query("SELECT id,balance from users where id='$id'");
        $query = $db->fetch_array($query);
        $query["balance"] = bytes_to_human($query["balance"]);
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
    case "users":
        if (!$logged_in['admin']) {
            $json = null;
            break;
        }
        $page = (isset($_POST['type']) && is_int($_POST['page'])) ? (int) $_POST['page'] : 1;
        $search = isset($_POST['search']) ? $_POST['search'] : null;
        $offset = 15 * ($page - 1);
        $query = "SELECT id,`name`,username,email,balance,daily_balance,`admin` FROM users";
        if ($search) $query .= " WHERE `username` like '%$search%'";
        $pages = $db->query($query);
        $pages = ceil($db->num_rows($pages) / 15);
        $query .= " ORDER BY id DESC limit 15 offset $offset";
        $query = $db->query($query);
        $array = [];
        $array['rows'] = [];
        $array['pages'] = $pages;

        while ($row = $db->fetch_array($query)) {
            $row['balance_string'] = bytes_to_human($row['balance']);
            array_push($array['rows'], $row);
        }

        $json = json_encode($array);
        break;
    case "edit_plan":
        if (!$logged_in['admin']) {
            $json = null;
            break;
        }
        $_POST = $db->escape_value($_POST);

        $id = (int) $_POST['id'];
        $name = htmlspecialchars($_POST['name']);
        $desc = htmlspecialchars($_POST['description']);
        $cap = ($_POST['cap'] == '-1') ? '-1' : $_POST['cap'] * 1024 * 1024;
        $color = $_POST['color'];
        $duration = $_POST['duration'];
        $price = $_POST['price'];


        $success = $db->query("UPDATE plans SET `name`='$name',`description`='$desc',`cap`='$cap',`color`='$color',`duration`='$duration',`price`='$price' WHERE id='$id'");
        
        $json = $success ? json_encode(['true']):null;
        break;
    default:
        $json = null;
        break;
}




echo $json ? $json : "null";
