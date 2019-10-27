<?php
session_start();

include "./functions/database.php";
include "./functions/functions.php";

if ($_SERVER["REQUEST_METHOD"] == 'POST') {

    // Case Sign up
    switch ($_POST['action']) {
        case 'signup':
            $user_data = verify_signup($_POST);
            if (!$user_data) {
                $message = "Sorry, an error has occured. Please try again later.";
                $page = "./components/error.php";
                print_notice_page('signup', $page, $message);
                die();
            } else {
                $db->add_user($user_data['name'], $user_data['username'], $user_data['password'], $user_data['email']);
                $message = "Signed up successfully!";
                $page = './components/success.php';
                print_notice_page('signup', $page, $message);
                die();
            };
            break;
            
        case "login":
            if (login_user($_POST, $db)) {
                header("location: index.php");
            } else {
                $message = "The username or password is incorrect";
                $page = "./components/error.php";
                print_notice_page('login', $page, $message, $section = "./components/login.php");
            }
            break;

        case "update_site":
            update_site_settings($_POST,$db);
            break;

        default:
            break;
    }


    // Case Changing user data

    // Case Uplaoding Rom

    // Case Modifing Rom

    // Case Deletin Rom
}
