<?php

include "./functions/database.php";
include "./functions/functions.php";

if (isset($_GET['a'])) {
    $action = $_GET['a'];
} else {
    $action = "index";
}

switch ($action) {
    case 'index':
    case 'roms':
        $page = "./components/roms.php";
        break;
    case "login":
        $page = "./components/login.php";
        break;
    case "signup":
        $page = "./components/signup.php";
        break;
    case "user":
        $page = "./components/users.php";
        break;
    case "admin":
        $page = "./components/admin.php";
        break;
    case "test":
        // $page = "./components/error.php";
        include "./test.php";
        break;
    default:
        $action = "404";
        $page = "./components/404.php";
        break;
}

print_web_page($action,$page);
