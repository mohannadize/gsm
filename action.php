<?php
include "./functions/database.php";
include "./functions/functions.php";

if ($_SERVER["REQUEST_METHOD"] == 'POST') {
    
    // Case Sign up
    if ($_POST["action"] == "signup") {
        $user_data = verify_signup($_POST);
        if(!$user_data) {
            $message = "Sorry, an error has occured. Please try again later.";
            $page = "./components/error.php";
            print_notice_page('signup', $page, $message);
            die();
        } else {
            // $db->add_user($user_data['name'],$user_data['username'],$user_data['password'],$user_data['email']);
            $message = "Signed up successfully!";
            $page = './components/success.php';
            print_notice_page('signup', $page, $message);
            die();
        };
    };

    // Case Loggin in

    // Case Changing user data

    // Case Uplaoding Rom

    // Case Modifing Rom

    // Case Deletin Rom
}

var_dump(verify_signup($_GET));