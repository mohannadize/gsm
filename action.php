<?php
session_start();

include "./functions/database.php";
include "./functions/functions.php";

$logged_in = isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true;


if ($_SERVER["REQUEST_METHOD"] == 'POST') {

    // Case Sign up
    switch ($_POST['action']) {
        case 'signup':
            $user_data = verify_signup($_POST);
            if (!$user_data) {
                $message = "Sorry, an error has occured. Please try again later.";
                $page = "./components/error.php";
                print_notice_page('signup', $page, $message, null, $db);
                die();
            } else {
                if ($db->add_user($user_data['name'], $user_data['username'], $user_data['password'], $user_data['email'])) {
                    $message = "Signed up successfully!";
                    $page = './components/success.php';
                    print_notice_page('signup', $page, $message, "./components/login.php", $db);
                } else {
                    $message = "Sorry, the server does not allow signing up now.";
                    $page = "./components/error.php";
                    print_notice_page('signup', $page, $message, null, $db);
                };
                die();
            };
            break;

        case "login":
            if (login_user($_POST, $db)) {
                header("location: index.php");
            } else {
                $message = "The username or password is incorrect";
                $page = "./components/error.php";
                print_notice_page('login', $page, $message, "./components/login.php", $db);
            }
            break;

        case "update_site":
            if (update_site_settings($_POST, $db, $logged_in)) {
                $message = "Settings Update Successfully!";
                $page = "./components/success.php";
                print_notice_page('admin', $page, $message, "./components/admin.php", $db, $logged_in);
            } else {
                $message = "Please log in";
                $page = "./components/error.php";
                print_notice_page("login",$page,$message,"./components/login.php",$db);
            };
            break;

        default:
            break;
    }


    // Case Changing user data

    // Case Uplaoding Rom

    // Case Modifing Rom

    // Case Deletin Rom
}
