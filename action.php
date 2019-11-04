<?php
session_start();

include "./functions/database.php";
include "./functions/functions.php";

$logged_in = isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true;


if ($_SERVER["REQUEST_METHOD"] == 'POST') {

    switch ($_POST['action']) {
        case 'signup':
            $user_data = verify_signup($_POST);
            if (!$user_data) {
                $message = "Sorry, an error has occured. Please try again later.";
                $page = "./components/error.php";
                print_notice_page('signup', $page, $message, null, $db);
                die();
            } else {
                $user_exists = $db->query("SELECT username from users WHERE `username`='$data[username]'");
                if ($db->num_rows($user_exists)) {
                    $message = "This username is taken.";
                    $page = "./components/error.php";
                    print_notice_page('signup', $page, $message, null, $db);
                }
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
                print_notice_page("login", $page, $message, "./components/login.php", $db);
            };
            break;
        case "add_rom":
            if (add_rom($_POST, $db)) {
                $message = "Rom added successfully";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "An error has occured";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "add_comb":
            if (add_comb($_POST, $db)) {
                $message = "Combination added successfully";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "An error has occured";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "modify_file":
            if (modify_file($_POST, $db)) {
                $message = "Modified successfully";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "An error has occured";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "update_logo";
            if (change_logo_image($_FILES['file'], $db)) {
                $message = "Logo updated";
                $page = "./components/success.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            } else {
                $message = "An error has occured";
                $page = "./components/error.php";
                print_notice_page("admin", $page, $message, './components/admin.php', $db, $logged_in);
            }
            break;
        case "modify_user":
            if (modify_user($_POST, $db)) {
                $message = "User Updated Successfully!";
                $page = "./components/success.php";
                print_notice_page("profile", $page, $message, null, $db, $logged_in);
            } else {
                $message = "An error has occured";
                $page = "./components/error.php";
                print_notice_page("profile", $page, $message, null, $db, $logged_in);
            }
            break;

        default:
            break;
    }


    // Case Deleting Rom
}
