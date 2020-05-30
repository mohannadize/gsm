<?php

include "./functions/database.php";
include "./functions/functions.php";

$logged_in = check_login($db);

if (isset($_GET['a'])) {
    $action = $_GET['a'];
} else {
    $action = "roms";
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
    case "profile":
        if ($logged_in) {
            $page = "./components/user.php";
        } else {
            $message = 'الرجاء تسجيل الدخول اولاََ';
            $page = "./components/error.php";
            print_notice_page("login", $page, $message, "./components/login.php", $db);
            exit;
        }
        break;
    case "packages":
        if ($logged_in) {
            $page = "./components/packages.php";
        } else {
            $message = 'الرجاء تسجيل الدخول اولاََ';
            $page = "./components/error.php";
            print_notice_page("login", $page, $message, "./components/login.php", $db);
            exit;
        }
        break;
    case "admin":
        if ($logged_in['admin']) {
            $page = "./components/admin.php";
        } else {
            $action = '404';
            $page = "./components/404.php";
        }
        break;
    case "test":
        include "./test.php";
        exit;
    case "get":
        if ($logged_in) {
            $page = './components/download.php';
        } else {
            $message = 'الرجاء تسجيل الدخول او انشئ حساب اولاََ';
            $page = "./components/error.php";
            print_notice_page("login", $page, $message, "./components/login.php", $db);
            exit;
        }
        break;
    case "download":
        if ($logged_in) {
            include "download.php";
        } else {
            $message = 'الرجاء تسجيل الدخول او انشئ حساب اولاََ';
            $page = "./components/error.php";
            print_notice_page("login", $page, $message, "./components/login.php", $db);
            exit;
        }
        break;
        break;
    case "request":
        $page = "./components/request.php";
        break;
    case "privacy":
        $page = "./components/privacy.php";
        break;
    case "contact_us":
        $page = "./components/contact_us.php";
        break;
    default:
        $action = "404";
        $page = "./components/404.php";
        break;
}

print_web_page($action, $page, $logged_in, $db);
