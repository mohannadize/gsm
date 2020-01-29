<?php
include "./functions/database.php";
include "./functions/functions.php";
header("content-type: application/json");

$_POST = json_decode(file_get_contents("php://input"), true);
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
        session_start();
        $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
        $admin_check = $db->fetch_array($admin_check);
        $admin_check = (int) $admin_check["admin"];
        if ($admin_check === 0) {
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
        session_start();
        $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
        $admin_check = $db->fetch_array($admin_check);
        $admin_check = (int) $admin_check["admin"];
        if ($admin_check === 0) {
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
        session_start();
        $admin_check = $db->query("SELECT admin from users WHERE username='$_SESSION[username]'");
        $admin_check = $db->fetch_array($admin_check);
        $admin_check = (int) $admin_check["admin"];
        if ($admin_check === 0) {
            $json = null;
            break;
        }
        $id = (int) $_POST['id'];
        $name = $_POST['name'];
        $desc = $_POST['description'];
        $cap = $_POST['cap'];
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
